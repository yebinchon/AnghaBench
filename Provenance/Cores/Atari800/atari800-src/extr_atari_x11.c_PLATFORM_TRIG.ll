; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_x11.c_PLATFORM_TRIG.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_x11.c_PLATFORM_TRIG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@keypad_mode = common dso_local global i32 0, align 4
@keypad_trig = common dso_local global i32 0, align 4
@xmouse_mode = common dso_local global i32 0, align 4
@display = common dso_local global i32 0, align 4
@window = common dso_local global i32 0, align 4
@window_width = common dso_local global i32 0, align 4
@window_height = common dso_local global i32 0, align 4
@Button1Mask = common dso_local global i32 0, align 4
@JS_RETURN = common dso_local global i32 0, align 4
@js0 = common dso_local global i32 0, align 4
@js0_mode = common dso_local global i32 0, align 4
@js1 = common dso_local global i32 0, align 4
@js1_mode = common dso_local global i32 0, align 4
@js_data = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PLATFORM_TRIG(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @keypad_mode, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @keypad_trig, align 4
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @xmouse_mode, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %16
  %21 = load i32, i32* @display, align 4
  %22 = load i32, i32* @window, align 4
  %23 = call i64 @XQueryPointer(i32 %21, i32 %22, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @window_width, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @window_height, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %32, %28, %25
  store i32 1, i32* %3, align 4
  br label %47

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @Button1Mask, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %40
  br label %47

47:                                               ; preds = %46, %39
  br label %48

48:                                               ; preds = %47, %20
  br label %49

49:                                               ; preds = %48, %16
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @XQueryPointer(i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
