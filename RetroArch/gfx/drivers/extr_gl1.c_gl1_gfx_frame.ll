; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl1.c_gl1_gfx_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl1.c_gl1_gfx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i8*, i8*, i32, i64, i32, i32 (i32, %struct.TYPE_21__*)*, i32, i32, i64, i32 (i32, %struct.TYPE_21__*)*, i64, i32, i64, i32, i32, i64, i32 (i32, i32, i32)*, i64 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i32, %struct.TYPE_20__, i64, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.font_params = type { float, float }

@gl1_video_bits = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_BLEND = common dso_local global i32 0, align 4
@GL_SRC_ALPHA = common dso_local global i32 0, align 4
@GL_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@gl1_video_width = common dso_local global i32 0, align 4
@gl1_video_height = common dso_local global i32 0, align 4
@gl1_video_pitch = common dso_local global i32 0, align 4
@gl1_video_buf = common dso_local global i8* null, align 8
@gl1_menu_frame = common dso_local global i64 0, align 8
@gl1_menu_width = common dso_local global i32 0, align 4
@gl1_menu_height = common dso_local global i32 0, align 4
@gl1_menu_pitch = common dso_local global i32 0, align 4
@gl1_menu_bits = common dso_local global i32 0, align 4
@gl1_menu_size_changed = common dso_local global i32 0, align 4
@gl1_menu_video_buf = common dso_local global i8* null, align 8
@GL_RGBA = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i8*, %struct.TYPE_21__*)* @gl1_gfx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl1_gfx_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, %struct.TYPE_21__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_21__*, align 8
  %18 = alloca %struct.TYPE_23__, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_22__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_23__, align 4
  %28 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store %struct.TYPE_21__* %7, %struct.TYPE_21__** %17, align 8
  store i8* null, i8** %19, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %29 = load i32, i32* @gl1_video_bits, align 4
  store i32 %29, i32* %22, align 4
  store i32 1, i32* %23, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %31, %struct.TYPE_22__** %24, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %33 = call i32 @gl1_context_bind_hw_render(%struct.TYPE_22__* %32, i32 0)
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 18
  store i64 0, i64* %37, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %8
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %40, %8
  store i32 1, i32* %9, align 4
  br label %445

47:                                               ; preds = %43
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %47
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  %55 = load i32, i32* %20, align 4
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %21, align 4
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 17
  %61 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %60, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 %61(i32 %64, i32 %66, i32 %68)
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 15
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 14
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @gl1_gfx_set_viewport(%struct.TYPE_22__* %70, %struct.TYPE_21__* %71, i32 %74, i32 %77, i32 0, i32 1)
  br label %79

