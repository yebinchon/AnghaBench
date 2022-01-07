; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_wl_init.c_keyboardHandleModifiers.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_wl_init.c_keyboardHandleModifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.wl_keyboard = type { i32 }

@_glfw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@XKB_STATE_DEPRESSED = common dso_local global i32 0, align 4
@XKB_STATE_LATCHED = common dso_local global i32 0, align 4
@GLFW_MOD_CONTROL = common dso_local global i32 0, align 4
@GLFW_MOD_ALT = common dso_local global i32 0, align 4
@GLFW_MOD_SHIFT = common dso_local global i32 0, align 4
@GLFW_MOD_SUPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_keyboard*, i32, i32, i32, i32, i32)* @keyboardHandleModifiers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyboardHandleModifiers(i8* %0, %struct.wl_keyboard* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.wl_keyboard*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store %struct.wl_keyboard* %1, %struct.wl_keyboard** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 6), align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %7
  br label %69

20:                                               ; preds = %7
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 5), align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %14, align 4
  %26 = call i32 @xkb_state_update_mask(i32 %21, i32 %22, i32 %23, i32 %24, i32 0, i32 0, i32 %25)
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 5), align 4
  %28 = load i32, i32* @XKB_STATE_DEPRESSED, align 4
  %29 = load i32, i32* @XKB_STATE_LATCHED, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @xkb_state_serialize_mods(i32 %27, i32 %30)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 0), align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %20
  %37 = load i32, i32* @GLFW_MOD_CONTROL, align 4
  %38 = load i32, i32* %16, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %16, align 4
  br label %40

40:                                               ; preds = %36, %20
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 1), align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @GLFW_MOD_ALT, align 4
  %47 = load i32, i32* %16, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %16, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 2), align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @GLFW_MOD_SHIFT, align 4
  %56 = load i32, i32* %16, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %16, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 3), align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @GLFW_MOD_SUPER, align 4
  %65 = load i32, i32* %16, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %16, align 4
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32, i32* %16, align 4
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 4), align 4
  br label %69

69:                                               ; preds = %67, %19
  ret void
}

declare dso_local i32 @xkb_state_update_mask(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xkb_state_serialize_mods(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
