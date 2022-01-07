; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_emu.c_pemu_finalize_frame.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_emu.c_pemu_finalize_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32* }

@currentConfig = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@PicoAHW = common dso_local global i32 0, align 4
@PAHW_32X = common dso_local global i32 0, align 4
@RT_8BIT_FAST = common dso_local global i64 0, align 8
@Pico = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@localPal = common dso_local global i32 0, align 4
@PAHW_SVP = common dso_local global i32 0, align 4
@PicoDraw2FB = common dso_local global i64 0, align 8
@g_screen_ptr = common dso_local global i32 0, align 4
@PicoOpt = common dso_local global i32 0, align 4
@POPT_DIS_32C_BORDER = common dso_local global i32 0, align 4
@RT_8BIT_ACC = common dso_local global i64 0, align 8
@osd_y = common dso_local global i32 0, align 4
@EOPT_SHOW_FPS = common dso_local global i32 0, align 4
@osd_fps_x = common dso_local global i32 0, align 4
@PAHW_MCD = common dso_local global i32 0, align 4
@EOPT_EN_CD_LEDS = common dso_local global i32 0, align 4
@PAHW_PICO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pemu_finalize_frame(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @currentConfig, i32 0, i32 0), align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @PicoAHW, align 4
  %9 = load i32, i32* @PAHW_32X, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %69

13:                                               ; preds = %2
  %14 = call i64 (...) @get_renderer()
  %15 = load i64, i64* @RT_8BIT_FAST, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %54

17:                                               ; preds = %13
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 0, i32 0), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 0, i32 0), align 8
  %21 = call i32 @make_local_pal(i32 1)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @localPal, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @gp2x_video_setpalette(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %17
  %26 = load i32, i32* @PicoAHW, align 4
  %27 = load i32, i32* @PAHW_SVP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i64, i64* @PicoDraw2FB, align 8
  %32 = add nsw i64 %31, 2624
  %33 = add nsw i64 %32, 73144
  %34 = inttoptr i64 %33 to i32*
  %35 = call i32 @memset32(i32* %34, i32 -522133280, i32 328)
  br label %36

36:                                               ; preds = %30, %25
  %37 = load i32, i32* @g_screen_ptr, align 4
  %38 = load i64, i64* @PicoDraw2FB, align 8
  %39 = add nsw i64 %38, 2624
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 1, i32 0), align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 12
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* @PicoOpt, align 4
  %48 = load i32, i32* @POPT_DIS_32C_BORDER, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @vidcpyM2(i32 %37, i64 %39, i32 %46, i32 %52)
  br label %68

54:                                               ; preds = %13
  %55 = call i64 (...) @get_renderer()
  %56 = load i64, i64* @RT_8BIT_ACC, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 0, i32 0), align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 0, i32 0), align 8
  %62 = call i32 @make_local_pal(i32 0)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* @localPal, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @gp2x_video_setpalette(i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %58
  br label %67

67:                                               ; preds = %66, %54
  br label %68

68:                                               ; preds = %67, %36
  br label %69

69:                                               ; preds = %68, %12
  %70 = load i8*, i8** %4, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* @osd_y, align 4
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @osd_text(i32 4, i32 %73, i8* %74)
  br label %76

76:                                               ; preds = %72, %69
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @EOPT_SHOW_FPS, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i32, i32* @osd_fps_x, align 4
  %83 = load i32, i32* @osd_y, align 4
  %84 = load i8*, i8** %3, align 8
  %85 = call i32 @osd_text(i32 %82, i32 %83, i8* %84)
  br label %86

86:                                               ; preds = %81, %76
  %87 = load i32, i32* @PicoAHW, align 4
  %88 = load i32, i32* @PAHW_MCD, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @EOPT_EN_CD_LEDS, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = call i32 (...) @draw_cd_leds()
  br label %98

98:                                               ; preds = %96, %91, %86
  %99 = load i32, i32* @PicoAHW, align 4
  %100 = load i32, i32* @PAHW_PICO, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = call i32 (...) @draw_pico_ptr()
  br label %105

105:                                              ; preds = %103, %98
  ret void
}

declare dso_local i64 @get_renderer(...) #1

declare dso_local i32 @make_local_pal(i32) #1

declare dso_local i32 @gp2x_video_setpalette(i32, i32) #1

declare dso_local i32 @memset32(i32*, i32, i32) #1

declare dso_local i32 @vidcpyM2(i32, i64, i32, i32) #1

declare dso_local i32 @osd_text(i32, i32, i8*) #1

declare dso_local i32 @draw_cd_leds(...) #1

declare dso_local i32 @draw_pico_ptr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
