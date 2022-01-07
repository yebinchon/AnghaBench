; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gx_gfx.c_gx_set_video_mode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gx_gfx.c_gx_set_video_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32*, i8*, i8*, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32 }

@g_draw_done = common dso_local global i32 0, align 4
@VI_MAX_WIDTH_PAL = common dso_local global i32 0, align 4
@VI_MAX_HEIGHT_PAL = common dso_local global i32 0, align 4
@max_height = common dso_local global i32 0, align 4
@VI_MAX_WIDTH_MPAL = common dso_local global i32 0, align 4
@VI_MAX_HEIGHT_MPAL = common dso_local global i32 0, align 4
@VI_MAX_WIDTH_EURGB60 = common dso_local global i32 0, align 4
@VI_MAX_HEIGHT_EURGB60 = common dso_local global i32 0, align 4
@VI_NTSC = common dso_local global i32 0, align 4
@VI_MAX_WIDTH_NTSC = common dso_local global i32 0, align 4
@VI_MAX_HEIGHT_NTSC = common dso_local global i32 0, align 4
@VI_NON_INTERLACE = common dso_local global i32 0, align 4
@VI_PROGRESSIVE = common dso_local global i32 0, align 4
@VI_INTERLACE = common dso_local global i32 0, align 4
@gx_mode = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@gx_system_xOrigin = common dso_local global i64 0, align 8
@gx_used_system_xOrigin = common dso_local global i32 0, align 4
@gx_xOrigin = common dso_local global i32 0, align 4
@gx_yOrigin = common dso_local global i32 0, align 4
@gx_xOriginNeg = common dso_local global i32 0, align 4
@gx_xOriginPos = common dso_local global i32 0, align 4
@gx_yOriginNeg = common dso_local global i32 0, align 4
@gx_yOriginPos = common dso_local global i32 0, align 4
@VI_XFBMODE_DF = common dso_local global i32 0, align 4
@VI_XFBMODE_SF = common dso_local global i32 0, align 4
@GX_FALSE = common dso_local global i8* null, align 8
@GX_TRUE = common dso_local global i32 0, align 4
@__const.gx_set_video_mode.color = private unnamed_addr constant %struct.TYPE_20__ { i32 0, i32 0, i32 0, i32 255 }, align 4
@GX_MAX_Z24 = common dso_local global i32 0, align 4
@GX_ENABLE = common dso_local global i32 0, align 4
@GX_DISABLE = common dso_local global i32 0, align 4
@GX_PF_RGB8_Z24 = common dso_local global i32 0, align 4
@GX_ZC_LINEAR = common dso_local global i32 0, align 4
@COLOR_BLACK = common dso_local global i32 0, align 4
@g_current_framebuf = common dso_local global i64 0, align 8
@retrace_callback = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"[GX]: Resolution: %dx%d (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"interlaced\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"progressive\00", align 1
@RARCH_DRIVER_CTL_SET_REFRESH_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32)* @gx_set_video_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gx_set_video_mode(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_18__*, align 8
  %25 = alloca %struct.TYPE_17__*, align 8
  %26 = alloca %struct.TYPE_19__, align 4
  %27 = alloca %struct.TYPE_20__, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store float 0.000000e+00, float* %21, align 4
  store i64 0, i64* %22, align 8
  store i64 0, i64* %23, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %24, align 8
  %30 = call %struct.TYPE_17__* (...) @config_get_ptr()
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %25, align 8
  %31 = call i32 @VIDEO_SetPostRetraceCallback(i32* null)
  store i32 0, i32* @g_draw_done, align 4
  br label %32

32:                                               ; preds = %34, %4
  %33 = call i32 (...) @VIDEO_WaitVSync()
  br label %34

34:                                               ; preds = %32
  %35 = call i32 (...) @VIDEO_GetNextField()
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br i1 %37, label %32, label %38

38:                                               ; preds = %34
  %39 = call i32 @VIDEO_SetBlack(i32 1)
  %40 = call i32 (...) @VIDEO_Flush()
  store i32 1, i32* %13, align 4
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %14, align 4
  %45 = call i32 (...) @VIDEO_HaveComponentCable()
  store i32 %45, i32* %11, align 4
  %46 = call i32 (...) @VIDEO_GetCurrentTvMode()
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  switch i32 %47, label %57 [
    i32 128, label %48
    i32 129, label %51
    i32 130, label %54
  ]

48:                                               ; preds = %38
  %49 = load i32, i32* @VI_MAX_WIDTH_PAL, align 4
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* @VI_MAX_HEIGHT_PAL, align 4
  store i32 %50, i32* @max_height, align 4
  br label %61

51:                                               ; preds = %38
  %52 = load i32, i32* @VI_MAX_WIDTH_MPAL, align 4
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* @VI_MAX_HEIGHT_MPAL, align 4
  store i32 %53, i32* @max_height, align 4
  br label %61

54:                                               ; preds = %38
  %55 = load i32, i32* @VI_MAX_WIDTH_EURGB60, align 4
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* @VI_MAX_HEIGHT_EURGB60, align 4
  store i32 %56, i32* @max_height, align 4
  br label %61

57:                                               ; preds = %38
  %58 = load i32, i32* @VI_NTSC, align 4
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* @VI_MAX_WIDTH_NTSC, align 4
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* @VI_MAX_HEIGHT_NTSC, align 4
  store i32 %60, i32* @max_height, align 4
  br label %61

61:                                               ; preds = %57, %54, %51, %48
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64, %61
  %68 = call i32 @VIDEO_GetPreferredMode(%struct.TYPE_19__* %26)
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %6, align 4
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %67, %64
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @max_height, align 4
  %76 = sdiv i32 %75, 2
  %77 = icmp ule i32 %74, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @VI_NON_INTERLACE, align 4
  store i32 %79, i32* %12, align 4
  store i32 2, i32* %13, align 4
  br label %89

80:                                               ; preds = %73
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* @VI_PROGRESSIVE, align 4
  br label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @VI_INTERLACE, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %87, %78
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @max_height, align 4
  %92 = icmp ugt i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* @max_height, align 4
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %93, %89
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp ugt i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32, i32* %16, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %99, %95
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @VI_TVMODE(i32 %102, i32 %103)
  store i32 %104, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 0), align 8
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 1), align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @MIN(i32 %106, i32 480)
  store i32 %107, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 2), align 8
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @VI_NON_INTERLACE, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %101
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @max_height, align 4
  %114 = sdiv i32 %113, 2
  %115 = icmp ugt i32 %112, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* @max_height, align 4
  %118 = sdiv i32 %117, 2
  store i32 %118, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 3), align 4
  br label %132

