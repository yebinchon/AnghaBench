; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_kpc.c_set_counter_config.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_kpc.c_set_counter_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SREG_PMESR0 = common dso_local global i32 0, align 4
@saved_PMESR = common dso_local global i32** null, align 8
@SREG_PMESR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @set_counter_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_counter_config(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @cpu_number()
  store i32 %7, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %53 [
    i32 2, label %9
    i32 3, label %9
    i32 4, label %9
    i32 5, label %9
    i32 6, label %31
    i32 7, label %31
  ]

9:                                                ; preds = %2, %2, %2, %2
  %10 = load i32, i32* @SREG_PMESR0, align 4
  %11 = call i32 @SREG_READ(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @PMESR_EVT_CLEAR(i32 %12, i32 2)
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @PMESR_EVT_ENCODE(i32 %16, i32 %17, i32 2)
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @SREG_PMESR0, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @SREG_WRITE(i32 %21, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32**, i32*** @saved_PMESR, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %24, i32* %30, align 4
  br label %54

31:                                               ; preds = %2, %2
  %32 = load i32, i32* @SREG_PMESR1, align 4
  %33 = call i32 @SREG_READ(i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @PMESR_EVT_CLEAR(i32 %34, i32 6)
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @PMESR_EVT_ENCODE(i32 %38, i32 %39, i32 6)
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @SREG_PMESR1, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @SREG_WRITE(i32 %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32**, i32*** @saved_PMESR, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 %46, i32* %52, align 4
  br label %54

53:                                               ; preds = %2
  br label %54

54:                                               ; preds = %53, %31, %9
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @set_modes(i32 %55, i32 %56)
  ret void
}

declare dso_local i32 @cpu_number(...) #1

declare dso_local i32 @SREG_READ(i32) #1

declare dso_local i32 @PMESR_EVT_CLEAR(i32, i32) #1

declare dso_local i32 @PMESR_EVT_ENCODE(i32, i32, i32) #1

declare dso_local i32 @SREG_WRITE(i32, i32) #1

declare dso_local i32 @set_modes(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
