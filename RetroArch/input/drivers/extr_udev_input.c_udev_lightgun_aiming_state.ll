; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_udev_input.c_udev_lightgun_aiming_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_udev_input.c_udev_lightgun_aiming_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.video_viewport = type { i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32)* @udev_lightgun_aiming_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udev_lightgun_aiming_state(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.video_viewport, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 32700, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32* @udev_get_mouse(%struct.TYPE_4__* %16, i32 %17)
  store i32* %18, i32** %15, align 8
  %19 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %9, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %9, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %9, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %9, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %9, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %9, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load i32*, i32** %15, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %57

28:                                               ; preds = %3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @video_driver_translate_coord_viewport_wrap(%struct.video_viewport* %9, i32 %31, i32 %34, i32* %11, i32* %12, i32* %13, i32* %14)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %57

38:                                               ; preds = %28
  store i32 1, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  switch i32 %39, label %55 [
    i32 129, label %40
    i32 128, label %45
    i32 130, label %50
  ]

40:                                               ; preds = %38
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 0, i32 0
  store i32 %44, i32* %4, align 4
  br label %57

45:                                               ; preds = %38
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 0, i32 0
  store i32 %49, i32* %4, align 4
  br label %57

50:                                               ; preds = %38
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %4, align 4
  br label %57

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %50, %45, %40, %37, %27
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32* @udev_get_mouse(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @video_driver_translate_coord_viewport_wrap(%struct.video_viewport*, i32, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