119:                                              ; preds = %111, %101
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* @VI_NON_INTERLACE, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @max_height, align 4
  %126 = icmp ugt i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* @max_height, align 4
  store i32 %128, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 3), align 4
  br label %131

129:                                              ; preds = %123, %119
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 3), align 4
  br label %131

131:                                              ; preds = %129, %127
  br label %132

132:                                              ; preds = %131, %116
  %133 = load i32, i32* %14, align 4
  store i32 %133, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 4), align 8
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 3), align 4
  %135 = load i32, i32* %13, align 4
  %136 = mul i32 %134, %135
  store i32 %136, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 5), align 4
  %137 = load i64, i64* @gx_system_xOrigin, align 8
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* @gx_used_system_xOrigin, align 4
  %139 = load i32, i32* @gx_used_system_xOrigin, align 4
  %140 = icmp ugt i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %132
  br label %142

142:                                              ; preds = %147, %141
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* @gx_used_system_xOrigin, align 4
  %145 = add i32 %143, %144
  %146 = icmp ugt i32 %145, 720
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i32, i32* @gx_used_system_xOrigin, align 4
  %149 = add i32 %148, -1
  store i32 %149, i32* @gx_used_system_xOrigin, align 4
  br label %142

150:                                              ; preds = %142
  br label %165

151:                                              ; preds = %132
  %152 = load i32, i32* @gx_used_system_xOrigin, align 4
  %153 = icmp ult i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %151
  br label %155

