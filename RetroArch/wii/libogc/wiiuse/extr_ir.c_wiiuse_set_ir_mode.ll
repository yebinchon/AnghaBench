; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_ir.c_wiiuse_set_ir_mode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_ir.c_wiiuse_set_ir_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { i32 }

@WIIMOTE_STATE_IR = common dso_local global i32 0, align 4
@WIIMOTE_STATE_EXP = common dso_local global i32 0, align 4
@WM_IR_TYPE_BASIC = common dso_local global i32 0, align 4
@WM_IR_TYPE_EXTENDED = common dso_local global i32 0, align 4
@WM_REG_IR_MODENUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiiuse_set_ir_mode(%struct.wiimote_t* %0) #0 {
  %2 = alloca %struct.wiimote_t*, align 8
  %3 = alloca i32, align 4
  store %struct.wiimote_t* %0, %struct.wiimote_t** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %5 = icmp ne %struct.wiimote_t* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %26

7:                                                ; preds = %1
  %8 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %9 = load i32, i32* @WIIMOTE_STATE_IR, align 4
  %10 = call i64 @WIIMOTE_IS_SET(%struct.wiimote_t* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %26

13:                                               ; preds = %7
  %14 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %15 = load i32, i32* @WIIMOTE_STATE_EXP, align 4
  %16 = call i64 @WIIMOTE_IS_SET(%struct.wiimote_t* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @WM_IR_TYPE_BASIC, align 4
  store i32 %19, i32* %3, align 4
  br label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @WM_IR_TYPE_EXTENDED, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %24 = load i32, i32* @WM_REG_IR_MODENUM, align 4
  %25 = call i32 @wiiuse_write_data(%struct.wiimote_t* %23, i32 %24, i32* %3, i32 1, i32* null)
  br label %26

26:                                               ; preds = %22, %12, %6
  ret void
}

declare dso_local i64 @WIIMOTE_IS_SET(%struct.wiimote_t*, i32) #1

declare dso_local i32 @wiiuse_write_data(%struct.wiimote_t*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
