; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_wayland_input.c_input_wl_pointer_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_wayland_input.c_input_wl_pointer_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.video_viewport = type { i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i32)* @input_wl_pointer_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_wl_pointer_state(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @video_driver_translate_coord_viewport_wrap(%struct.video_viewport* %10, i32 %25, i32 %29, i32* %12, i32* %13, i32* %14, i32* %15)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %63

33:                                               ; preds = %4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %15, align 4
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %12, align 4
  %41 = icmp sge i32 %40, -32767
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %13, align 4
  %44 = icmp sge i32 %43, -32767
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i1 [ false, %39 ], [ %44, %42 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %63

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  switch i32 %52, label %62 [
    i32 129, label %53
    i32 128, label %55
    i32 130, label %57
  ]

53:                                               ; preds = %51
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %5, align 4
  br label %63

55:                                               ; preds = %51
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %5, align 4
  br label %63

57:                                               ; preds = %51
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %5, align 4
  br label %63

62:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %57, %55, %53, %50, %32
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @video_driver_translate_coord_viewport_wrap(%struct.video_viewport*, i32, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
