; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_emu.c_vid_reset_mode.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_emu.c_vid_reset_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@POPT_ALT_RENDERER = common dso_local global i32 0, align 4
@PicoOpt = common dso_local global i32 0, align 4
@emu_scan_begin = common dso_local global i32* null, align 8
@emu_scan_end = common dso_local global i32* null, align 8
@PDF_RGB555 = common dso_local global i32 0, align 4
@g_screen_ptr = common dso_local global i32 0, align 4
@g_screen_width = common dso_local global i32 0, align 4
@PDF_8BIT = common dso_local global i32 0, align 4
@PDF_NONE = common dso_local global i32 0, align 4
@vidcpy_m2 = common dso_local global i32 0, align 4
@vidcpyM2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"bad renderer\0A\00", align 1
@PicoAHW = common dso_local global i32 0, align 4
@PAHW_32X = common dso_local global i32 0, align 4
@currentConfig = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@EOPT_WIZ_TEAR_FIX = common dso_local global i32 0, align 4
@EmuScanBegin16_rot = common dso_local global i32* null, align 8
@EmuScanEnd16_rot = common dso_local global i32* null, align 8
@EmuScanBegin8_rot = common dso_local global i32* null, align 8
@EmuScanEnd8_rot = common dso_local global i32* null, align 8
@vidcpy_m2_rot = common dso_local global i32 0, align 4
@osd_text16_rot = common dso_local global i32 0, align 4
@emu_osd_text16 = common dso_local global i32 0, align 4
@osd_text = common dso_local global i32 0, align 4
@osd_text8_rot = common dso_local global i32 0, align 4
@osd_text8 = common dso_local global i32 0, align 4
@localPal = common dso_local global i32* null, align 8
@Pico = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@POPT_EN_SOFTSCALE = common dso_local global i32 0, align 4
@EOPT_SCALE_SW = common dso_local global i64 0, align 8
@PAHW_SMS = common dso_local global i32 0, align 4
@make_local_pal_sms = common dso_local global i32 0, align 4
@make_local_pal_md = common dso_local global i32 0, align 4
@make_local_pal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vid_reset_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vid_reset_mode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 16, i32* %1, align 4
  %3 = call i32 (...) @get_renderer()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* @POPT_ALT_RENDERER, align 4
  %5 = xor i32 %4, -1
  %6 = load i32, i32* @PicoOpt, align 4
  %7 = and i32 %6, %5
  store i32 %7, i32* @PicoOpt, align 4
  store i32* null, i32** @emu_scan_begin, align 8
  store i32* null, i32** @emu_scan_end, align 8
  %8 = load i32, i32* %2, align 4
  switch i32 %8, label %29 [
    i32 130, label %9
    i32 129, label %16
    i32 128, label %22
  ]

9:                                                ; preds = %0
  %10 = load i32, i32* @PDF_RGB555, align 4
  %11 = call i32 @PicoDrawSetOutFormat(i32 %10, i32 0)
  %12 = load i32, i32* @g_screen_ptr, align 4
  %13 = load i32, i32* @g_screen_width, align 4
  %14 = mul nsw i32 %13, 2
  %15 = call i32 @PicoDrawSetOutBuf(i32 %12, i32 %14)
  br label %31

16:                                               ; preds = %0
  %17 = load i32, i32* @PDF_8BIT, align 4
  %18 = call i32 @PicoDrawSetOutFormat(i32 %17, i32 0)
  %19 = load i32, i32* @g_screen_ptr, align 4
  %20 = load i32, i32* @g_screen_width, align 4
  %21 = call i32 @PicoDrawSetOutBuf(i32 %19, i32 %20)
  store i32 8, i32* %1, align 4
  br label %31

22:                                               ; preds = %0
  %23 = load i32, i32* @POPT_ALT_RENDERER, align 4
  %24 = load i32, i32* @PicoOpt, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* @PicoOpt, align 4
  %26 = load i32, i32* @PDF_NONE, align 4
  %27 = call i32 @PicoDrawSetOutFormat(i32 %26, i32 0)
  %28 = load i32, i32* @vidcpy_m2, align 4
  store i32 %28, i32* @vidcpyM2, align 4
  store i32 8, i32* %1, align 4
  br label %31

29:                                               ; preds = %0
  %30 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %22, %16, %9
  %32 = load i32, i32* @PicoAHW, align 4
  %33 = load i32, i32* @PAHW_32X, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %31
  %37 = load i32, i32* %2, align 4
  %38 = icmp eq i32 %37, 130
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 0), align 8
  %41 = load i32, i32* @EOPT_WIZ_TEAR_FIX, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @PDF_RGB555, align 4
  %46 = call i32 @PicoDrawSetOutFormat(i32 %45, i32 1)
  br label %50

47:                                               ; preds = %39, %36
  %48 = load i32, i32* @PDF_NONE, align 4
  %49 = call i32 @PicoDrawSetOutFormat(i32 %48, i32 0)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* @g_screen_ptr, align 4
  %52 = load i32, i32* @g_screen_width, align 4
  %53 = mul nsw i32 %52, 2
  %54 = call i32 @PicoDrawSetOutBuf(i32 %51, i32 %53)
  store i32 16, i32* %1, align 4
  br label %55

55:                                               ; preds = %50, %31
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 0), align 8
  %57 = load i32, i32* @EOPT_WIZ_TEAR_FIX, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %85

