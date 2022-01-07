; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_xenon360_input.c_xenon360_input_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_xenon360_input.c_xenon360_input_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_keybind = type { i32 }

@DEFAULT_MAX_PADS = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_MASK = common dso_local global i32 0, align 4
@RARCH_FIRST_CUSTOM_BIND = common dso_local global i32 0, align 4
@state = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.retro_keybind**, i32, i32, i32, i32)* @xenon360_input_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenon360_input_state(i8* %0, i32 %1, %struct.retro_keybind** %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.retro_keybind**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.retro_keybind** %2, %struct.retro_keybind*** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %20 = load i32, i32* %12, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %19, i64 %21
  %23 = load %struct.retro_keybind*, %struct.retro_keybind** %22, align 8
  %24 = load i32, i32* %15, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %23, i64 %25
  %27 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @DEFAULT_MAX_PADS, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %96

33:                                               ; preds = %7
  %34 = load i32, i32* %13, align 4
  switch i32 %34, label %94 [
    i32 128, label %35
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_MASK, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %73

39:                                               ; preds = %35
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %40

40:                                               ; preds = %68, %39
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %71

44:                                               ; preds = %40
  %45 = load i32*, i32** @state, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %50, i64 %52
  %54 = load %struct.retro_keybind*, %struct.retro_keybind** %53, align 8
  %55 = load i32, i32* %17, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %54, i64 %56
  %58 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %49, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %44
  %63 = load i32, i32* %17, align 4
  %64 = shl i32 1, %63
  %65 = load i32, i32* %18, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %18, align 4
  br label %67

67:                                               ; preds = %62, %44
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %17, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %17, align 4
  br label %40

71:                                               ; preds = %40
  %72 = load i32, i32* %18, align 4
  store i32 %72, i32* %8, align 4
  br label %96

73:                                               ; preds = %35
  %74 = load i32*, i32** @state, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %79, i64 %81
  %83 = load %struct.retro_keybind*, %struct.retro_keybind** %82, align 8
  %84 = load i32, i32* %15, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %83, i64 %85
  %87 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %78, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %73
  store i32 1, i32* %8, align 4
  br label %96

92:                                               ; preds = %73
  br label %93

93:                                               ; preds = %92
  br label %95

94:                                               ; preds = %33
  br label %95

95:                                               ; preds = %94, %93
  store i32 0, i32* %8, align 4
  br label %96

96:                                               ; preds = %95, %91, %71, %32
  %97 = load i32, i32* %8, align 4
  ret i32 %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