155:                                              ; preds = %160, %154
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* @gx_used_system_xOrigin, align 4
  %158 = add i32 %156, %157
  %159 = icmp ugt i32 %158, 720
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load i32, i32* @gx_used_system_xOrigin, align 4
  %162 = add i32 %161, 1
  store i32 %162, i32* @gx_used_system_xOrigin, align 4
  br label %155

163:                                              ; preds = %155
  br label %164

164:                                              ; preds = %163, %151
  br label %165

165:                                              ; preds = %164, %150
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 4), align 8
  %168 = sub i32 %166, %167
  %169 = udiv i32 %168, 2
  store i32 %169, i32* %9, align 4
  %170 = load i64, i64* @gx_system_xOrigin, align 8
  %171 = icmp sgt i64 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %165
  br label %173

173:                                              ; preds = %178, %172
  %174 = load i32, i32* %9, align 4
  %175 = call i64 @gx_isValidXOrigin(i32 %174)
  %176 = icmp ne i64 %175, 0
  %177 = xor i1 %176, true
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %9, align 4
  br label %173

181:                                              ; preds = %173
  br label %196

182:                                              ; preds = %165
  %183 = load i64, i64* @gx_system_xOrigin, align 8
  %184 = icmp slt i64 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %182
  br label %186

186:                                              ; preds = %191, %185
  %187 = load i32, i32* %9, align 4
  %188 = call i64 @gx_isValidXOrigin(i32 %187)
  %189 = icmp ne i64 %188, 0
  %190 = xor i1 %189, true
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = load i32, i32* %9, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %9, align 4
  br label %186

194:                                              ; preds = %186
  br label %195

195:                                              ; preds = %194, %182
  br label %196

196:                                              ; preds = %195, %181
  %197 = load i32, i32* %9, align 4
  store i32 %197, i32* @gx_xOrigin, align 4
  store i32 %197, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 6), align 8
  %198 = load i32, i32* @max_height, align 4
  %199 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 5), align 4
  %200 = sub i32 %198, %199
  %201 = load i32, i32* %13, align 4
  %202 = mul i32 2, %201
  %203 = udiv i32 %200, %202
  store i32 %203, i32* @gx_yOrigin, align 4
  store i32 %203, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 7), align 4
  store i32 0, i32* @gx_xOriginNeg, align 4
  store i32 0, i32* @gx_xOriginPos, align 4
  br label %204

204:                                              ; preds = %211, %196
  %205 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 6), align 8
  %206 = load i32, i32* @gx_xOriginNeg, align 4
  %207 = sub nsw i32 %206, 1
  %208 = add nsw i32 %205, %207
  %209 = call i64 @gx_isValidXOrigin(i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %204
  %212 = load i32, i32* @gx_xOriginNeg, align 4
  %213 = add nsw i32 %212, -1
  store i32 %213, i32* @gx_xOriginNeg, align 4
  br label %204

214:                                              ; preds = %204
  br label %215

215:                                              ; preds = %222, %214
  %216 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 6), align 8
  %217 = load i32, i32* @gx_xOriginPos, align 4
  %218 = add nsw i32 %217, 1
  %219 = add nsw i32 %216, %218
  %220 = call i64 @gx_isValidXOrigin(i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %215
  %223 = load i32, i32* @gx_xOriginPos, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* @gx_xOriginPos, align 4
  br label %215

225:                                              ; preds = %215
  store i32 0, i32* @gx_yOriginNeg, align 4
  store i32 0, i32* @gx_yOriginPos, align 4
  br label %226

226:                                              ; preds = %233, %225
  %227 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 7), align 4
  %228 = load i32, i32* @gx_yOriginNeg, align 4
  %229 = sub nsw i32 %228, 1
  %230 = add nsw i32 %227, %229
  %231 = call i64 @gx_isValidYOrigin(i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %226
  %234 = load i32, i32* @gx_yOriginNeg, align 4
  %235 = add nsw i32 %234, -1
  store i32 %235, i32* @gx_yOriginNeg, align 4
  br label %226

236:                                              ; preds = %226
  br label %237

237:                                              ; preds = %244, %236
  %238 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 7), align 4
  %239 = load i32, i32* @gx_yOriginPos, align 4
  %240 = add nsw i32 %239, 1
  %241 = add nsw i32 %238, %240
  %242 = call i64 @gx_isValidYOrigin(i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %237
  %245 = load i32, i32* @gx_yOriginPos, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* @gx_yOriginPos, align 4
  br label %237

247:                                              ; preds = %237
  %248 = load i32, i32* %12, align 4
  %249 = load i32, i32* @VI_INTERLACE, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %247
  %252 = load i32, i32* @VI_XFBMODE_DF, align 4
  br label %255

253:                                              ; preds = %247
  %254 = load i32, i32* @VI_XFBMODE_SF, align 4
  br label %255

255:                                              ; preds = %253, %251
  %256 = phi i32 [ %252, %251 ], [ %254, %253 ]
  store i32 %256, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 12), align 8
  %257 = load i8*, i8** @GX_FALSE, align 8
  store i8* %257, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 10), align 8
  %258 = load i8*, i8** @GX_FALSE, align 8
  store i8* %258, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 11), align 8
  store i32 0, i32* %17, align 4
  br label %259

