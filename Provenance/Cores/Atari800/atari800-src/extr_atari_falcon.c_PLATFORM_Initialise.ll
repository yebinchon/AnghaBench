; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_falcon.c_PLATFORM_Initialise.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_falcon.c_PLATFORM_Initialise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"-interlace\00", align 1
@skip_N_frames = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"-joyswap\00", align 1
@joyswap = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"-videl\00", align 1
@force_videl = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"-double\00", align 1
@NOVA_double_size = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"-delta\00", align 1
@delta_screen = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"\09-interlace x  Generate Falcon screen only every X frame\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"\09-joyswap      Exchange joysticks\0A\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"\09-videl        direct VIDEL programming (Falcon/VGA only)\0A\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"\09-delta        delta screen output (differences only)\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Missing argument for '%s'\00", align 1
@Colours_table = common dso_local global i32* null, align 8
@f030coltable = common dso_local global i32* null, align 8
@RGBcoltable = common dso_local global i32* null, align 8
@coltable = common dso_local global i32** null, align 8
@TT030 = common dso_local global i64 0, align 8
@video_hw = common dso_local global i64 0, align 8
@F030 = common dso_local global i64 0, align 8
@Milan = common dso_local global i64 0, align 8
@bitplanes = common dso_local global i32 0, align 4
@UNKNOWN = common dso_local global i64 0, align 8
@NOVA_xcb = common dso_local global %struct.TYPE_2__* null, align 8
@M_OFF = common dso_local global i32 0, align 4
@WF_WORKXYWH = common dso_local global i32 0, align 4
@gl_vdi_handle = common dso_local global i32 0, align 4
@HOST_WIDTH = common dso_local global i32 0, align 4
@HOST_HEIGHT = common dso_local global i64 0, align 8
@HOST_PLANES = common dso_local global i32 0, align 4
@original_videl_settings = common dso_local global i64 0, align 8
@p_str_p = common dso_local global i32* null, align 8
@save_r = common dso_local global i32 0, align 4
@Screen_HEIGHT = common dso_local global i64 0, align 8
@new_videoram = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [42 x i8] c"[1][Error allocating video memory ][ OK ]\00", align 1
@reprogram_VIDEL = common dso_local global i32 0, align 4
@screenw = common dso_local global i32 0, align 4
@vramw = common dso_local global i32 0, align 4
@screenh = common dso_local global i64 0, align 8
@vramh = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [99 x i8] c"[1][Atari800 emulator needs 320x240|or higher res. in 256 colors.|Or use the -videl switch.][ OK ]\00", align 1
@.str.13 = private unnamed_addr constant [73 x i8] c"[1][Atari800 emulator needs 320x240|or higher res. in 256 colors.][ OK ]\00", align 1
@BEG_UPDATE = common dso_local global i32 0, align 4
@Original_Log_base = common dso_local global i32 0, align 4
@Original_Phys_base = common dso_local global i32 0, align 4
@key_tab = common dso_local global i32 0, align 4
@Clocky_SSval = common dso_local global i32 0, align 4
@NOVA_SSval = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PLATFORM_Initialise(i32* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [11 x i32], align 16
  %9 = alloca [57 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %24

24:                                               ; preds = %138, %2
  %25 = load i32, i32* %6, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %141

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %31, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %19, align 4
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %20, align 4
  %37 = load i8**, i8*** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %29
  %45 = load i32, i32* %19, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i8**, i8*** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %48, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @Util_sscandec(i8* %53)
  store i32 %54, i32* @skip_N_frames, align 4
  br label %57

55:                                               ; preds = %44
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %20, align 4
  br label %57

57:                                               ; preds = %55, %47
  br label %126

58:                                               ; preds = %29
  %59 = load i8**, i8*** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* @joyswap, align 4
  br label %125

68:                                               ; preds = %58
  %69 = load i8**, i8*** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i32, i32* @TRUE, align 4
  store i32 %77, i32* @force_videl, align 4
  br label %124

78:                                               ; preds = %68
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i32, i32* @TRUE, align 4
  store i32 %87, i32* @NOVA_double_size, align 4
  br label %123

88:                                               ; preds = %78
  %89 = load i8**, i8*** %5, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @strcmp(i8* %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* @TRUE, align 4
  store i32 %97, i32* @delta_screen, align 4
  br label %122

98:                                               ; preds = %88
  %99 = load i8**, i8*** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = call i64 @strcmp(i8* %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %98
  %107 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0))
  %108 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %109 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0))
  %110 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0))
  br label %111

