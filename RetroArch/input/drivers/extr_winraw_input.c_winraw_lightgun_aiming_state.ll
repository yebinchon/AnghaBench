; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_winraw_input.c_winraw_lightgun_aiming_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_winraw_input.c_winraw_lightgun_aiming_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.video_viewport = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@MAX_USERS = common dso_local global i32 0, align 4
@g_mouse_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32)* @winraw_lightgun_aiming_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @winraw_lightgun_aiming_state(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.video_viewport, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 32700, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %18 = call %struct.TYPE_10__* (...) @config_get_ptr()
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MAX_USERS, align 4
  %21 = icmp uge i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %89

23:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %47, %23
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @g_mouse_cnt, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %29, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %28
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 %44
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %13, align 8
  br label %50

46:                                               ; preds = %28
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %11, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %24

50:                                               ; preds = %39, %24
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %52 = icmp ne %struct.TYPE_8__* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %89

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %9, i32 0, i32 5
  store i64 0, i64* %55, align 8
  %56 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %9, i32 0, i32 4
  store i64 0, i64* %56, align 8
  %57 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %9, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %9, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %9, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %9, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @video_driver_translate_coord_viewport_wrap(%struct.video_viewport* %9, i32 %63, i32 %66, i32* %14, i32* %15, i32* %16, i32* %17)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %89

70:                                               ; preds = %54
  store i32 1, i32* %10, align 4
  %71 = load i32, i32* %7, align 4
  switch i32 %71, label %87 [
    i32 129, label %72
    i32 128, label %77
    i32 130, label %82
  ]

72:                                               ; preds = %70
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 0, i32 0
  store i32 %76, i32* %4, align 4
  br label %89

77:                                               ; preds = %70
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 0, i32 0
  store i32 %81, i32* %4, align 4
  br label %89

82:                                               ; preds = %70
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %4, align 4
  br label %89

87:                                               ; preds = %70
  br label %88

88:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %82, %77, %72, %69, %53, %22
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.TYPE_10__* @config_get_ptr(...) #1

declare dso_local i32 @video_driver_translate_coord_viewport_wrap(%struct.video_viewport*, i32, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
