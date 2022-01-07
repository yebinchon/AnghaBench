; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_input.c_INPUT_Scanline.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_input.c_INPUT_Scanline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@scanline_counter = common dso_local global i64 0, align 8
@INPUT_mouse_mode = common dso_local global i64 0, align 8
@INPUT_MOUSE_TRAK = common dso_local global i64 0, align 8
@mouse_y = common dso_local global i32 0, align 4
@mouse_last_down = common dso_local global i32 0, align 4
@mouse_x = common dso_local global i32 0, align 4
@mouse_last_right = common dso_local global i32 0, align 4
@STICK = common dso_local global i32* null, align 8
@INPUT_mouse_port = common dso_local global i64 0, align 8
@INPUT_MOUSE_AMIGA = common dso_local global i64 0, align 8
@mouse_amiga_codes = common dso_local global i32* null, align 8
@mouse_st_codes = common dso_local global i32* null, align 8
@PIA_PORT_input = common dso_local global i32* null, align 8
@max_scanline_counter = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @INPUT_Scanline() #0 {
  %1 = load i64, i64* @scanline_counter, align 8
  %2 = add nsw i64 %1, -1
  store i64 %2, i64* @scanline_counter, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %69

4:                                                ; preds = %0
  %5 = call i32 (...) @mouse_step()
  %6 = load i64, i64* @INPUT_mouse_mode, align 8
  %7 = load i64, i64* @INPUT_MOUSE_TRAK, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %4
  %10 = load i32, i32* @mouse_y, align 4
  %11 = and i32 %10, 1
  %12 = shl i32 %11, 3
  %13 = load i32, i32* @mouse_last_down, align 4
  %14 = shl i32 %13, 2
  %15 = or i32 %12, %14
  %16 = load i32, i32* @mouse_x, align 4
  %17 = and i32 %16, 1
  %18 = shl i32 %17, 1
  %19 = or i32 %15, %18
  %20 = load i32, i32* @mouse_last_right, align 4
  %21 = or i32 %19, %20
  %22 = load i32*, i32** @STICK, align 8
  %23 = load i64, i64* @INPUT_mouse_port, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32 %21, i32* %24, align 4
  br label %47

25:                                               ; preds = %4
  %26 = load i64, i64* @INPUT_mouse_mode, align 8
  %27 = load i64, i64* @INPUT_MOUSE_AMIGA, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32*, i32** @mouse_amiga_codes, align 8
  br label %33

31:                                               ; preds = %25
  %32 = load i32*, i32** @mouse_st_codes, align 8
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32* [ %30, %29 ], [ %32, %31 ]
  %35 = load i32, i32* @mouse_y, align 4
  %36 = and i32 %35, 3
  %37 = mul nsw i32 %36, 4
  %38 = load i32, i32* @mouse_x, align 4
  %39 = and i32 %38, 3
  %40 = add nsw i32 %37, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %34, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** @STICK, align 8
  %45 = load i64, i64* @INPUT_mouse_port, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 %43, i32* %46, align 4
  br label %47

47:                                               ; preds = %33, %9
  %48 = load i32*, i32** @STICK, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 4
  %52 = load i32*, i32** @STICK, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %51, %54
  %56 = load i32*, i32** @PIA_PORT_input, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %55, i32* %57, align 4
  %58 = load i32*, i32** @STICK, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 4
  %62 = load i32*, i32** @STICK, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %61, %64
  %66 = load i32*, i32** @PIA_PORT_input, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 %65, i32* %67, align 4
  %68 = load i64, i64* @max_scanline_counter, align 8
  store i64 %68, i64* @scanline_counter, align 8
  br label %69

69:                                               ; preds = %47, %0
  ret void
}

declare dso_local i32 @mouse_step(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
