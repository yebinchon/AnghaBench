; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_mir_window.c_mirModToGLFWMod.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_mir_window.c_mirModToGLFWMod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mir_input_event_modifier_alt = common dso_local global i32 0, align 4
@GLFW_MOD_ALT = common dso_local global i32 0, align 4
@mir_input_event_modifier_shift = common dso_local global i32 0, align 4
@GLFW_MOD_SHIFT = common dso_local global i32 0, align 4
@mir_input_event_modifier_ctrl = common dso_local global i32 0, align 4
@GLFW_MOD_CONTROL = common dso_local global i32 0, align 4
@mir_input_event_modifier_meta = common dso_local global i32 0, align 4
@GLFW_MOD_SUPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mirModToGLFWMod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mirModToGLFWMod(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @mir_input_event_modifier_alt, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @GLFW_MOD_ALT, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  br label %42

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @mir_input_event_modifier_shift, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @GLFW_MOD_SHIFT, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %41

21:                                               ; preds = %12
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @mir_input_event_modifier_ctrl, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @GLFW_MOD_CONTROL, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %40

30:                                               ; preds = %21
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @mir_input_event_modifier_meta, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @GLFW_MOD_SUPER, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %30
  br label %40

40:                                               ; preds = %39, %26
  br label %41

41:                                               ; preds = %40, %17
  br label %42

42:                                               ; preds = %41, %8
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
