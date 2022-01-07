; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gx_video_Start.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gx_video_Start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { double, i32, i32, i32, i32, i64, i64*, %struct.TYPE_8__*, i32, i64, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64*, i64* }

@config = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@vdp_pal = common dso_local global i32 0, align 4
@gc_pal = common dso_local global i32 0, align 4
@vi_callback = common dso_local global i32 0, align 4
@VI_TVMODE_NTSC_PROG = common dso_local global i32 0, align 4
@tvmodes = common dso_local global %struct.TYPE_9__** null, align 8
@VI_XFBMODE_SF = common dso_local global i32 0, align 4
@VI_XFBMODE_DF = common dso_local global i32 0, align 4
@system_hw = common dso_local global i64 0, align 8
@SYSTEM_GG = common dso_local global i64 0, align 8
@bitmap = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@sms_ntsc = common dso_local global i32* null, align 8
@md_ntsc = common dso_local global i32* null, align 8
@sms_ntsc_composite = common dso_local global i32 0, align 4
@md_ntsc_composite = common dso_local global i32 0, align 4
@sms_ntsc_svideo = common dso_local global i32 0, align 4
@md_ntsc_svideo = common dso_local global i32 0, align 4
@sms_ntsc_rgb = common dso_local global i32 0, align 4
@md_ntsc_rgb = common dso_local global i32 0, align 4
@MAX_DEVICES = common dso_local global i32 0, align 4
@input = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@DEVICE_LIGHTGUN = common dso_local global i64 0, align 8
@SYSTEM_LIGHTPHASER = common dso_local global i64 0, align 8
@Crosshair_p1_png = common dso_local global i32 0, align 4
@crosshair = common dso_local global i8** null, align 8
@Crosshair_p2_png = common dso_local global i32 0, align 4
@NO_DEVICE = common dso_local global i64 0, align 8
@SYSTEM_MCD = common dso_local global i64 0, align 8
@CD_access_off_png = common dso_local global i32 0, align 4
@cd_leds = common dso_local global i8*** null, align 8
@CD_access_on_png = common dso_local global i32 0, align 4
@CD_ready_off_png = common dso_local global i32 0, align 4
@CD_ready_on_png = common dso_local global i32 0, align 4
@video_sync = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gx_video_Start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 1), align 8
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %11, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 1), align 8
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = load i32, i32* @vdp_pal, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %0
  store i32 1, i32* @gc_pal, align 4
  br label %13

12:                                               ; preds = %8, %5
  store i32 0, i32* @gc_pal, align 4
  br label %13

13:                                               ; preds = %12, %11
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 9), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i32, i32* @gc_pal, align 4
  %18 = load i32, i32* @vdp_pal, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* @vi_callback, align 4
  %22 = call i32 @VIDEO_SetPostRetraceCallback(i32 %21)
  %23 = call i32 (...) @VIDEO_Flush()
  br label %24

24:                                               ; preds = %20, %16, %13
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 2), align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i32, i32* @VI_TVMODE_NTSC_PROG, align 4
  %29 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @tvmodes, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %29, i64 2
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* @VI_XFBMODE_SF, align 4
  %34 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @tvmodes, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %34, i64 2
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 4
  br label %58

38:                                               ; preds = %24
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 2), align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %57

41:                                               ; preds = %38
  %42 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @tvmodes, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %42, i64 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, -4
  %48 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @tvmodes, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %48, i64 2
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* @VI_XFBMODE_DF, align 4
  %53 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @tvmodes, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %53, i64 2
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %41, %38
  br label %58

58:                                               ; preds = %57, %27
  %59 = load i64, i64* @system_hw, align 8
  %60 = load i64, i64* @SYSTEM_GG, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 8), align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 3), align 8
  %67 = and i32 %66, 2
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 14, i32 -48
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bitmap, i32 0, i32 0, i32 0), align 4
  br label %75

71:                                               ; preds = %62, %58
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 3), align 8
  %73 = and i32 %72, 2
  %74 = mul nsw i32 %73, 7
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bitmap, i32 0, i32 0, i32 0), align 4
  br label %75

75:                                               ; preds = %71, %65
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bitmap, i32 0, i32 0, i32 1), align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 4), align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %108

78:                                               ; preds = %75
  %79 = load i32*, i32** @sms_ntsc, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = call i64 @memalign(i32 32, i32 4)
  %83 = inttoptr i64 %82 to i32*
  store i32* %83, i32** @sms_ntsc, align 8
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32*, i32** @md_ntsc, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = call i64 @memalign(i32 32, i32 4)
  %89 = inttoptr i64 %88 to i32*
  store i32* %89, i32** @md_ntsc, align 8
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 4), align 4
  switch i32 %91, label %107 [
    i32 1, label %92
    i32 2, label %97
    i32 3, label %102
  ]

92:                                               ; preds = %90
  %93 = load i32*, i32** @sms_ntsc, align 8
  %94 = call i32 @sms_ntsc_init(i32* %93, i32* @sms_ntsc_composite)
  %95 = load i32*, i32** @md_ntsc, align 8
  %96 = call i32 @md_ntsc_init(i32* %95, i32* @md_ntsc_composite)
  br label %107

97:                                               ; preds = %90
  %98 = load i32*, i32** @sms_ntsc, align 8
  %99 = call i32 @sms_ntsc_init(i32* %98, i32* @sms_ntsc_svideo)
  %100 = load i32*, i32** @md_ntsc, align 8
  %101 = call i32 @md_ntsc_init(i32* %100, i32* @md_ntsc_svideo)
  br label %107