259:                                              ; preds = %275, %255
  %260 = load i32, i32* %17, align 4
  %261 = icmp ult i32 %260, 12
  br i1 %261, label %262, label %278

262:                                              ; preds = %259
  %263 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 8), align 8
  %264 = load i32, i32* %17, align 4
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds i32*, i32** %263, i64 %265
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 1
  store i32 6, i32* %268, align 4
  %269 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 8), align 8
  %270 = load i32, i32* %17, align 4
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds i32*, i32** %269, i64 %271
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 0
  store i32 6, i32* %274, align 4
  br label %275

275:                                              ; preds = %262
  %276 = load i32, i32* %17, align 4
  %277 = add i32 %276, 1
  store i32 %277, i32* %17, align 4
  br label %259

278:                                              ; preds = %259
  %279 = load i32, i32* %12, align 4
  %280 = load i32, i32* @VI_NON_INTERLACE, align 4
  %281 = icmp ne i32 %279, %280
  br i1 %281, label %282, label %303

282:                                              ; preds = %278
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %303

288:                                              ; preds = %282
  %289 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 9), align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 0
  store i32 8, i32* %290, align 4
  %291 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 9), align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 1
  store i32 8, i32* %292, align 4
  %293 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 9), align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 2
  store i32 10, i32* %294, align 4
  %295 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 9), align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 3
  store i32 12, i32* %296, align 4
  %297 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 9), align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 4
  store i32 10, i32* %298, align 4
  %299 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 9), align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 5
  store i32 8, i32* %300, align 4
  %301 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 9), align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 6
  store i32 8, i32* %302, align 4
  br label %318

303:                                              ; preds = %282, %278
  %304 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 9), align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 0
  store i32 0, i32* %305, align 4
  %306 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 9), align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 1
  store i32 0, i32* %307, align 4
  %308 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 9), align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 2
  store i32 21, i32* %309, align 4
  %310 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 9), align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 3
  store i32 22, i32* %311, align 4
  %312 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 9), align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 4
  store i32 21, i32* %313, align 4
  %314 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 9), align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 5
  store i32 0, i32* %315, align 4
  %316 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 9), align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 6
  store i32 0, i32* %317, align 4
  br label %318

318:                                              ; preds = %303, %288
  %319 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 1), align 4
  %320 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %321 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %320, i32 0, i32 3
  %322 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %321, i32 0, i32 0
  store i32 %319, i32* %322, align 8
  %323 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 3), align 4
  %324 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %325 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %324, i32 0, i32 3
  %326 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %325, i32 0, i32 1
  store i32 %323, i32* %326, align 4
  %327 = load i32, i32* %12, align 4
  %328 = load i32, i32* @VI_NON_INTERLACE, align 4
  %329 = icmp eq i32 %327, %328
  %330 = zext i1 %329 to i32
  %331 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %332 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %331, i32 0, i32 0
  store i32 %330, i32* %332, align 8
  %333 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %333, i32 0, i32 1
  store i32 1, i32* %334, align 4
  %335 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 2), align 8
  %336 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %337 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = icmp ne i32 %338, 0
  %340 = zext i1 %339 to i64
  %341 = select i1 %339, i32 1, i32 2
  %342 = sdiv i32 %335, %341
  %343 = and i32 %342, -4
  store i32 %343, i32* %20, align 4
  %344 = load i32, i32* %20, align 4
  %345 = icmp ugt i32 %344, 240
  br i1 %345, label %346, label %347