111:                                              ; preds = %106, %98
  %112 = load i8**, i8*** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = load i8**, i8*** %5, align 8
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i8*, i8** %117, i64 %120
  store i8* %116, i8** %121, align 8
  br label %122

122:                                              ; preds = %111, %96
  br label %123

123:                                              ; preds = %122, %86
  br label %124

124:                                              ; preds = %123, %76
  br label %125

125:                                              ; preds = %124, %66
  br label %126

126:                                              ; preds = %125, %57
  %127 = load i32, i32* %20, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = load i8**, i8*** %5, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* %134)
  %136 = load i32, i32* @FALSE, align 4
  store i32 %136, i32* %3, align 4
  br label %345

137:                                              ; preds = %126
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %6, align 4
  br label %24

141:                                              ; preds = %24
  %142 = load i32, i32* %7, align 4
  %143 = load i32*, i32** %4, align 8
  store i32 %142, i32* %143, align 4
  store i32 0, i32* %6, align 4
  br label %144

144:                                              ; preds = %219, %141
  %145 = load i32, i32* %6, align 4
  %146 = icmp slt i32 %145, 256
  br i1 %146, label %147, label %222

147:                                              ; preds = %144
  %148 = load i32*, i32** @Colours_table, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = ashr i32 %152, 18
  %154 = and i32 %153, 63
  store i32 %154, i32* %21, align 4
  %155 = load i32*, i32** @Colours_table, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = ashr i32 %159, 10
  %161 = and i32 %160, 63
  store i32 %161, i32* %22, align 4
  %162 = load i32*, i32** @Colours_table, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = ashr i32 %166, 2
  %168 = and i32 %167, 63
  store i32 %168, i32* %23, align 4
  %169 = load i32, i32* %21, align 4
  %170 = shl i32 %169, 26
  %171 = load i32, i32* %22, align 4
  %172 = shl i32 %171, 18
  %173 = or i32 %170, %172
  %174 = load i32, i32* %23, align 4
  %175 = shl i32 %174, 2
  %176 = or i32 %173, %175
  %177 = load i32*, i32** @f030coltable, align 8
  %178 = load i32, i32* %6, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  store i32 %176, i32* %180, align 4
  %181 = load i32, i32* %21, align 4
  %182 = shl i32 %181, 16
  %183 = load i32, i32* %22, align 4
  %184 = shl i32 %183, 8
  %185 = or i32 %182, %184
  %186 = load i32, i32* %23, align 4
  %187 = or i32 %185, %186
  %188 = load i32*, i32** @RGBcoltable, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  store i32 %187, i32* %191, align 4
  %192 = load i32, i32* %21, align 4
  %193 = mul nsw i32 %192, 1000
  %194 = sdiv i32 %193, 64
  %195 = load i32**, i32*** @coltable, align 8
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32*, i32** %195, i64 %197
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  store i32 %194, i32* %200, align 4
  %201 = load i32, i32* %22, align 4
  %202 = mul nsw i32 %201, 1000
  %203 = sdiv i32 %202, 64
  %204 = load i32**, i32*** @coltable, align 8
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32*, i32** %204, i64 %206
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 1
  store i32 %203, i32* %209, align 4
  %210 = load i32, i32* %23, align 4
  %211 = mul nsw i32 %210, 1000
  %212 = sdiv i32 %211, 64
  %213 = load i32**, i32*** @coltable, align 8
  %214 = load i32, i32* %6, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32*, i32** %213, i64 %215
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 2
  store i32 %212, i32* %218, align 4
  br label %219

219:                                              ; preds = %147
  %220 = load i32, i32* %6, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %6, align 4
  br label %144

222:                                              ; preds = %144
  %223 = call i64 (i8, ...) @get_cookie(i8 signext 79, i32* %18)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %222
  store i32 0, i32* %18, align 4
  br label %226

226:                                              ; preds = %225, %222
  %227 = load i32, i32* %18, align 4
  %228 = ashr i32 %227, 16
  switch i32 %228, label %236 [
    i32 2, label %229
    i32 3, label %231
    i32 4, label %233
  ]

229:                                              ; preds = %226
  %230 = load i64, i64* @TT030, align 8
  store i64 %230, i64* @video_hw, align 8
  br label %239

231:                                              ; preds = %226
  %232 = load i64, i64* @F030, align 8
  store i64 %232, i64* @video_hw, align 8
  br label %239

