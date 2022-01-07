; ModuleID = '/home/carl/AnghaBench/RetroArch/led/drivers/extr_led_overlay.c_overlay_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/led/drivers/extr_led_overlay.c_overlay_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64*, i64* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64* }

@.str = private unnamed_addr constant [32 x i8] c"[LED]: overlay LED driver init\0A\00", align 1
@MAX_LEDS = common dso_local global i32 0, align 4
@cur = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"[LED]: overlay map[%d]=%d\0A\00", align 1
@OVERLAY_VISIBILITY_HIDDEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @overlay_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @overlay_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = call %struct.TYPE_6__* (...) @config_get_ptr()
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %2, align 8
  %4 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %58, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @MAX_LEDS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %61

9:                                                ; preds = %5
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cur, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i64*, i64** %11, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  store i64 0, i64* %15, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cur, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  store i64 %23, i64* %29, align 8
  %30 = load i32, i32* %1, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cur, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %30, i64 %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cur, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %9
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cur, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %1, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @OVERLAY_VISIBILITY_HIDDEN, align 4
  %56 = call i32 @input_overlay_set_visibility(i64 %54, i32 %55)
  br label %57

57:                                               ; preds = %47, %9
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %1, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %1, align 4
  br label %5

61:                                               ; preds = %5
  ret void
}

declare dso_local %struct.TYPE_6__* @config_get_ptr(...) #1

declare dso_local i32 @RARCH_LOG(i8*, ...) #1

declare dso_local i32 @input_overlay_set_visibility(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
