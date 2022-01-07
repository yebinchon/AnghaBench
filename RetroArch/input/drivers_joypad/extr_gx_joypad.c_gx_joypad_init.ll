; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_gx_joypad.c_gx_joypad_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_gx_joypad.c_gx_joypad_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reset_cb = common dso_local global i32 0, align 4
@DEFAULT_MAX_PADS = common dso_local global i32 0, align 4
@WPAD_EXP_NOCONTROLLER = common dso_local global i32 0, align 4
@pad_type = common dso_local global i32* null, align 8
@WPAD_CHAN_ALL = common dso_local global i32 0, align 4
@WPAD_FMT_BTNS_ACC_IR = common dso_local global i32 0, align 4
@power_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gx_joypad_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gx_joypad_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @reset_cb, align 4
  %5 = call i32 @SYS_SetResetCallback(i32 %4)
  %6 = load i8*, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %17, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @DEFAULT_MAX_PADS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = load i32, i32* @WPAD_EXP_NOCONTROLLER, align 4
  %13 = load i32*, i32** @pad_type, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32 %12, i32* %16, align 4
  br label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %7

20:                                               ; preds = %7
  %21 = call i32 (...) @PAD_Init()
  %22 = call i32 (...) @gx_joypad_poll()
  ret i32 1
}

declare dso_local i32 @SYS_SetResetCallback(i32) #1

declare dso_local i32 @PAD_Init(...) #1

declare dso_local i32 @gx_joypad_poll(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