233:                                              ; preds = %226
  %234 = load i64, i64* @Milan, align 8
  store i64 %234, i64* @video_hw, align 8
  %235 = load i32, i32* @FALSE, align 4
  store i32 %235, i32* @bitplanes, align 4
  br label %239

236:                                              ; preds = %226
  %237 = load i64, i64* @UNKNOWN, align 8
  store i64 %237, i64* @video_hw, align 8
  %238 = load i32, i32* @FALSE, align 4
  store i32 %238, i32* @bitplanes, align 4
  br label %239

239:                                              ; preds = %236, %233, %231, %229
  %240 = call i64 (i8, ...) @get_cookie(i8 signext 65, %struct.TYPE_2__** @NOVA_xcb)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %239
  %243 = load i32, i32* @FALSE, align 4
  store i32 %243, i32* @bitplanes, align 4
  br label %250

244:                                              ; preds = %239
  %245 = call i64 (i8, ...) @get_cookie(i8 signext 73, i8* null)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %244
  %248 = load i32, i32* @FALSE, align 4
  store i32 %248, i32* @bitplanes, align 4
  br label %249

249:                                              ; preds = %247, %244
  br label %250

250:                                              ; preds = %249, %242
  %251 = call i32 (...) @appl_init()
  %252 = load i32, i32* @M_OFF, align 4
  %253 = call i32 @graf_mouse(i32 %252, i32* null)
  %254 = load i32, i32* @WF_WORKXYWH, align 4
  %255 = call i32 @wind_get(i32 0, i32 %254, i32* %10, i32* %11, i32* %12, i32* %13)
  %256 = call i32 @graf_handle(i32* %14, i32* %15, i32* %16, i32* %17)
  store i32 %256, i32* @gl_vdi_handle, align 4
  %257 = call i32 (...) @Getrez()
  %258 = add nsw i32 %257, 2
  %259 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 0
  store i32 %258, i32* %259, align 16
  store i32 1, i32* %6, align 4
  br label %260

260:                                              ; preds = %264, %250
  %261 = load i32, i32* %6, align 4
  %262 = icmp slt i32 %261, 10
  br i1 %262, label %263, label %269

263:                                              ; preds = %260
  br label %264

264:                                              ; preds = %263
  %265 = load i32, i32* %6, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %6, align 4
  %267 = sext i32 %265 to i64
  %268 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 %267
  store i32 1, i32* %268, align 4
  br label %260

269:                                              ; preds = %260
  %270 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 10
  store i32 2, i32* %270, align 8
  %271 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 0
  %272 = getelementptr inbounds [57 x i32], [57 x i32]* %9, i64 0, i64 0
  %273 = call i32 @v_opnvwk(i32* %271, i32* @gl_vdi_handle, i32* %272)
  %274 = getelementptr inbounds [57 x i32], [57 x i32]* %9, i64 0, i64 0
  %275 = load i32, i32* %274, align 16
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* @HOST_WIDTH, align 4
  %277 = getelementptr inbounds [57 x i32], [57 x i32]* %9, i64 0, i64 1
  %278 = load i32, i32* %277, align 4
  %279 = add nsw i32 %278, 1
  %280 = sext i32 %279 to i64
  store i64 %280, i64* @HOST_HEIGHT, align 8
  %281 = load i32, i32* @gl_vdi_handle, align 4
  %282 = getelementptr inbounds [57 x i32], [57 x i32]* %9, i64 0, i64 0
  %283 = call i32 @vq_extnd(i32 %281, i32 1, i32* %282)
  %284 = getelementptr inbounds [57 x i32], [57 x i32]* %9, i64 0, i64 4
  %285 = load i32, i32* %284, align 16
  store i32 %285, i32* @HOST_PLANES, align 4
  %286 = load i32, i32* @force_videl, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %308

288:                                              ; preds = %269
  %289 = load i64, i64* @video_hw, align 8
  %290 = load i64, i64* @F030, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %308

292:                                              ; preds = %288
  %293 = load i32, i32* @TRUE, align 4
  store i32 %293, i32* @bitplanes, align 4
  %294 = load i64, i64* @original_videl_settings, align 8
  %295 = inttoptr i64 %294 to i32*
  store i32* %295, i32** @p_str_p, align 8
  %296 = load i32, i32* @save_r, align 4
  %297 = call i32 @Supexec(i32 %296)
  %298 = load i64, i64* @Screen_HEIGHT, align 8
  %299 = mul i64 336, %298
  %300 = call i64 @Mxalloc(i64 %299, i32 0)
  %301 = inttoptr i64 %300 to i32*
  store i32* %301, i32** @new_videoram, align 8
  %302 = icmp eq i32* %301, null
  br i1 %302, label %303, label %306

