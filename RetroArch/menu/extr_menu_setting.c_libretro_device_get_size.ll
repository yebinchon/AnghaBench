; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_libretro_device_get_size.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_libretro_device_get_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_controller_info = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.retro_controller_info* }

@RETRO_DEVICE_NONE = common dso_local global i32 0, align 4
@RETRO_DEVICE_JOYPAD = common dso_local global i32 0, align 4
@RETRO_DEVICE_ANALOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32)* @libretro_device_get_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libretro_device_get_size(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.retro_controller_info*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store %struct.retro_controller_info* null, %struct.retro_controller_info** %8, align 8
  %12 = call %struct.TYPE_7__* (...) @runloop_get_system_info()
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %9, align 8
  %13 = load i32, i32* @RETRO_DEVICE_NONE, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %7, align 4
  %17 = zext i32 %15 to i64
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  store i32 %13, i32* %18, align 4
  %19 = load i32, i32* @RETRO_DEVICE_JOYPAD, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %7, align 4
  %23 = zext i32 %21 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32 %19, i32* %24, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  br i1 %26, label %27, label %56

27:                                               ; preds = %3
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @RETRO_DEVICE_ANALOG, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %7, align 4
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  store i32 %34, i32* %39, align 4
  br label %40

40:                                               ; preds = %33, %27
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ult i32 %41, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load %struct.retro_controller_info*, %struct.retro_controller_info** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.retro_controller_info, %struct.retro_controller_info* %51, i64 %53
  store %struct.retro_controller_info* %54, %struct.retro_controller_info** %8, align 8
  br label %55

55:                                               ; preds = %47, %40
  br label %56

56:                                               ; preds = %55, %3
  %57 = load %struct.retro_controller_info*, %struct.retro_controller_info** %8, align 8
  %58 = icmp ne %struct.retro_controller_info* %57, null
  br i1 %58, label %59, label %99

59:                                               ; preds = %56
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %95, %59
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.retro_controller_info*, %struct.retro_controller_info** %8, align 8
  %63 = getelementptr inbounds %struct.retro_controller_info, %struct.retro_controller_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ult i32 %61, %64
  br i1 %65, label %66, label %98

66:                                               ; preds = %60
  %67 = load %struct.retro_controller_info*, %struct.retro_controller_info** %8, align 8
  %68 = getelementptr inbounds %struct.retro_controller_info, %struct.retro_controller_info* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %7, align 4
  %76 = zext i32 %75 to i64
  %77 = load i64, i64* %5, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %66
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @RETRO_DEVICE_NONE, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %79
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @RETRO_DEVICE_JOYPAD, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load i32, i32* %11, align 4
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* %7, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %7, align 4
  %92 = zext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  store i32 %88, i32* %93, align 4
  br label %94

94:                                               ; preds = %87, %83, %79, %66
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %10, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %60

98:                                               ; preds = %60
  br label %99

99:                                               ; preds = %98, %56
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local %struct.TYPE_7__* @runloop_get_system_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
