; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_dinput.c_dinput_lightgun_aiming_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_dinput.c_dinput_lightgun_aiming_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dinput_input = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pointer_status* }
%struct.pointer_status = type { i32, i32, %struct.pointer_status* }
%struct.video_viewport = type { i64, i64, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dinput_input*, i32, i32)* @dinput_lightgun_aiming_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dinput_lightgun_aiming_state(%struct.dinput_input* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dinput_input*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.video_viewport, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.pointer_status*, align 8
  store %struct.dinput_input* %0, %struct.dinput_input** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 32700, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %19 = load %struct.dinput_input*, %struct.dinput_input** %5, align 8
  %20 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.pointer_status*, %struct.pointer_status** %21, align 8
  store %struct.pointer_status* %22, %struct.pointer_status** %18, align 8
  %23 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %9, i32 0, i32 5
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %9, i32 0, i32 4
  store i32 0, i32* %24, align 8
  %25 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %9, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %9, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %9, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %9, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %38, %3
  %30 = load %struct.pointer_status*, %struct.pointer_status** %18, align 8
  %31 = icmp ne %struct.pointer_status* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ult i32 %33, %34
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i1 [ false, %29 ], [ %35, %32 ]
  br i1 %37, label %38, label %44

38:                                               ; preds = %36
  %39 = load i32, i32* %17, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %17, align 4
  %41 = load %struct.pointer_status*, %struct.pointer_status** %18, align 8
  %42 = getelementptr inbounds %struct.pointer_status, %struct.pointer_status* %41, i32 0, i32 2
  %43 = load %struct.pointer_status*, %struct.pointer_status** %42, align 8
  store %struct.pointer_status* %43, %struct.pointer_status** %18, align 8
  br label %29

44:                                               ; preds = %36
  %45 = load %struct.pointer_status*, %struct.pointer_status** %18, align 8
  %46 = icmp ne %struct.pointer_status* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = icmp ugt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %92

51:                                               ; preds = %47, %44
  %52 = load %struct.dinput_input*, %struct.dinput_input** %5, align 8
  %53 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %11, align 4
  %55 = load %struct.dinput_input*, %struct.dinput_input** %5, align 8
  %56 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %12, align 4
  %58 = load %struct.pointer_status*, %struct.pointer_status** %18, align 8
  %59 = icmp ne %struct.pointer_status* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %51
  %61 = load %struct.pointer_status*, %struct.pointer_status** %18, align 8
  %62 = getelementptr inbounds %struct.pointer_status, %struct.pointer_status* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %11, align 4
  %64 = load %struct.pointer_status*, %struct.pointer_status** %18, align 8
  %65 = getelementptr inbounds %struct.pointer_status, %struct.pointer_status* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %60, %51
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @video_driver_translate_coord_viewport_wrap(%struct.video_viewport* %9, i32 %68, i32 %69, i32* %13, i32* %14, i32* %15, i32* %16)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %92

73:                                               ; preds = %67
  store i32 1, i32* %10, align 4
  %74 = load i32, i32* %7, align 4
  switch i32 %74, label %90 [
    i32 129, label %75
    i32 128, label %80
    i32 130, label %85
  ]

75:                                               ; preds = %73
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 0, i32 0
  store i32 %79, i32* %4, align 4
  br label %92

80:                                               ; preds = %73
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 0, i32 0
  store i32 %84, i32* %4, align 4
  br label %92

85:                                               ; preds = %73
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %4, align 4
  br label %92

90:                                               ; preds = %73
  br label %91

91:                                               ; preds = %90
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %85, %80, %75, %72, %50
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @video_driver_translate_coord_viewport_wrap(%struct.video_viewport*, i32, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
