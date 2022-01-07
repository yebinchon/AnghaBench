; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/linux/extr_emu.c_pemu_finalize_frame.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/linux/extr_emu.c_pemu_finalize_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@currentConfig = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@RT_16BIT = common dso_local global i64 0, align 8
@PicoAHW = common dso_local global i32 0, align 4
@PAHW_32X = common dso_local global i32 0, align 4
@g_screen_ptr = common dso_local global i64 0, align 8
@g_screen_width = common dso_local global i32 0, align 4
@PicoDraw2FB = common dso_local global i8* null, align 8
@HighPal = common dso_local global i16* null, align 8
@Pico = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@EOPT_SHOW_FPS = common dso_local global i32 0, align 4
@g_screen_height = common dso_local global i64 0, align 8
@PAHW_MCD = common dso_local global i32 0, align 4
@EOPT_EN_CD_LEDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pemu_finalize_frame(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 0), align 8
  %11 = load i64, i64* @RT_16BIT, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %61

13:                                               ; preds = %2
  %14 = load i32, i32* @PicoAHW, align 4
  %15 = load i32, i32* @PAHW_32X, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %61, label %18

18:                                               ; preds = %13
  %19 = load i64, i64* @g_screen_ptr, align 8
  %20 = inttoptr i64 %19 to i16*
  %21 = load i32, i32* @g_screen_width, align 4
  %22 = mul nsw i32 8, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %20, i64 %23
  store i16* %24, i16** %5, align 8
  %25 = load i8*, i8** @PicoDraw2FB, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2624
  %27 = getelementptr inbounds i8, i8* %26, i64 8
  store i8* %27, i8** %6, align 8
  %28 = load i16*, i16** @HighPal, align 8
  store i16* %28, i16** %7, align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = call i32 (...) @PicoDrawUpdateHighPal()
  br label %33

33:                                               ; preds = %31, %18
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %55, %33
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 224
  br i1 %36, label %37, label %60

37:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %51, %37
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 320
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load i16*, i16** %7, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %6, align 8
  %45 = load i8, i8* %43, align 1
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds i16, i16* %42, i64 %46
  %48 = load i16, i16* %47, align 2
  %49 = load i16*, i16** %5, align 8
  %50 = getelementptr inbounds i16, i16* %49, i32 1
  store i16* %50, i16** %5, align 8
  store i16 %48, i16* %49, align 2
  br label %51

51:                                               ; preds = %41
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %38

54:                                               ; preds = %38
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 8
  store i8* %59, i8** %6, align 8
  br label %34

60:                                               ; preds = %34
  br label %61

61:                                               ; preds = %60, %13, %2
  %62 = load i8*, i8** %4, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 1), align 8
  %66 = load i32, i32* @EOPT_SHOW_FPS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %64, %61
  %70 = load i8*, i8** %4, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i64, i64* @g_screen_height, align 8
  %74 = sub nsw i64 %73, 8
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @emu_osd_text16(i32 4, i64 %74, i8* %75)
  br label %77

77:                                               ; preds = %72, %69
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 1), align 8
  %79 = load i32, i32* @EOPT_SHOW_FPS, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load i32, i32* @g_screen_width, align 4
  %84 = sub nsw i32 %83, 60
  %85 = load i64, i64* @g_screen_height, align 8
  %86 = sub nsw i64 %85, 8
  %87 = load i8*, i8** %3, align 8
  %88 = call i32 @emu_osd_text16(i32 %84, i64 %86, i8* %87)
  br label %89

89:                                               ; preds = %82, %77
  br label %90

90:                                               ; preds = %89, %64
  %91 = load i32, i32* @PicoAHW, align 4
  %92 = load i32, i32* @PAHW_MCD, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 1), align 8
  %97 = load i32, i32* @EOPT_EN_CD_LEDS, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = call i32 (...) @draw_cd_leds()
  br label %102

102:                                              ; preds = %100, %95, %90
  ret void
}

declare dso_local i32 @PicoDrawUpdateHighPal(...) #1

declare dso_local i32 @emu_osd_text16(i32, i64, i8*) #1

declare dso_local i32 @draw_cd_leds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