346:                                              ; preds = %318
  store i32 240, i32* %20, align 4
  br label %347

347:                                              ; preds = %346, %318
  %348 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %349 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  switch i32 %351, label %374 [
    i32 132, label %352
    i32 131, label %352
    i32 134, label %363
    i32 133, label %363
  ]

352:                                              ; preds = %347, %347
  %353 = load i32, i32* %20, align 4
  %354 = icmp eq i32 %353, 240
  br i1 %354, label %355, label %356

355:                                              ; preds = %352
  store i32 424, i32* %19, align 4
  br label %362

356:                                              ; preds = %352
  %357 = load i32, i32* %20, align 4
  %358 = uitofp i32 %357 to float
  %359 = fmul float 0x3FFC71C720000000, %358
  %360 = fptoui float %359 to i32
  %361 = and i32 %360, -4
  store i32 %361, i32* %19, align 4
  br label %362

362:                                              ; preds = %356, %355
  br label %385

363:                                              ; preds = %347, %347
  %364 = load i32, i32* %20, align 4
  %365 = icmp eq i32 %364, 240
  br i1 %365, label %366, label %367

366:                                              ; preds = %363
  store i32 384, i32* %19, align 4
  br label %373

367:                                              ; preds = %363
  %368 = load i32, i32* %20, align 4
  %369 = uitofp i32 %368 to float
  %370 = fmul float 0x3FF99999A0000000, %369
  %371 = fptoui float %370 to i32
  %372 = and i32 %371, -4
  store i32 %372, i32* %19, align 4
  br label %373

373:                                              ; preds = %367, %366
  br label %385

374:                                              ; preds = %347
  %375 = load i32, i32* %20, align 4
  %376 = icmp eq i32 %375, 240
  br i1 %376, label %377, label %378

377:                                              ; preds = %374
  store i32 320, i32* %19, align 4
  br label %384

378:                                              ; preds = %374
  %379 = load i32, i32* %20, align 4
  %380 = uitofp i32 %379 to float
  %381 = fmul float 0x3FF5555560000000, %380
  %382 = fptoui float %381 to i32
  %383 = and i32 %382, -4
  store i32 %383, i32* %19, align 4
  br label %384

384:                                              ; preds = %378, %377
  br label %385

385:                                              ; preds = %384, %373, %362
  %386 = load i32, i32* %19, align 4
  %387 = icmp ugt i32 %386, 424
  br i1 %387, label %388, label %389

388:                                              ; preds = %385
  store i32 424, i32* %19, align 4
  br label %389