102:                                              ; preds = %90
  %103 = load i32*, i32** @sms_ntsc, align 8
  %104 = call i32 @sms_ntsc_init(i32* %103, i32* @sms_ntsc_rgb)
  %105 = load i32*, i32** @md_ntsc, align 8
  %106 = call i32 @md_ntsc_init(i32* %105, i32* @md_ntsc_rgb)
  br label %107

107:                                              ; preds = %90, %102, %97, %92
  br label %108

108:                                              ; preds = %107, %75
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %109

109:                                              ; preds = %177, %108
  %110 = load i32, i32* %1, align 4
  %111 = load i32, i32* @MAX_DEVICES, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %180

113:                                              ; preds = %109
  %114 = load i64*, i64** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @input, i32 0, i32 0), align 8
  %115 = load i32, i32* %1, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @DEVICE_LIGHTGUN, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %165

121:                                              ; preds = %113
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 7), align 8
  %123 = load i32, i32* %2, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp sge i64 %127, 0
  br i1 %128, label %129, label %164

129:                                              ; preds = %121
  %130 = load i32, i32* %1, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %141, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %1, align 4
  %134 = icmp eq i32 %133, 4
  br i1 %134, label %135, label %152

135:                                              ; preds = %132
  %136 = load i64*, i64** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @input, i32 0, i32 1), align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @SYSTEM_LIGHTPHASER, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %135, %129
  %142 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 6), align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load i32, i32* @Crosshair_p1_png, align 4
  %148 = call i8* @gxTextureOpenPNG(i32 %147, i32 0)
  %149 = load i8**, i8*** @crosshair, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 0
  store i8* %148, i8** %150, align 8
  br label %151

151:                                              ; preds = %146, %141
  br label %163

152:                                              ; preds = %135, %132
  %153 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 6), align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = load i32, i32* @Crosshair_p2_png, align 4
  %159 = call i8* @gxTextureOpenPNG(i32 %158, i32 0)
  %160 = load i8**, i8*** @crosshair, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 1
  store i8* %159, i8** %161, align 8
  br label %162

162:                                              ; preds = %157, %152
  br label %163

163:                                              ; preds = %162, %151
  br label %164

164:                                              ; preds = %163, %121
  br label %165

165:                                              ; preds = %164, %113
  %166 = load i64*, i64** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @input, i32 0, i32 0), align 8
  %167 = load i32, i32* %1, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %166, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @NO_DEVICE, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %165
  %174 = load i32, i32* %2, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %2, align 4
  br label %176

176:                                              ; preds = %173, %165
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %1, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %1, align 4
  br label %109

180:                                              ; preds = %109
  %181 = load i64, i64* @system_hw, align 8
  %182 = load i64, i64* @SYSTEM_MCD, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %213

184:                                              ; preds = %180
  %185 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 5), align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %212

187:                                              ; preds = %184
  %188 = load i32, i32* @CD_access_off_png, align 4
  %189 = call i8* @gxTextureOpenPNG(i32 %188, i32 0)
  %190 = load i8***, i8**** @cd_leds, align 8
  %191 = getelementptr inbounds i8**, i8*** %190, i64 0
  %192 = load i8**, i8*** %191, align 8
  %193 = getelementptr inbounds i8*, i8** %192, i64 0
  store i8* %189, i8** %193, align 8
  %194 = load i32, i32* @CD_access_on_png, align 4
  %195 = call i8* @gxTextureOpenPNG(i32 %194, i32 0)
  %196 = load i8***, i8**** @cd_leds, align 8
  %197 = getelementptr inbounds i8**, i8*** %196, i64 0
  %198 = load i8**, i8*** %197, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i64 1
  store i8* %195, i8** %199, align 8
  %200 = load i32, i32* @CD_ready_off_png, align 4
  %201 = call i8* @gxTextureOpenPNG(i32 %200, i32 0)
  %202 = load i8***, i8**** @cd_leds, align 8
  %203 = getelementptr inbounds i8**, i8*** %202, i64 1
  %204 = load i8**, i8*** %203, align 8
  %205 = getelementptr inbounds i8*, i8** %204, i64 0
  store i8* %201, i8** %205, align 8
  %206 = load i32, i32* @CD_ready_on_png, align 4
  %207 = call i8* @gxTextureOpenPNG(i32 %206, i32 0)
  %208 = load i8***, i8**** @cd_leds, align 8
  %209 = getelementptr inbounds i8**, i8*** %208, i64 1
  %210 = load i8**, i8*** %209, align 8
  %211 = getelementptr inbounds i8*, i8** %210, i64 1
  store i8* %207, i8** %211, align 8
  br label %212

212:                                              ; preds = %187, %184
  br label %213

213:                                              ; preds = %212, %180
  %214 = call i32 @gxResetRendering(i32 0)
  store i64 0, i64* @video_sync, align 8
  %215 = call i32 (...) @VIDEO_WaitVSync()
  ret void
}

declare dso_local i32 @VIDEO_SetPostRetraceCallback(i32) #1

declare dso_local i32 @VIDEO_Flush(...) #1

declare dso_local i64 @memalign(i32, i32) #1

declare dso_local i32 @sms_ntsc_init(i32*, i32*) #1

declare dso_local i32 @md_ntsc_init(i32*, i32*) #1

declare dso_local i8* @gxTextureOpenPNG(i32, i32) #1

declare dso_local i32 @gxResetRendering(i32) #1

declare dso_local i32 @VIDEO_WaitVSync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
