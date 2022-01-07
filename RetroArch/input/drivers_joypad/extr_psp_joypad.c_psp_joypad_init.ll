; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_psp_joypad.c_psp_joypad_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_psp_joypad.c_psp_joypad_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@DEFAULT_MAX_PADS = common dso_local global i32 0, align 4
@psp_joypad = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SCE_KERNEL_MODEL_VITATV = common dso_local global i64 0, align 8
@SCE_TOUCH_PORT_BACK = common dso_local global i32 0, align 4
@SCE_TOUCH_PORT_FRONT = common dso_local global i32 0, align 4
@SCE_TOUCH_SAMPLING_STATE_START = common dso_local global i32 0, align 4
@curr_ctrl_info = common dso_local global i32 0, align 4
@old_ctrl_info = common dso_local global i32 0, align 4
@psp2_model = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @psp_joypad_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_joypad_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @DEFAULT_MAX_PADS, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i8*, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %17, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @psp_joypad_name(i32 %12)
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @psp_joypad, i32 0, i32 0), align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @input_autoconfigure_connect(i32 %13, i32* null, i32 %14, i32 %15, i32 0, i32 0)
  br label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %7

20:                                               ; preds = %7
  ret i32 1
}

declare dso_local i32 @input_autoconfigure_connect(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @psp_joypad_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