389:                                              ; preds = %388, %385
  %390 = load i32, i32* %19, align 4
  %391 = mul i32 %390, 2
  %392 = zext i32 %391 to i64
  store i64 %392, i64* %18, align 8
  %393 = load i32, i32* %19, align 4
  %394 = call i32 @menu_display_set_width(i32 %393)
  %395 = load i32, i32* %20, align 4
  %396 = call i32 @menu_display_set_height(i32 %395)
  %397 = load i64, i64* %18, align 8
  %398 = call i32 @menu_display_set_framebuffer_pitch(i64 %397)
  %399 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 1), align 4
  %400 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 2), align 8
  %401 = call i32 @GX_SetViewportJitter(i32 0, i32 0, i32 %399, i32 %400, i32 0, i32 1, i32 1)
  %402 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 1), align 4
  %403 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 2), align 8
  %404 = call i32 @GX_SetDispCopySrc(i32 0, i32 0, i32 %402, i32 %403)
  %405 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 2), align 8
  %406 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 3), align 4
  %407 = call float @GX_GetYScaleFactor(i32 %405, i32 %406)
  store float %407, float* %21, align 4
  %408 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 1), align 4
  %409 = call i64 @VIDEO_PadFramebufferWidth(i32 %408)
  store i64 %409, i64* %22, align 8
  %410 = load float, float* %21, align 4
  %411 = fptosi float %410 to i32
  %412 = call i64 @GX_SetDispCopyYScale(i32 %411)
  store i64 %412, i64* %23, align 8
  %413 = load i64, i64* %22, align 8
  %414 = trunc i64 %413 to i32
  %415 = load i64, i64* %23, align 8
  %416 = trunc i64 %415 to i32
  %417 = call i32 @GX_SetDispCopyDst(i32 %414, i32 %416)
  %418 = load i8*, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 11), align 8
  %419 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 8), align 8
  %420 = load i32, i32* @GX_TRUE, align 4
  %421 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 9), align 8
  %422 = call i32 @GX_SetCopyFilter(i8* %418, i32** %419, i32 %420, i32* %421)
  %423 = bitcast %struct.TYPE_20__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %423, i8* align 4 bitcast (%struct.TYPE_20__* @__const.gx_set_video_mode.color to i8*), i64 16, i1 false)
  %424 = load i32, i32* @GX_MAX_Z24, align 4
  %425 = bitcast %struct.TYPE_20__* %27 to { i64, i64 }*
  %426 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %425, i32 0, i32 0
  %427 = load i64, i64* %426, align 4
  %428 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %425, i32 0, i32 1
  %429 = load i64, i64* %428, align 4
  %430 = call i32 @GX_SetCopyClear(i64 %427, i64 %429, i32 %424)
  %431 = load i8*, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 10), align 8
  %432 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 5), align 4
  %433 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 3), align 4
  %434 = mul nsw i32 2, %433
  %435 = icmp eq i32 %432, %434
  br i1 %435, label %436, label %438

436:                                              ; preds = %389
  %437 = load i32, i32* @GX_ENABLE, align 4
  br label %440

438:                                              ; preds = %389
  %439 = load i32, i32* @GX_DISABLE, align 4
  br label %440

440:                                              ; preds = %438, %436
  %441 = phi i32 [ %437, %436 ], [ %439, %438 ]
  %442 = call i32 @GX_SetFieldMode(i8* %431, i32 %441)
  %443 = load i32, i32* @GX_PF_RGB8_Z24, align 4
  %444 = load i32, i32* @GX_ZC_LINEAR, align 4
  %445 = call i32 @GX_SetPixelFmt(i32 %443, i32 %444)
  %446 = call i32 (...) @GX_InvalidateTexAll()
  %447 = call i32 (...) @GX_Flush()
  %448 = call i32 @VIDEO_Configure(%struct.TYPE_21__* @gx_mode)
  %449 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %450 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %449, i32 0, i32 2
  %451 = load i32*, i32** %450, align 8
  %452 = getelementptr inbounds i32, i32* %451, i64 0
  %453 = load i32, i32* %452, align 4
  %454 = load i32, i32* @COLOR_BLACK, align 4
  %455 = call i32 @VIDEO_ClearFrameBuffer(%struct.TYPE_21__* @gx_mode, i32 %453, i32 %454)
  %456 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %457 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %456, i32 0, i32 2
  %458 = load i32*, i32** %457, align 8
  %459 = getelementptr inbounds i32, i32* %458, i64 1
  %460 = load i32, i32* %459, align 4
  %461 = load i32, i32* @COLOR_BLACK, align 4
  %462 = call i32 @VIDEO_ClearFrameBuffer(%struct.TYPE_21__* @gx_mode, i32 %460, i32 %461)
  %463 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %464 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %463, i32 0, i32 2
  %465 = load i32*, i32** %464, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 0
  %467 = load i32, i32* %466, align 4
  %468 = call i32 @VIDEO_SetNextFramebuffer(i32 %467)
  store i64 0, i64* @g_current_framebuf, align 8
  %469 = load i32*, i32** @retrace_callback, align 8
  %470 = call i32 @VIDEO_SetPostRetraceCallback(i32* %469)
  %471 = call i32 @VIDEO_SetBlack(i32 0)
  %472 = call i32 (...) @VIDEO_Flush()
  %473 = call i32 (...) @VIDEO_WaitVSync()
  %474 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 1), align 4
  %475 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 2), align 8
  %476 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gx_mode, i32 0, i32 0), align 8
  %477 = and i32 %476, 3
  %478 = load i32, i32* @VI_INTERLACE, align 4
  %479 = icmp eq i32 %477, %478
  %480 = zext i1 %479 to i64
  %481 = select i1 %479, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  %482 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %474, i32 %475, i8* %481)
  %483 = load i32, i32* %15, align 4
  %484 = icmp eq i32 %483, 128
  br i1 %484, label %485, label %491

