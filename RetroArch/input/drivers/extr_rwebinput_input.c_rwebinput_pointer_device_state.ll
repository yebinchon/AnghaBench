; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_rwebinput_input.c_rwebinput_pointer_device_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_rwebinput_input.c_rwebinput_pointer_device_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.video_viewport = type { i64, i64, i64, i64, i64, i64 }

@RWEBINPUT_MOUSE_BTNL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32)* @rwebinput_pointer_device_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rwebinput_pointer_device_state(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.video_viewport, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %8, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %8, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %8, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %8, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %8, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %8, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @video_driver_translate_coord_viewport_wrap(%struct.video_viewport* %8, i32 %22, i32 %25, i32* %10, i32* %11, i32* %12, i32* %13)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %65

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %10, align 4
  %37 = icmp sge i32 %36, -32767
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %11, align 4
  %40 = icmp sge i32 %39, -32767
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i1 [ false, %35 ], [ %40, %38 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %65

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  switch i32 %48, label %64 [
    i32 129, label %49
    i32 128, label %51
    i32 130, label %53
  ]

49:                                               ; preds = %47
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %4, align 4
  br label %65

51:                                               ; preds = %47
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %4, align 4
  br label %65

53:                                               ; preds = %47
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @RWEBINPUT_MOUSE_BTNL, align 4
  %58 = shl i32 1, %57
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %4, align 4
  br label %65

64:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %53, %51, %49, %46, %28
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @video_driver_translate_coord_viewport_wrap(%struct.video_viewport*, i32, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
