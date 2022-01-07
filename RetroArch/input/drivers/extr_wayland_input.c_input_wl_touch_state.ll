; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_wayland_input.c_input_wl_touch_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_wayland_input.c_input_wl_touch_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.video_viewport = type { i64, i64, i64, i64, i64, i64 }

@MAX_TOUCHES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i32)* @input_wl_touch_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_wl_touch_state(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.video_viewport, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %10, i32 0, i32 5
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %10, i32 0, i32 4
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %10, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %10, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %10, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %10, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @MAX_TOUCHES, align 4
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %80

26:                                               ; preds = %4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @video_driver_translate_coord_viewport_wrap(%struct.video_viewport* %10, i32 %34, i32 %42, i32* %12, i32* %13, i32* %14, i32* %15)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %80

46:                                               ; preds = %26
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %12, align 4
  %54 = icmp sge i32 %53, -32767
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %13, align 4
  %57 = icmp sge i32 %56, -32767
  br label %58

58:                                               ; preds = %55, %52
  %59 = phi i1 [ false, %52 ], [ %57, %55 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %80

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  switch i32 %65, label %79 [
    i32 129, label %66
    i32 128, label %68
    i32 130, label %70
  ]

66:                                               ; preds = %64
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %5, align 4
  br label %80

68:                                               ; preds = %64
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %5, align 4
  br label %80

70:                                               ; preds = %64
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %5, align 4
  br label %80

79:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %70, %68, %66, %63, %45, %25
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @video_driver_translate_coord_viewport_wrap(%struct.video_viewport*, i32, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
