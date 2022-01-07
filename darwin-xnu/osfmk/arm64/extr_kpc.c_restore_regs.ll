; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_kpc.c_restore_regs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_kpc.c_restore_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SREG_PMESR0 = common dso_local global i32 0, align 4
@saved_PMESR = common dso_local global i32** null, align 8
@SREG_PMESR1 = common dso_local global i32 0, align 4
@saved_RAWPMU = common dso_local global i32* null, align 8
@KPC_ARM64_PMC_COUNT = common dso_local global i32 0, align 4
@saved_counter = common dso_local global i32** null, align 8
@SREG_PMCR1 = common dso_local global i32 0, align 4
@saved_PMCR = common dso_local global i32** null, align 8
@SREG_PMCR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @restore_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_regs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @cpu_number()
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @SREG_PMESR0, align 4
  %5 = load i32**, i32*** @saved_PMESR, align 8
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32*, i32** %5, i64 %7
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @SREG_WRITE(i32 %4, i32 %11)
  %13 = load i32, i32* @SREG_PMESR1, align 4
  %14 = load i32**, i32*** @saved_PMESR, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @SREG_WRITE(i32 %13, i32 %20)
  %22 = load i32*, i32** @saved_RAWPMU, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @kpc_set_rawpmu_config(i32 %26)
  store i32 2, i32* %2, align 4
  br label %28

28:                                               ; preds = %44, %0
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @KPC_ARM64_PMC_COUNT, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load i32, i32* %2, align 4
  %34 = load i32**, i32*** @saved_counter, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @write_counter(i32 %33, i32 %42)
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %28

47:                                               ; preds = %28
  %48 = load i32, i32* @SREG_PMCR1, align 4
  %49 = load i32**, i32*** @saved_PMCR, align 8
  %50 = load i32, i32* %1, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, 197379
  %57 = call i32 @SREG_WRITE(i32 %48, i32 %56)
  %58 = load i32, i32* @SREG_PMCR0, align 4
  %59 = load i32**, i32*** @saved_PMCR, align 8
  %60 = load i32, i32* %1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, 3
  %67 = call i32 @SREG_WRITE(i32 %58, i32 %66)
  ret void
}

declare dso_local i32 @cpu_number(...) #1

declare dso_local i32 @SREG_WRITE(i32, i32) #1

declare dso_local i32 @kpc_set_rawpmu_config(i32) #1

declare dso_local i32 @write_counter(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
