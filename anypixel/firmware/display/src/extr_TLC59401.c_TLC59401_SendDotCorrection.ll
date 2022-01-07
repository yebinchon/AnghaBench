; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/src/extr_TLC59401.c_TLC59401_SendDotCorrection.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/src/extr_TLC59401.c_TLC59401_SendDotCorrection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@TLC59401_SPI = common dso_local global i32 0, align 4
@needLatch0 = common dso_local global i64 0, align 8
@needLatch1 = common dso_local global i64 0, align 8
@enableBlank = common dso_local global i32 0, align 4
@pins_tlc59401 = common dso_local global %struct.TYPE_2__* null, align 8
@TLC59401_PIN_MODE = common dso_local global i64 0, align 8
@dotCorrections = common dso_local global i32 0, align 4
@TLC59401_CHANNELS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TLC59401_SendDotCorrection() #0 {
  br label %1

1:                                                ; preds = %13, %0
  %2 = load i32, i32* @TLC59401_SPI, align 4
  %3 = call i32 @isIdle(i32 %2)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load i64, i64* @needLatch0, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = load i64, i64* @needLatch1, align 8
  %10 = icmp ne i64 %9, 0
  br label %11

11:                                               ; preds = %8, %5, %1
  %12 = phi i1 [ true, %5 ], [ true, %1 ], [ %10, %8 ]
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  br label %1

14:                                               ; preds = %11
  store i32 0, i32* @enableBlank, align 4
  %15 = call i32 @Delay(i32 4)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pins_tlc59401, align 8
  %17 = load i64, i64* @TLC59401_PIN_MODE, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pins_tlc59401, align 8
  %22 = load i64, i64* @TLC59401_PIN_MODE, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @GPIO_SetBits(i32 %20, i32 %25)
  %27 = call i32 @Delay(i32 2)
  %28 = load i32, i32* @dotCorrections, align 4
  %29 = load i32, i32* @TLC59401_CHANNELS, align 4
  %30 = mul nsw i32 %29, 3
  %31 = sdiv i32 %30, 4
  %32 = call i32 @TM_SPI_WriteMulti(i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %41, %14
  %34 = load i64, i64* @needLatch0, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* @needLatch1, align 8
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i1 [ true, %33 ], [ %38, %36 ]
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  br label %33

42:                                               ; preds = %39
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pins_tlc59401, align 8
  %44 = load i64, i64* @TLC59401_PIN_MODE, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pins_tlc59401, align 8
  %49 = load i64, i64* @TLC59401_PIN_MODE, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @GPIO_ResetBits(i32 %47, i32 %52)
  store i32 1, i32* @enableBlank, align 4
  ret void
}

declare dso_local i32 @isIdle(i32) #1

declare dso_local i32 @Delay(i32) #1

declare dso_local i32 @GPIO_SetBits(i32, i32) #1

declare dso_local i32 @TM_SPI_WriteMulti(i32, i32) #1

declare dso_local i32 @GPIO_ResetBits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
