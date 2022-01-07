; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_kpc.c_save_regs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_kpc.c_save_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@SREG_PMCR0 = common dso_local global i32 0, align 4
@saved_PMCR = common dso_local global i32** null, align 8
@SREG_PMESR0 = common dso_local global i32 0, align 4
@saved_PMESR = common dso_local global i32** null, align 8
@SREG_PMESR1 = common dso_local global i32 0, align 4
@saved_RAWPMU = common dso_local global i32* null, align 8
@KPC_ARM64_PMC_COUNT = common dso_local global i32 0, align 4
@saved_counter = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @save_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_regs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @cpu_number()
  store i32 %3, i32* %1, align 4
  call void asm sideeffect "dmb ish", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %4 = call i64 (...) @ml_get_interrupts_enabled()
  %5 = load i64, i64* @FALSE, align 8
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load i32, i32* @SREG_PMCR0, align 4
  %10 = call i32 @SREG_READ(i32 %9)
  %11 = or i32 %10, 3
  %12 = load i32**, i32*** @saved_PMCR, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32*, i32** %12, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %11, i32* %17, align 4
  %18 = load i32, i32* @SREG_PMESR0, align 4
  %19 = call i32 @SREG_READ(i32 %18)
  %20 = load i32**, i32*** @saved_PMESR, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %19, i32* %25, align 4
  %26 = load i32, i32* @SREG_PMESR1, align 4
  %27 = call i32 @SREG_READ(i32 %26)
  %28 = load i32**, i32*** @saved_PMESR, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %27, i32* %33, align 4
  %34 = load i32*, i32** @saved_RAWPMU, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @kpc_get_rawpmu_config(i32 %38)
  store i32 2, i32* %2, align 4
  br label %40

40:                                               ; preds = %55, %0
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @KPC_ARM64_PMC_COUNT, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @read_counter(i32 %45)
  %47 = load i32**, i32*** @saved_counter, align 8
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %46, i32* %54, align 4
  br label %55

55:                                               ; preds = %44
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %2, align 4
  br label %40

58:                                               ; preds = %40
  ret void
}

declare dso_local i32 @cpu_number(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ml_get_interrupts_enabled(...) #1

declare dso_local i32 @SREG_READ(i32) #1

declare dso_local i32 @kpc_get_rawpmu_config(i32) #1

declare dso_local i32 @read_counter(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 592}