60:                                               ; preds = %55
  %61 = load i32, i32* @PicoAHW, align 4
  %62 = load i32, i32* @PAHW_32X, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %2, align 4
  %67 = icmp eq i32 %66, 130
  br i1 %67, label %68, label %71

68:                                               ; preds = %65, %60
  %69 = load i32*, i32** @EmuScanBegin16_rot, align 8
  store i32* %69, i32** @emu_scan_begin, align 8
  %70 = load i32*, i32** @EmuScanEnd16_rot, align 8
  store i32* %70, i32** @emu_scan_end, align 8
  br label %84

71:                                               ; preds = %65
  %72 = load i32, i32* %2, align 4
  %73 = icmp eq i32 %72, 129
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32*, i32** @EmuScanBegin8_rot, align 8
  store i32* %75, i32** @emu_scan_begin, align 8
  %76 = load i32*, i32** @EmuScanEnd8_rot, align 8
  store i32* %76, i32** @emu_scan_end, align 8
  br label %83

77:                                               ; preds = %71
  %78 = load i32, i32* %2, align 4
  %79 = icmp eq i32 %78, 128
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @vidcpy_m2_rot, align 4
  store i32 %81, i32* @vidcpyM2, align 4
  br label %82

82:                                               ; preds = %80, %77
  br label %83

83:                                               ; preds = %82, %74
  br label %84

84:                                               ; preds = %83, %68
  br label %85

85:                                               ; preds = %84, %55
  %86 = load i32*, i32** @emu_scan_begin, align 8
  %87 = load i32*, i32** @emu_scan_end, align 8
  %88 = call i32 @PicoDrawSetCallbacks(i32* %86, i32* %87)
  %89 = call i64 (...) @is_16bit_mode()
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %85
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 0), align 8
  %93 = load i32, i32* @EOPT_WIZ_TEAR_FIX, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* @osd_text16_rot, align 4
  br label %100

98:                                               ; preds = %91
  %99 = load i32, i32* @emu_osd_text16, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  store i32 %101, i32* @osd_text, align 4
  br label %113

102:                                              ; preds = %85
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 0), align 8
  %104 = load i32, i32* @EOPT_WIZ_TEAR_FIX, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* @osd_text8_rot, align 4
  br label %111

109:                                              ; preds = %102
  %110 = load i32, i32* @osd_text8, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  store i32 %112, i32* @osd_text, align 4
  br label %113

113:                                              ; preds = %111, %100
  %114 = call i32 (...) @gp2x_video_wait_vsync()
  %115 = call i64 (...) @is_16bit_mode()
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %129, label %117

117:                                              ; preds = %113
  %118 = load i32*, i32** @localPal, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 192
  store i32 49152, i32* %119, align 4
  %120 = load i32*, i32** @localPal, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 208
  store i32 12582912, i32* %121, align 4
  %122 = load i32*, i32** @localPal, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 224
  store i32 0, i32* %123, align 4
  %124 = load i32*, i32** @localPal, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 240
  store i32 16777215, i32* %125, align 4
  %126 = load i32*, i32** @localPal, align 8
  %127 = call i32 @gp2x_video_setpalette(i32* %126, i32 256)
  %128 = call i32 @gp2x_memset_all_buffers(i32 0, i32 224, i32 76800)
  br label %131

129:                                              ; preds = %113
  %130 = call i32 @gp2x_memset_all_buffers(i32 0, i32 0, i32 153600)
  br label %131

131:                                              ; preds = %129, %117
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 0), align 8
  %133 = load i32, i32* @EOPT_WIZ_TEAR_FIX, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i32, i32* %1, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %1, align 4
  br label %139

139:                                              ; preds = %136, %131
  %140 = load i32, i32* %1, align 4
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 1), align 4
  %142 = call i32 @gp2x_video_changemode(i32 %140, i32 %141)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 4
  %143 = load i32, i32* @POPT_EN_SOFTSCALE, align 4
  %144 = xor i32 %143, -1
  %145 = load i32, i32* @PicoOpt, align 4
  %146 = and i32 %145, %144
  store i32 %146, i32* @PicoOpt, align 4
  %147 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 1), align 8
  %148 = load i64, i64* @EOPT_SCALE_SW, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %139
  %151 = load i32, i32* @POPT_EN_SOFTSCALE, align 4
  %152 = load i32, i32* @PicoOpt, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* @PicoOpt, align 4
  br label %154

154:                                              ; preds = %150, %139
  %155 = load i32, i32* @PicoAHW, align 4
  %156 = load i32, i32* @PAHW_SMS, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = load i32, i32* @make_local_pal_sms, align 4
  br label %163

161:                                              ; preds = %154
  %162 = load i32, i32* @make_local_pal_md, align 4
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi i32 [ %160, %159 ], [ %162, %161 ]
  store i32 %164, i32* @make_local_pal, align 4
  ret void
}

declare dso_local i32 @get_renderer(...) #1

declare dso_local i32 @PicoDrawSetOutFormat(i32, i32) #1

declare dso_local i32 @PicoDrawSetOutBuf(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @PicoDrawSetCallbacks(i32*, i32*) #1

declare dso_local i64 @is_16bit_mode(...) #1

declare dso_local i32 @gp2x_video_wait_vsync(...) #1

declare dso_local i32 @gp2x_video_setpalette(i32*, i32) #1

declare dso_local i32 @gp2x_memset_all_buffers(i32, i32, i32) #1

declare dso_local i32 @gp2x_video_changemode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
