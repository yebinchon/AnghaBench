; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_rwebinput_input.c_rwebinput_keyboard_cb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_rwebinput_input.c_rwebinput_keyboard_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@EMSCRIPTEN_EVENT_KEYPRESS = common dso_local global i32 0, align 4
@EM_TRUE = common dso_local global i32 0, align 4
@g_rwebinput_keyboard = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*)* @rwebinput_keyboard_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rwebinput_keyboard_cb(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @EMSCRIPTEN_EVENT_KEYPRESS, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @EM_TRUE, align 4
  store i32 %13, i32* %4, align 4
  br label %71

14:                                               ; preds = %3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_rwebinput_keyboard, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_rwebinput_keyboard, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp uge i64 %17, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %14
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_rwebinput_keyboard, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = shl i64 %25, 1
  %27 = trunc i64 %26 to i32
  %28 = call i64 @MAX(i32 1, i32 %27)
  store i64 %28, i64* %8, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_rwebinput_keyboard, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = mul i64 %32, 8
  %34 = call %struct.TYPE_4__* @realloc(%struct.TYPE_4__* %31, i64 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_rwebinput_keyboard, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_rwebinput_keyboard, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = icmp ne %struct.TYPE_4__* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @retro_assert(i32 %41)
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_rwebinput_keyboard, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %22, %14
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_rwebinput_keyboard, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_rwebinput_keyboard, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %47, i32* %55, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_rwebinput_keyboard, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_rwebinput_keyboard, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @memcpy(i32* %63, i32* %64, i32 4)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_rwebinput_keyboard, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %67, align 8
  %70 = load i32, i32* @EM_TRUE, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %46, %12
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local %struct.TYPE_4__* @realloc(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @retro_assert(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
