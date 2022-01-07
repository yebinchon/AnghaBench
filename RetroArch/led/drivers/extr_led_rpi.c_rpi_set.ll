; ModuleID = '/home/carl/AnghaBench/RetroArch/led/drivers/extr_led_rpi.c_rpi_set.c'
source_filename = "/home/carl/AnghaBench/RetroArch/led/drivers/extr_led_rpi.c_rpi_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i64* }

@MAX_LEDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"[LED]: invalid led %d\0A\00", align 1
@cur = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"[LED]: rpi setup led %d gpio %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"[LED]: failed to setup led %d gpio %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"[LED]: rpi LED driver set led %d gpio %d = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @rpi_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpi_set(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @MAX_LEDS, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8, %2
  %13 = load i32, i32* %3, align 4
  %14 = call i32 (i8*, i32, ...) @RARCH_WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %78

15:                                               ; preds = %8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %78

26:                                               ; preds = %15
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %26
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @setup_gpio(i32 %40)
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  store i64 %41, i64* %47, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp sle i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %35
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 (i8*, i32, ...) @RARCH_WARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %35
  br label %61

61:                                               ; preds = %60, %26
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %61
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @set_gpio(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %12, %25, %70, %61
  ret void
}

declare dso_local i32 @RARCH_WARN(i8*, i32, ...) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, i32, i32) #1

declare dso_local i64 @setup_gpio(i32) #1

declare dso_local i32 @set_gpio(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