79:                                               ; preds = %52, %47
  %80 = call i32 @glClearColor(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %81 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %82 = call i32 @glClear(i32 %81)
  %83 = load i32, i32* @GL_BLEND, align 4
  %84 = call i32 @glEnable(i32 %83)
  %85 = load i32, i32* @GL_SRC_ALPHA, align 4
  %86 = load i32, i32* @GL_ONE_MINUS_SRC_ALPHA, align 4
  %87 = call i32 @glBlendFunc(i32 %85, i32 %86)
  %88 = load i32, i32* @gl1_video_width, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %99, label %91

91:                                               ; preds = %79
  %92 = load i32, i32* @gl1_video_height, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* @gl1_video_pitch, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %126

99:                                               ; preds = %95, %91, %79
  %100 = load i32, i32* %12, align 4
  %101 = icmp ugt i32 %100, 4
  br i1 %101, label %102, label %125

102:                                              ; preds = %99
  %103 = load i32, i32* %13, align 4
  %104 = icmp ugt i32 %103, 4
  br i1 %104, label %105, label %125

105:                                              ; preds = %102
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* @gl1_video_width, align 4
  %107 = load i32, i32* %13, align 4
  store i32 %107, i32* @gl1_video_height, align 4
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* @gl1_video_pitch, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @get_pot(i32 %109)
  store i32 %110, i32* %25, align 4
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @get_pot(i32 %111)
  store i32 %112, i32* %26, align 4
  %113 = load i8*, i8** @gl1_video_buf, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %105
  %116 = load i8*, i8** @gl1_video_buf, align 8
  %117 = call i32 @free(i8* %116)
  br label %118

118:                                              ; preds = %115, %105
  %119 = load i32, i32* %25, align 4
  %120 = load i32, i32* %26, align 4
  %121 = mul i32 %119, %120
  %122 = mul i32 %121, 4
  %123 = call i64 @malloc(i32 %122)
  %124 = inttoptr i64 %123 to i8*
  store i8* %124, i8** @gl1_video_buf, align 8
  br label %125

125:                                              ; preds = %118, %102, %99
  br label %126

126:                                              ; preds = %125, %95
  %127 = load i32, i32* @gl1_video_width, align 4
  store i32 %127, i32* %20, align 4
  %128 = load i32, i32* @gl1_video_height, align 4
  store i32 %128, i32* %21, align 4
  %129 = load i32, i32* @gl1_video_pitch, align 4
  store i32 %129, i32* %15, align 4
  %130 = load i32, i32* %20, align 4
  %131 = call i32 @get_pot(i32 %130)
  store i32 %131, i32* %25, align 4
  %132 = load i32, i32* %21, align 4
  %133 = call i32 @get_pot(i32 %132)
  store i32 %133, i32* %26, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp eq i32 %134, 4
  br i1 %135, label %136, label %148

136:                                              ; preds = %126
  %137 = load i32, i32* %13, align 4
  %138 = icmp eq i32 %137, 4
  br i1 %138, label %139, label %148

139:                                              ; preds = %136
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %20, align 4
  %142 = icmp ult i32 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %21, align 4
  %146 = icmp ult i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  store i32 0, i32* %23, align 4
  br label %148

148:                                              ; preds = %147, %143, %139, %136, %126
  %149 = load i32, i32* %23, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %204

151:                                              ; preds = %148
  %152 = load i8*, i8** @gl1_video_buf, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %204

154:                                              ; preds = %151
  %155 = load i32, i32* %22, align 4
  %156 = icmp eq i32 %155, 32
  br i1 %156, label %157, label %187

157:                                              ; preds = %154
  store i32 0, i32* %28, align 4
  br label %158

158:                                              ; preds = %183, %157
  %159 = load i32, i32* %28, align 4
  %160 = load i32, i32* %21, align 4
  %161 = icmp ult i32 %159, %160
  br i1 %161, label %162, label %186

162:                                              ; preds = %158
  %163 = load i8*, i8** @gl1_video_buf, align 8
  %164 = load i32, i32* %25, align 4
  %165 = load i32, i32* %22, align 4
  %166 = udiv i32 %165, 8
  %167 = mul i32 %164, %166
  %168 = load i32, i32* %28, align 4
  %169 = mul i32 %167, %168
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %163, i64 %170
  %172 = load i8*, i8** %11, align 8
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* %28, align 4
  %175 = mul i32 %173, %174
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %172, i64 %176
  %178 = load i32, i32* %20, align 4
  %179 = load i32, i32* %22, align 4
  %180 = udiv i32 %179, 8
  %181 = mul i32 %178, %180
  %182 = call i32 @memcpy(i8* %171, i8* %177, i32 %181)
  br label %183

183:                                              ; preds = %162
  %184 = load i32, i32* %28, align 4
  %185 = add i32 %184, 1
  store i32 %185, i32* %28, align 4
  br label %158

186:                                              ; preds = %158
  br label %202

187:                                              ; preds = %154
  %188 = load i32, i32* %22, align 4
  %189 = icmp eq i32 %188, 16
  br i1 %189, label %190, label %201

190:                                              ; preds = %187
  %191 = load i8*, i8** @gl1_video_buf, align 8
  %192 = load i8*, i8** %11, align 8
  %193 = load i32, i32* %20, align 4
  %194 = load i32, i32* %21, align 4
  %195 = load i32, i32* %25, align 4
  %196 = zext i32 %195 to i64
  %197 = mul i64 %196, 4
  %198 = trunc i64 %197 to i32
  %199 = load i32, i32* %15, align 4
  %200 = call i32 @conv_rgb565_argb8888(i8* %191, i8* %192, i32 %193, i32 %194, i32 %198, i32 %199)
  br label %201

201:                                              ; preds = %190, %187
  br label %202

202:                                              ; preds = %201, %186
  %203 = load i8*, i8** @gl1_video_buf, align 8
  store i8* %203, i8** %19, align 8
  br label %204

204:                                              ; preds = %202, %151, %148
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %20, align 4
  %209 = icmp ne i32 %207, %208
  br i1 %209, label %216, label %210

210:                                              ; preds = %204
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %21, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %216, label %223

216:                                              ; preds = %210, %204
  %217 = load i32, i32* %20, align 4
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* %21, align 4
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 8
  br label %223

223:                                              ; preds = %216, %210
  %224 = call i32 @video_context_driver_get_video_size(%struct.TYPE_23__* %18)
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 3
  store i32 %226, i32* %228, align 4
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 4
  store i32 %230, i32* %232, align 8
  %233 = load i32, i32* %23, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %250

235:                                              ; preds = %223
  %236 = load i8*, i8** %19, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %238, label %249

238:                                              ; preds = %235
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %240 = load i32, i32* %25, align 4
  %241 = load i32, i32* %26, align 4
  %242 = load i32, i32* %20, align 4
  %243 = load i32, i32* %21, align 4
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %245 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %244, i32 0, i32 11
  %246 = load i32, i32* %245, align 8
  %247 = load i8*, i8** %19, align 8
  %248 = call i32 @draw_tex(%struct.TYPE_22__* %239, i32 %240, i32 %241, i32 %242, i32 %243, i32 %246, i8* %247)
  br label %249

249:                                              ; preds = %238, %235
  br label %250

250:                                              ; preds = %249, %223
  %251 = load i64, i64* @gl1_menu_frame, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %356

253:                                              ; preds = %250
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %254, i32 0, i32 16
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %356

258:                                              ; preds = %253
  store i8* null, i8** %19, align 8
  %259 = load i32, i32* @gl1_menu_width, align 4
  store i32 %259, i32* %20, align 4
  %260 = load i32, i32* @gl1_menu_height, align 4
  store i32 %260, i32* %21, align 4
  %261 = load i32, i32* @gl1_menu_pitch, align 4
  store i32 %261, i32* %15, align 4
  %262 = load i32, i32* @gl1_menu_bits, align 4
  store i32 %262, i32* %22, align 4
  %263 = load i32, i32* %20, align 4
  %264 = call i32 @get_pot(i32 %263)
  store i32 %264, i32* %25, align 4
  %265 = load i32, i32* %21, align 4
  %266 = call i32 @get_pot(i32 %265)
  store i32 %266, i32* %26, align 4
  %267 = load i32, i32* @gl1_menu_size_changed, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %258
  store i32 0, i32* @gl1_menu_size_changed, align 4
  %270 = load i8*, i8** @gl1_menu_video_buf, align 8
  %271 = icmp ne i8* %270, null
  br i1 %271, label %272, label %275

272:                                              ; preds = %269
  %273 = load i8*, i8** @gl1_menu_video_buf, align 8
  %274 = call i32 @free(i8* %273)
  store i8* null, i8** @gl1_menu_video_buf, align 8
  br label %275

275:                                              ; preds = %272, %269
  br label %276

276:                                              ; preds = %275, %258
  %277 = load i8*, i8** @gl1_menu_video_buf, align 8
  %278 = icmp ne i8* %277, null
  br i1 %278, label %286, label %279

279:                                              ; preds = %276
  %280 = load i32, i32* %25, align 4
  %281 = load i32, i32* %26, align 4
  %282 = mul i32 %280, %281
  %283 = mul i32 %282, 4
  %284 = call i64 @malloc(i32 %283)
  %285 = inttoptr i64 %284 to i8*
  store i8* %285, i8** @gl1_menu_video_buf, align 8
  br label %286

286:                                              ; preds = %279, %276
  %287 = load i32, i32* %22, align 4
  %288 = icmp eq i32 %287, 16
  br i1 %288, label %289, label %355

289:                                              ; preds = %286
  %290 = load i8*, i8** @gl1_menu_video_buf, align 8
  %291 = icmp ne i8* %290, null
  br i1 %291, label %292, label %355

292:                                              ; preds = %289
  %293 = load i8*, i8** @gl1_menu_video_buf, align 8
  %294 = load i64, i64* @gl1_menu_frame, align 8
  %295 = load i32, i32* %20, align 4
  %296 = load i32, i32* %21, align 4
  %297 = load i32, i32* %25, align 4
  %298 = zext i32 %297 to i64
  %299 = mul i64 %298, 4
  %300 = trunc i64 %299 to i32
  %301 = load i32, i32* %15, align 4
  %302 = call i32 @conv_rgba4444_argb8888(i8* %293, i64 %294, i32 %295, i32 %296, i32 %300, i32 %301)
  %303 = load i8*, i8** @gl1_menu_video_buf, align 8
  store i8* %303, i8** %19, align 8
  %304 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %305 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %304, i32 0, i32 10
  %306 = load i64, i64* %305, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %343

308:                                              ; preds = %292
  %309 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %310 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %309, i32 0, i32 15
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %313 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %312, i32 0, i32 14
  %314 = load i32, i32* %313, align 8
  %315 = call i32 @glViewport(i32 0, i32 0, i32 %311, i32 %314)
  %316 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %317 = load i32, i32* %25, align 4
  %318 = load i32, i32* %26, align 4
  %319 = load i32, i32* %20, align 4
  %320 = load i32, i32* %21, align 4
  %321 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %322 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %321, i32 0, i32 8
  %323 = load i32, i32* %322, align 8
  %324 = load i8*, i8** %19, align 8
  %325 = call i32 @draw_tex(%struct.TYPE_22__* %316, i32 %317, i32 %318, i32 %319, i32 %320, i32 %323, i8* %324)
  %326 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %327 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %326, i32 0, i32 9
  %328 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %331 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %330, i32 0, i32 9
  %332 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %335 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %334, i32 0, i32 9
  %336 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %339 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %338, i32 0, i32 9
  %340 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @glViewport(i32 %329, i32 %333, i32 %337, i32 %341)
  br label %354

343:                                              ; preds = %292
  %344 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %345 = load i32, i32* %25, align 4
  %346 = load i32, i32* %26, align 4
  %347 = load i32, i32* %20, align 4
  %348 = load i32, i32* %21, align 4
  %349 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %350 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %349, i32 0, i32 8
  %351 = load i32, i32* %350, align 8
  %352 = load i8*, i8** %19, align 8
  %353 = call i32 @draw_tex(%struct.TYPE_22__* %344, i32 %345, i32 %346, i32 %347, i32 %348, i32 %351, i8* %352)
  br label %354

354:                                              ; preds = %343, %308
  br label %355

355:                                              ; preds = %354, %289, %286
  br label %356

356:                                              ; preds = %355, %253, %250
  %357 = load i8*, i8** %16, align 8
  %358 = icmp ne i8* %357, null
  br i1 %358, label %359, label %363

359:                                              ; preds = %356
  %360 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %361 = load i8*, i8** %16, align 8
  %362 = call i32 @font_driver_render_msg(%struct.TYPE_21__* %360, i32* null, i8* %361, %struct.font_params* null)
  br label %363

363:                                              ; preds = %359, %356
  %364 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %365 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %364, i32 0, i32 10
  %366 = load i32 (i32, %struct.TYPE_21__*)*, i32 (i32, %struct.TYPE_21__*)** %365, align 8
  %367 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %368 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %367, i32 0, i32 5
  %369 = load i32, i32* %368, align 8
  %370 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %371 = call i32 %366(i32 %369, %struct.TYPE_21__* %370)
  %372 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %373 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %372, i32 0, i32 6
  %374 = load i64, i64* %373, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %384

376:                                              ; preds = %363
  %377 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %378 = load i32, i32* @GL_RGBA, align 4
  %379 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %380 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %381 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %380, i32 0, i32 6
  %382 = load i64, i64* %381, align 8
  %383 = call i32 @gl1_readback(%struct.TYPE_22__* %377, i32 4, i32 %378, i32 %379, i64 %382)
  br label %384

384:                                              ; preds = %376, %363
  %385 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %386 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %385, i32 0, i32 9
  %387 = load i64, i64* %386, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %415

389:                                              ; preds = %384
  %390 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %391 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %390, i32 0, i32 3
  %392 = load i32, i32* %391, align 8
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %415, label %394

394:                                              ; preds = %389
  %395 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %396 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %395, i32 0, i32 8
  %397 = load i32, i32* %396, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %415, label %399

399:                                              ; preds = %394
  %400 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %401 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %400, i32 0, i32 7
  %402 = load i32, i32* %401, align 8
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %415, label %404

404:                                              ; preds = %399
  %405 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %406 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %405, i32 0, i32 6
  %407 = load i32 (i32, %struct.TYPE_21__*)*, i32 (i32, %struct.TYPE_21__*)** %406, align 8
  %408 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %409 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %408, i32 0, i32 5
  %410 = load i32, i32* %409, align 8
  %411 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %412 = call i32 %407(i32 %410, %struct.TYPE_21__* %411)
  %413 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %414 = call i32 @glClear(i32 %413)
  br label %415

415:                                              ; preds = %404, %399, %394, %389, %384
  %416 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %417 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %416, i32 0, i32 6
  %418 = load i32 (i32, %struct.TYPE_21__*)*, i32 (i32, %struct.TYPE_21__*)** %417, align 8
  %419 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %420 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %419, i32 0, i32 5
  %421 = load i32, i32* %420, align 8
  %422 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %423 = call i32 %418(i32 %421, %struct.TYPE_21__* %422)
  %424 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %425 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %424, i32 0, i32 4
  %426 = load i64, i64* %425, align 8
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %442

428:                                              ; preds = %415
  %429 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %430 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %429, i32 0, i32 3
  %431 = load i32, i32* %430, align 8
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %442, label %433

433:                                              ; preds = %428
  %434 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %435 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %434, i32 0, i32 5
  %436 = load i64, i64* %435, align 8
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %442, label %438

438:                                              ; preds = %433
  %439 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %440 = call i32 @glClear(i32 %439)
  %441 = call i32 (...) @glFinish()
  br label %442

442:                                              ; preds = %438, %433, %428, %415
  %443 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %444 = call i32 @gl1_context_bind_hw_render(%struct.TYPE_22__* %443, i32 1)
  store i32 1, i32* %9, align 4
  br label %445

445:                                              ; preds = %442, %46
  %446 = load i32, i32* %9, align 4
  ret i32 %446
}

declare dso_local i32 @gl1_context_bind_hw_render(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @gl1_gfx_set_viewport(%struct.TYPE_22__*, %struct.TYPE_21__*, i32, i32, i32, i32) #1

declare dso_local i32 @glClearColor(float, float, float, float) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glBlendFunc(i32, i32) #1

declare dso_local i32 @get_pot(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @conv_rgb565_argb8888(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @video_context_driver_get_video_size(%struct.TYPE_23__*) #1

declare dso_local i32 @draw_tex(%struct.TYPE_22__*, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @conv_rgba4444_argb8888(i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @glViewport(i32, i32, i32, i32) #1

declare dso_local i32 @font_driver_render_msg(%struct.TYPE_21__*, i32*, i8*, %struct.font_params*) #1

declare dso_local i32 @gl1_readback(%struct.TYPE_22__*, i32, i32, i32, i64) #1

declare dso_local i32 @glFinish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
