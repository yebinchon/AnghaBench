; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/src/extr_TLC59401.c_isIdle.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/src/extr_TLC59401.c_isIdle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@TLC59401_SPI = common dso_local global %struct.TYPE_2__* null, align 8
@SPI_SR_BSY = common dso_local global i32 0, align 4
@SPI_SR_TXE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @isIdle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isIdle() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TLC59401_SPI, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @SPI_SR_BSY, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %18

9:                                                ; preds = %0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TLC59401_SPI, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SPI_SR_TXE, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %18

17:                                               ; preds = %9
  store i32 1, i32* %1, align 4
  br label %18

18:                                               ; preds = %17, %16, %8
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
