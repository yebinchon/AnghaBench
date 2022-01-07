; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_x11.c_mouse_joystick.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_x11.c_mouse_joystick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mouse_stick = common dso_local global i32 0, align 4
@display = common dso_local global i32 0, align 4
@window = common dso_local global i32 0, align 4
@windowsize = common dso_local global i64 0, align 8
@Small = common dso_local global i64 0, align 8
@window_width = common dso_local global i32 0, align 4
@window_height = common dso_local global i32 0, align 4
@Large = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mouse_joystick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mouse_joystick(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 15, i32* @mouse_stick, align 4
  %13 = load i32, i32* @display, align 4
  %14 = load i32, i32* @window, align 4
  %15 = call i32 @XQueryPointer(i32 %13, i32 %14, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9)
  %16 = load i32, i32* %2, align 4
  %17 = icmp slt i32 %16, 5
  br i1 %17, label %18, label %97

18:                                               ; preds = %1
  %19 = load i64, i64* @windowsize, align 8
  %20 = load i64, i64* @Small, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* @window_width, align 4
  %24 = sdiv i32 %23, 2
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @window_height, align 4
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %11, align 4
  store i32 32, i32* %12, align 4
  br label %42

27:                                               ; preds = %18
  %28 = load i64, i64* @windowsize, align 8
  %29 = load i64, i64* @Large, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* @window_width, align 4
  %33 = sdiv i32 %32, 2
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* @window_height, align 4
  %35 = sdiv i32 %34, 2
  store i32 %35, i32* %11, align 4
  store i32 64, i32* %12, align 4
  br label %41

36:                                               ; preds = %27
  %37 = load i32, i32* @window_width, align 4
  %38 = sdiv i32 %37, 2
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* @window_height, align 4
  %40 = sdiv i32 %39, 2
  store i32 %40, i32* %11, align 4
  store i32 96, i32* %12, align 4
  br label %41

41:                                               ; preds = %36, %31
  br label %42

42:                                               ; preds = %41, %22
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %10, align 4
  %48 = mul nsw i32 %47, 2
  %49 = icmp sgt i32 %46, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %11, align 4
  %56 = mul nsw i32 %55, 2
  %57 = icmp sgt i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53, %50, %45, %42
  store i32 15, i32* @mouse_stick, align 4
  br label %96

59:                                               ; preds = %53
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %12, align 4
  %63 = sub nsw i32 %61, %62
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @mouse_stick, align 4
  %67 = and i32 %66, 251
  store i32 %67, i32* @mouse_stick, align 4
  br label %68

68:                                               ; preds = %65, %59
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %70, %71
  %73 = icmp sgt i32 %69, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @mouse_stick, align 4
  %76 = and i32 %75, 247
  store i32 %76, i32* @mouse_stick, align 4
  br label %77

77:                                               ; preds = %74, %68
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = sub nsw i32 %79, %80
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32, i32* @mouse_stick, align 4
  %85 = and i32 %84, 254
  store i32 %85, i32* @mouse_stick, align 4
  br label %86

86:                                               ; preds = %83, %77
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %88, %89
  %91 = icmp sgt i32 %87, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* @mouse_stick, align 4
  %94 = and i32 %93, 253
  store i32 %94, i32* @mouse_stick, align 4
  br label %95

95:                                               ; preds = %92, %86
  br label %96

96:                                               ; preds = %95, %58
  br label %104

97:                                               ; preds = %1
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* @mouse_stick, align 4
  %102 = and i32 %101, 251
  store i32 %102, i32* @mouse_stick, align 4
  br label %103

103:                                              ; preds = %100, %97
  br label %104

104:                                              ; preds = %103, %96
  ret void
}

declare dso_local i32 @XQueryPointer(i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
