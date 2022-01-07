; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_gx_joypad.c_check_port0_active.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_gx_joypad.c_check_port0_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@WPAD_EXP_GAMECUBE = common dso_local global i32 0, align 4
@pad_type = common dso_local global i32* null, align 8
@gx_joypad = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@WPAD_EXP_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @check_port0_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_port0_active(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call %struct.TYPE_6__* (...) @config_get_ptr()
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load i32, i32* @WPAD_EXP_GAMECUBE, align 4
  %19 = load i32*, i32** @pad_type, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 0, i32* %25, align 4
  %26 = call i32 @gx_joypad_name(i32 0)
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gx_joypad, i32 0, i32 0), align 4
  %28 = call i32 @input_autoconfigure_connect(i32 %26, i32* null, i32 %27, i32 0, i32 0, i32 0)
  %29 = call i32 @gx_joypad_name(i32 0)
  %30 = call i32 @input_config_set_device_name(i32 0, i32 %29)
  br label %31

31:                                               ; preds = %17, %14, %1
  ret void
}

declare dso_local %struct.TYPE_6__* @config_get_ptr(...) #1

declare dso_local i32 @input_autoconfigure_connect(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @gx_joypad_name(i32) #1

declare dso_local i32 @input_config_set_device_name(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
