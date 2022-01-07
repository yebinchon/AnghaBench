; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_dinput.c_dinput_init_context.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_dinput.c_dinput_init_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_dinput_ctx = common dso_local global i64 0, align 8
@DIRECTINPUT_VERSION = common dso_local global i32 0, align 4
@IID_IDirectInput8 = common dso_local global i32**** null, align 8
@.str = private unnamed_addr constant [45 x i8] c"[DINPUT]: Failed to initialize DirectInput.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dinput_init_context() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @g_dinput_ctx, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %15

5:                                                ; preds = %0
  %6 = call i32 @GetModuleHandle(i32* null)
  %7 = load i32, i32* @DIRECTINPUT_VERSION, align 4
  %8 = call i32 @DirectInput8Create(i32 %6, i32 %7, i32***** @IID_IDirectInput8, i8** bitcast (i64* @g_dinput_ctx to i8**), i32* null)
  %9 = call i32 @SUCCEEDED(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  br label %13

12:                                               ; preds = %5
  store i32 1, i32* %1, align 4
  br label %15

13:                                               ; preds = %11
  %14 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %13, %12, %4
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i32 @DirectInput8Create(i32, i32, i32*****, i8**, i32*) #1

declare dso_local i32 @GetModuleHandle(i32*) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