485:                                              ; preds = %440
  store float 5.000000e+01, float* %10, align 4
  %486 = load i32, i32* %12, align 4
  %487 = load i32, i32* @VI_NON_INTERLACE, align 4
  %488 = icmp eq i32 %486, %487
  br i1 %488, label %489, label %490

489:                                              ; preds = %485
  store float 0x40490A40C0000000, float* %10, align 4
  br label %490

490:                                              ; preds = %489, %485
  br label %497

491:                                              ; preds = %440
  store float 0x404DF851E0000000, float* %10, align 4
  %492 = load i32, i32* %12, align 4
  %493 = load i32, i32* @VI_NON_INTERLACE, align 4
  %494 = icmp eq i32 %492, %493
  br i1 %494, label %495, label %496

495:                                              ; preds = %491
  store float 0x404DE9BDA0000000, float* %10, align 4
  br label %496

496:                                              ; preds = %495, %491
  br label %497

497:                                              ; preds = %496, %490
  %498 = load i32, i32* @RARCH_DRIVER_CTL_SET_REFRESH_RATE, align 4
  %499 = call i32 @driver_ctl(i32 %498, float* %10)
  ret void
}

declare dso_local %struct.TYPE_17__* @config_get_ptr(...) #1

declare dso_local i32 @VIDEO_SetPostRetraceCallback(i32*) #1

declare dso_local i32 @VIDEO_WaitVSync(...) #1

declare dso_local i32 @VIDEO_GetNextField(...) #1

declare dso_local i32 @VIDEO_SetBlack(i32) #1

declare dso_local i32 @VIDEO_Flush(...) #1

declare dso_local i32 @VIDEO_HaveComponentCable(...) #1

declare dso_local i32 @VIDEO_GetCurrentTvMode(...) #1

declare dso_local i32 @VIDEO_GetPreferredMode(%struct.TYPE_19__*) #1

declare dso_local i32 @VI_TVMODE(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @gx_isValidXOrigin(i32) #1

declare dso_local i64 @gx_isValidYOrigin(i32) #1

declare dso_local i32 @menu_display_set_width(i32) #1

declare dso_local i32 @menu_display_set_height(i32) #1

declare dso_local i32 @menu_display_set_framebuffer_pitch(i64) #1

declare dso_local i32 @GX_SetViewportJitter(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GX_SetDispCopySrc(i32, i32, i32, i32) #1

declare dso_local float @GX_GetYScaleFactor(i32, i32) #1

declare dso_local i64 @VIDEO_PadFramebufferWidth(i32) #1

declare dso_local i64 @GX_SetDispCopyYScale(i32) #1

declare dso_local i32 @GX_SetDispCopyDst(i32, i32) #1

declare dso_local i32 @GX_SetCopyFilter(i8*, i32**, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @GX_SetCopyClear(i64, i64, i32) #1

declare dso_local i32 @GX_SetFieldMode(i8*, i32) #1

declare dso_local i32 @GX_SetPixelFmt(i32, i32) #1

declare dso_local i32 @GX_InvalidateTexAll(...) #1

declare dso_local i32 @GX_Flush(...) #1

declare dso_local i32 @VIDEO_Configure(%struct.TYPE_21__*) #1

declare dso_local i32 @VIDEO_ClearFrameBuffer(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @VIDEO_SetNextFramebuffer(i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, i32, i8*) #1

declare dso_local i32 @driver_ctl(i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
