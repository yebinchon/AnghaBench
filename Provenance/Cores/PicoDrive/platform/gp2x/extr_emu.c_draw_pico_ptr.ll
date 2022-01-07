; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_emu.c_draw_pico_ptr.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_emu.c_draw_pico_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@g_screen_ptr = common dso_local global i64 0, align 8
@pico_inp_mode = common dso_local global i64 0, align 8
@currentConfig = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@RT_16BIT = common dso_local global i32 0, align 4
@pico_pen_x = common dso_local global i32 0, align 4
@PICO_PEN_ADJUST_X = common dso_local global i32 0, align 4
@pico_pen_y = common dso_local global i32 0, align 4
@PICO_PEN_ADJUST_Y = common dso_local global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PicoOpt = common dso_local global i32 0, align 4
@POPT_DIS_32C_BORDER = common dso_local global i32 0, align 4
@EOPT_WIZ_TEAR_FIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @draw_pico_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_pico_ptr() #0 {
  %1 = alloca i16*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i64, i64* @g_screen_ptr, align 8
  %6 = inttoptr i64 %5 to i16*
  store i16* %6, i16** %1, align 8
  store i32 320, i32* %4, align 4
  %7 = load i64, i64* @pico_inp_mode, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 0), align 4
  %11 = load i32, i32* @RT_16BIT, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %0
  br label %100

14:                                               ; preds = %9
  %15 = load i32, i32* @pico_pen_x, align 4
  %16 = load i32, i32* @PICO_PEN_ADJUST_X, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* @pico_pen_y, align 4
  %19 = load i32, i32* @PICO_PEN_ADJUST_Y, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %3, align 4
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 12
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %14
  %27 = load i32, i32* @PicoOpt, align 4
  %28 = load i32, i32* @POPT_DIS_32C_BORDER, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %32, 32
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %26, %14
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 0), align 4
  %36 = load i32, i32* @EOPT_WIZ_TEAR_FIX, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  store i32 240, i32* %4, align 4
  %40 = load i32, i32* %2, align 4
  %41 = sub nsw i32 319, %40
  %42 = load i32, i32* %4, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i16*, i16** %1, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i16, i16* %46, i64 %47
  store i16* %48, i16** %1, align 8
  br label %58

49:                                               ; preds = %34
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %4, align 4
  %53 = mul nsw i32 %51, %52
  %54 = add nsw i32 %50, %53
  %55 = load i16*, i16** %1, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i16, i16* %55, i64 %56
  store i16* %57, i16** %1, align 8
  br label %58

58:                                               ; preds = %49, %39
  %59 = load i16*, i16** %1, align 8
  %60 = getelementptr inbounds i16, i16* %59, i64 0
  %61 = load i16, i16* %60, align 2
  %62 = zext i16 %61 to i32
  %63 = xor i32 %62, 65535
  %64 = trunc i32 %63 to i16
  store i16 %64, i16* %60, align 2
  %65 = load i16*, i16** %1, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i16, i16* %65, i64 %68
  %70 = load i16, i16* %69, align 2
  %71 = zext i16 %70 to i32
  %72 = xor i32 %71, 65535
  %73 = trunc i32 %72 to i16
  store i16 %73, i16* %69, align 2
  %74 = load i16*, i16** %1, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i16, i16* %74, i64 %76
  %78 = load i16, i16* %77, align 2
  %79 = zext i16 %78 to i32
  %80 = xor i32 %79, 65535
  %81 = trunc i32 %80 to i16
  store i16 %81, i16* %77, align 2
  %82 = load i16*, i16** %1, align 8
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i16, i16* %82, i64 %85
  %87 = load i16, i16* %86, align 2
  %88 = zext i16 %87 to i32
  %89 = xor i32 %88, 65535
  %90 = trunc i32 %89 to i16
  store i16 %90, i16* %86, align 2
  %91 = load i16*, i16** %1, align 8
  %92 = load i32, i32* %4, align 4
  %93 = mul nsw i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i16, i16* %91, i64 %94
  %96 = load i16, i16* %95, align 2
  %97 = zext i16 %96 to i32
  %98 = xor i32 %97, 65535
  %99 = trunc i32 %98 to i16
  store i16 %99, i16* %95, align 2
  br label %100

100:                                              ; preds = %58, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