303:                                              ; preds = %292
  %304 = call i32 @form_alert(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  %305 = call i32 @exit(i32 -1) #3
  unreachable

306:                                              ; preds = %292
  store i32 1, i32* @reprogram_VIDEL, align 4
  store i32 336, i32* @screenw, align 4
  store i32 336, i32* @vramw, align 4
  %307 = load i64, i64* @Screen_HEIGHT, align 8
  store i64 %307, i64* @screenh, align 8
  store i64 %307, i64* @vramh, align 8
  br label %333

308:                                              ; preds = %288, %269
  %309 = load i32, i32* @HOST_PLANES, align 4
  %310 = icmp eq i32 %309, 8
  br i1 %310, label %311, label %322

311:                                              ; preds = %308
  %312 = load i32, i32* @HOST_WIDTH, align 4
  %313 = icmp sge i32 %312, 320
  br i1 %313, label %314, label %322

314:                                              ; preds = %311
  %315 = load i64, i64* @HOST_HEIGHT, align 8
  %316 = load i64, i64* @Screen_HEIGHT, align 8
  %317 = icmp uge i64 %315, %316
  br i1 %317, label %318, label %322

318:                                              ; preds = %314
  %319 = load i32, i32* @HOST_WIDTH, align 4
  store i32 %319, i32* @vramw, align 4
  %320 = load i64, i64* @HOST_HEIGHT, align 8
  store i64 %320, i64* @vramh, align 8
  store i32 320, i32* @screenw, align 4
  %321 = load i64, i64* @Screen_HEIGHT, align 8
  store i64 %321, i64* @screenh, align 8
  br label %332

322:                                              ; preds = %314, %311, %308
  %323 = load i64, i64* @video_hw, align 8
  %324 = load i64, i64* @F030, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %326, label %328

326:                                              ; preds = %322
  %327 = call i32 @form_alert(i32 1, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.12, i64 0, i64 0))
  br label %330

328:                                              ; preds = %322
  %329 = call i32 @form_alert(i32 1, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i64 0, i64 0))
  br label %330

330:                                              ; preds = %328, %326
  %331 = call i32 @exit(i32 -1) #3
  unreachable

332:                                              ; preds = %318
  br label %333

333:                                              ; preds = %332, %306
  %334 = load i32, i32* @gl_vdi_handle, align 4
  %335 = call i32 @v_clrwk(i32 %334)
  %336 = load i32, i32* @BEG_UPDATE, align 4
  %337 = call i32 @wind_update(i32 %336)
  %338 = call i32 (...) @save_original_colors()
  %339 = call i32 (...) @Logbase()
  store i32 %339, i32* @Original_Log_base, align 4
  %340 = call i32 (...) @Physbase()
  store i32 %340, i32* @Original_Phys_base, align 4
  %341 = call i32 @Keytbl(i32 -1, i32 -1, i32 -1)
  store i32 %341, i32* @key_tab, align 4
  %342 = call i32 (...) @CPU_Initialise()
  %343 = call i32 (...) @SetupEmulatedEnvironment()
  %344 = load i32, i32* @TRUE, align 4
  store i32 %344, i32* %3, align 4
  br label %345

345:                                              ; preds = %333, %129
  %346 = load i32, i32* %3, align 4
  ret i32 %346
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @Util_sscandec(i8*) #1

declare dso_local i32 @Log_print(i8*, ...) #1

declare dso_local i64 @get_cookie(i8 signext, ...) #1

declare dso_local i32 @appl_init(...) #1

declare dso_local i32 @graf_mouse(i32, i32*) #1

declare dso_local i32 @wind_get(i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @graf_handle(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @Getrez(...) #1

declare dso_local i32 @v_opnvwk(i32*, i32*, i32*) #1

declare dso_local i32 @vq_extnd(i32, i32, i32*) #1

declare dso_local i32 @Supexec(i32) #1

declare dso_local i64 @Mxalloc(i64, i32) #1

declare dso_local i32 @form_alert(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @v_clrwk(i32) #1

declare dso_local i32 @wind_update(i32) #1

declare dso_local i32 @save_original_colors(...) #1

declare dso_local i32 @Logbase(...) #1

declare dso_local i32 @Physbase(...) #1

declare dso_local i32 @Keytbl(i32, i32, i32) #1

declare dso_local i32 @CPU_Initialise(...) #1

declare dso_local i32 @SetupEmulatedEnvironment(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
