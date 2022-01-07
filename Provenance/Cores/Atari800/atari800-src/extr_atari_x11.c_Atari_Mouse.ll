; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_x11.c_Atari_Mouse.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_x11.c_Atari_Mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Atari_Mouse.last_x = internal global i32 0, align 4
@Atari_Mouse.last_y = internal global i32 0, align 4
@INPUT_mouse_mode = common dso_local global i64 0, align 8
@INPUT_MOUSE_OFF = common dso_local global i64 0, align 8
@display = common dso_local global i32 0, align 4
@window = common dso_local global i32 0, align 4
@INPUT_direct_mouse = common dso_local global i64 0, align 8
@window_width = common dso_local global i64 0, align 8
@window_height = common dso_local global i64 0, align 8
@POKEY_POT_input = common dso_local global i32* null, align 8
@INPUT_mouse_port = common dso_local global i32 0, align 4
@INPUT_mouse_delta_x = common dso_local global i32 0, align 4
@INPUT_mouse_delta_y = common dso_local global i32 0, align 4
@Button1Mask = common dso_local global i32 0, align 4
@Button3Mask = common dso_local global i32 0, align 4
@Button2Mask = common dso_local global i32 0, align 4
@INPUT_mouse_buttons = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Atari_Mouse() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i64, i64* @INPUT_mouse_mode, align 8
  %11 = load i64, i64* @INPUT_MOUSE_OFF, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  br label %100

14:                                               ; preds = %0
  %15 = load i32, i32* @display, align 4
  %16 = load i32, i32* @window, align 4
  %17 = call i64 @XQueryPointer(i32 %15, i32 %16, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %100

19:                                               ; preds = %14
  %20 = load i64, i64* @INPUT_direct_mouse, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %70

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %27, %22
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i32, i32* %8, align 4
  %34 = sitofp i32 %33 to double
  %35 = load i64, i64* @window_width, align 8
  %36 = sitofp i64 %35 to double
  %37 = fdiv double 2.280000e+02, %36
  %38 = fmul double %34, %37
  %39 = fptosi double %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sitofp i32 %40 to double
  %42 = load i64, i64* @window_height, align 8
  %43 = sitofp i64 %42 to double
  %44 = fdiv double 2.280000e+02, %43
  %45 = fmul double %41, %44
  %46 = fptosi double %45 to i32
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp sgt i32 %47, 227
  br i1 %48, label %49, label %50

49:                                               ; preds = %32
  store i32 227, i32* %8, align 4
  br label %50

50:                                               ; preds = %49, %32
  %51 = load i32, i32* %9, align 4
  %52 = icmp sgt i32 %51, 227
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 227, i32* %9, align 4
  br label %54

54:                                               ; preds = %53, %50
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 227, %55
  %57 = load i32*, i32** @POKEY_POT_input, align 8
  %58 = load i32, i32* @INPUT_mouse_port, align 4
  %59 = shl i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  store i32 %56, i32* %61, align 4
  %62 = load i32, i32* %9, align 4
  %63 = sub nsw i32 227, %62
  %64 = load i32*, i32** @POKEY_POT_input, align 8
  %65 = load i32, i32* @INPUT_mouse_port, align 4
  %66 = shl i32 %65, 1
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  store i32 %63, i32* %69, align 4
  br label %79

70:                                               ; preds = %19
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @Atari_Mouse.last_x, align 4
  %73 = sub nsw i32 %71, %72
  store i32 %73, i32* @INPUT_mouse_delta_x, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @Atari_Mouse.last_y, align 4
  %76 = sub nsw i32 %74, %75
  store i32 %76, i32* @INPUT_mouse_delta_y, align 4
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* @Atari_Mouse.last_x, align 4
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* @Atari_Mouse.last_y, align 4
  br label %79

79:                                               ; preds = %70, %54
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @Button1Mask, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 1, i32 0
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @Button3Mask, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 2, i32 0
  %92 = or i32 %85, %91
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @Button2Mask, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 4, i32 0
  %99 = or i32 %92, %98
  store i32 %99, i32* @INPUT_mouse_buttons, align 4
  br label %100

100:                                              ; preds = %13, %79, %14
  ret void
}

declare dso_local i64 @XQueryPointer(i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
