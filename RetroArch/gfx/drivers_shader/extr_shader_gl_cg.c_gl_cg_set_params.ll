; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_gl_cg.c_gl_cg_set_params.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_gl_cg.c_gl_cg_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32 }
%struct.video_tex_info = type { i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_12__*, %struct.TYPE_13__*, i32* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { float, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32*, i32*, i32, i32, i64, i64, i64, i32, i32, i32, i64, i32, i32, i32 }

@VIDEO_SHADER_STOCK_BLEND = common dso_local global i64 0, align 8
@PREV_TEXTURES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @gl_cg_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_cg_set_params(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.video_tex_info*, align 8
  %20 = alloca %struct.video_tex_info*, align 8
  %21 = alloca %struct.video_tex_info*, align 8
  %22 = alloca %struct.video_tex_info*, align 8
  %23 = alloca %struct.TYPE_15__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %6, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %7, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %9, align 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %11, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %13, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 7
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %14, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 8
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %15, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 9
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %16, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 10
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %17, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 11
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %18, align 4
  %67 = load i8*, i8** %14, align 8
  %68 = bitcast i8* %67 to %struct.video_tex_info*
  store %struct.video_tex_info* %68, %struct.video_tex_info** %19, align 8
  %69 = load i8*, i8** %15, align 8
  %70 = bitcast i8* %69 to %struct.video_tex_info*
  store %struct.video_tex_info* %70, %struct.video_tex_info** %20, align 8
  %71 = load i8*, i8** %16, align 8
  %72 = bitcast i8* %71 to %struct.video_tex_info*
  store %struct.video_tex_info* %72, %struct.video_tex_info** %21, align 8
  %73 = load i8*, i8** %17, align 8
  %74 = bitcast i8* %73 to %struct.video_tex_info*
  store %struct.video_tex_info* %74, %struct.video_tex_info** %22, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = bitcast i8* %75 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %76, %struct.TYPE_15__** %23, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %78 = icmp ne %struct.TYPE_15__* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %2
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79, %2
  br label %490

85:                                               ; preds = %79
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @VIDEO_SHADER_STOCK_BLEND, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %490

92:                                               ; preds = %85
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 15
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @set_param_2f(i32 %101, i32 %102, i32 %103)
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 14
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @set_param_2f(i32 %113, i32 %114, i32 %115)
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %118, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 13
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @set_param_2f(i32 %125, i32 %126, i32 %127)
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %130, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 12
  %137 = load i64, i64* %136, align 8
  %138 = call i64 (...) @state_manager_frame_is_reversed()
  %139 = icmp ne i64 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, double -1.000000e+00, double 1.000000e+00
  %142 = fptrunc double %141 to float
  %143 = call i32 @cg_gl_set_param_1f(i64 %137, float %142)
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %145, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 11
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @set_param_2f(i32 %152, i32 %153, i32 %154)
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %157, align 8
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 10
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @set_param_2f(i32 %164, i32 %165, i32 %166)
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %169, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 9
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %12, align 4
  %179 = call i32 @set_param_2f(i32 %176, i32 %177, i32 %178)
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %181, align 8
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 8
  %188 = load i64, i64* %187, align 8
  %189 = call i64 (...) @state_manager_frame_is_reversed()
  %190 = icmp ne i64 %189, 0
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, double -1.000000e+00, double 1.000000e+00
  %193 = fptrunc double %192 to float
  %194 = call i32 @cg_gl_set_param_1f(i64 %188, float %193)
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %196, align 8
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 7
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %216, label %205

205:                                              ; preds = %92
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 2
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %207, align 8
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 6
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %260

216:                                              ; preds = %205, %92
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 4
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %220, align 8
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = sub i64 %224, 1
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  store i32 %228, i32* %24, align 4
  %229 = load i32, i32* %24, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %216
  %232 = load i32, i32* %24, align 4
  %233 = load i32, i32* %13, align 4
  %234 = urem i32 %233, %232
  store i32 %234, i32* %13, align 4
  br label %235

235:                                              ; preds = %231, %216
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 2
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %237, align 8
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 7
  %244 = load i64, i64* %243, align 8
  %245 = load i32, i32* %13, align 4
  %246 = uitofp i32 %245 to float
  %247 = call i32 @cg_gl_set_param_1f(i64 %244, float %246)
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 2
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %249, align 8
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 6
  %256 = load i64, i64* %255, align 8
  %257 = load i32, i32* %13, align 4
  %258 = uitofp i32 %257 to float
  %259 = call i32 @cg_gl_set_param_1f(i64 %256, float %258)
  br label %260

260:                                              ; preds = %235, %205
  store i32 0, i32* %5, align 4
  br label %261

261:                                              ; preds = %328, %260
  %262 = load i32, i32* %5, align 4
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 1
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = icmp ult i32 %262, %267
  br i1 %268, label %269, label %331

269:                                              ; preds = %261
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 2
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %271, align 8
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 3
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %282, align 8
  %284 = load i32, i32* %5, align 4
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = call i64 @cgGetNamedParameter(i32 %278, i32 %288)
  store i64 %289, i64* %25, align 8
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 2
  %292 = load %struct.TYPE_13__*, %struct.TYPE_13__** %291, align 8
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %299, i32 0, i32 1
  %301 = load %struct.TYPE_12__*, %struct.TYPE_12__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 3
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** %302, align 8
  %304 = load i32, i32* %5, align 4
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = call i64 @cgGetNamedParameter(i32 %298, i32 %308)
  store i64 %309, i64* %26, align 8
  %310 = load i64, i64* %25, align 8
  %311 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %312 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %311, i32 0, i32 3
  %313 = load i32*, i32** %312, align 8
  %314 = load i32, i32* %5, align 4
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @cg_gl_set_texture_parameter(i64 %310, i32 %317)
  %319 = load i64, i64* %26, align 8
  %320 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i32 0, i32 3
  %322 = load i32*, i32** %321, align 8
  %323 = load i32, i32* %5, align 4
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @cg_gl_set_texture_parameter(i64 %319, i32 %326)
  br label %328

328:                                              ; preds = %269
  %329 = load i32, i32* %5, align 4
  %330 = add i32 %329, 1
  store i32 %330, i32* %5, align 4
  br label %261

331:                                              ; preds = %261
  %332 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %386

336:                                              ; preds = %331
  %337 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %338 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %339 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %338, i32 0, i32 2
  %340 = load %struct.TYPE_13__*, %struct.TYPE_13__** %339, align 8
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %342 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %340, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %344, i32 0, i32 5
  %346 = load %struct.video_tex_info*, %struct.video_tex_info** %19, align 8
  %347 = call i32 @gl_cg_set_texture_info(%struct.TYPE_15__* %337, i32* %345, %struct.video_tex_info* %346)
  %348 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %349 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %350 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %349, i32 0, i32 2
  %351 = load %struct.TYPE_13__*, %struct.TYPE_13__** %350, align 8
  %352 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %353 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %351, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %355, i32 0, i32 4
  %357 = load %struct.video_tex_info*, %struct.video_tex_info** %21, align 8
  %358 = call i32 @gl_cg_set_texture_info(%struct.TYPE_15__* %348, i32* %356, %struct.video_tex_info* %357)
  store i32 0, i32* %5, align 4
  br label %359

359:                                              ; preds = %382, %336
  %360 = load i32, i32* %5, align 4
  %361 = load i32, i32* %18, align 4
  %362 = icmp ult i32 %360, %361
  br i1 %362, label %363, label %385

363:                                              ; preds = %359
  %364 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %365 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %366 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %365, i32 0, i32 2
  %367 = load %struct.TYPE_13__*, %struct.TYPE_13__** %366, align 8
  %368 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %369 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %367, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %371, i32 0, i32 3
  %373 = load i32*, i32** %372, align 8
  %374 = load i32, i32* %5, align 4
  %375 = zext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %373, i64 %375
  %377 = load %struct.video_tex_info*, %struct.video_tex_info** %22, align 8
  %378 = load i32, i32* %5, align 4
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds %struct.video_tex_info, %struct.video_tex_info* %377, i64 %379
  %381 = call i32 @gl_cg_set_texture_info(%struct.TYPE_15__* %364, i32* %376, %struct.video_tex_info* %380)
  br label %382

382:                                              ; preds = %363
  %383 = load i32, i32* %5, align 4
  %384 = add i32 %383, 1
  store i32 %384, i32* %5, align 4
  br label %359

385:                                              ; preds = %359
  br label %386

386:                                              ; preds = %385, %331
  store i32 0, i32* %5, align 4
  br label %387

387:                                              ; preds = %410, %386
  %388 = load i32, i32* %5, align 4
  %389 = load i32, i32* @PREV_TEXTURES, align 4
  %390 = icmp ult i32 %388, %389
  br i1 %390, label %391, label %413

391:                                              ; preds = %387
  %392 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %393 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %394 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %393, i32 0, i32 2
  %395 = load %struct.TYPE_13__*, %struct.TYPE_13__** %394, align 8
  %396 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %397 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %396, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %395, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %399, i32 0, i32 2
  %401 = load i32*, i32** %400, align 8
  %402 = load i32, i32* %5, align 4
  %403 = zext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %401, i64 %403
  %405 = load %struct.video_tex_info*, %struct.video_tex_info** %20, align 8
  %406 = load i32, i32* %5, align 4
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds %struct.video_tex_info, %struct.video_tex_info* %405, i64 %407
  %409 = call i32 @gl_cg_set_texture_info(%struct.TYPE_15__* %392, i32* %404, %struct.video_tex_info* %408)
  br label %410

410:                                              ; preds = %391
  %411 = load i32, i32* %5, align 4
  %412 = add i32 %411, 1
  store i32 %412, i32* %5, align 4
  br label %387

413:                                              ; preds = %387
  store i32 0, i32* %5, align 4
  br label %414

414:                                              ; preds = %487, %413
  %415 = load i32, i32* %5, align 4
  %416 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %417 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %416, i32 0, i32 1
  %418 = load %struct.TYPE_12__*, %struct.TYPE_12__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = icmp ult i32 %415, %420
  br i1 %421, label %422, label %490

422:                                              ; preds = %414
  %423 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %424 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %423, i32 0, i32 2
  %425 = load %struct.TYPE_13__*, %struct.TYPE_13__** %424, align 8
  %426 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %427 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %426, i32 0, i32 0
  %428 = load i64, i64* %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %425, i64 %428
  %430 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %433 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %432, i32 0, i32 1
  %434 = load %struct.TYPE_12__*, %struct.TYPE_12__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %434, i32 0, i32 2
  %436 = load %struct.TYPE_9__*, %struct.TYPE_9__** %435, align 8
  %437 = load i32, i32* %5, align 4
  %438 = zext i32 %437 to i64
  %439 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %436, i64 %438
  %440 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = call i64 @cgGetNamedParameter(i32 %431, i32 %441)
  store i64 %442, i64* %27, align 8
  %443 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %444 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %443, i32 0, i32 2
  %445 = load %struct.TYPE_13__*, %struct.TYPE_13__** %444, align 8
  %446 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %447 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %446, i32 0, i32 0
  %448 = load i64, i64* %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %445, i64 %448
  %450 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %453 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %452, i32 0, i32 1
  %454 = load %struct.TYPE_12__*, %struct.TYPE_12__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %454, i32 0, i32 2
  %456 = load %struct.TYPE_9__*, %struct.TYPE_9__** %455, align 8
  %457 = load i32, i32* %5, align 4
  %458 = zext i32 %457 to i64
  %459 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %456, i64 %458
  %460 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 4
  %462 = call i64 @cgGetNamedParameter(i32 %451, i32 %461)
  store i64 %462, i64* %28, align 8
  %463 = load i64, i64* %27, align 8
  %464 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %465 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %464, i32 0, i32 1
  %466 = load %struct.TYPE_12__*, %struct.TYPE_12__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %466, i32 0, i32 2
  %468 = load %struct.TYPE_9__*, %struct.TYPE_9__** %467, align 8
  %469 = load i32, i32* %5, align 4
  %470 = zext i32 %469 to i64
  %471 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %468, i64 %470
  %472 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %471, i32 0, i32 0
  %473 = load float, float* %472, align 4
  %474 = call i32 @cg_gl_set_param_1f(i64 %463, float %473)
  %475 = load i64, i64* %28, align 8
  %476 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %477 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %476, i32 0, i32 1
  %478 = load %struct.TYPE_12__*, %struct.TYPE_12__** %477, align 8
  %479 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %478, i32 0, i32 2
  %480 = load %struct.TYPE_9__*, %struct.TYPE_9__** %479, align 8
  %481 = load i32, i32* %5, align 4
  %482 = zext i32 %481 to i64
  %483 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %480, i64 %482
  %484 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %483, i32 0, i32 0
  %485 = load float, float* %484, align 4
  %486 = call i32 @cg_gl_set_param_1f(i64 %475, float %485)
  br label %487

487:                                              ; preds = %422
  %488 = load i32, i32* %5, align 4
  %489 = add i32 %488, 1
  store i32 %489, i32* %5, align 4
  br label %414

490:                                              ; preds = %84, %91, %414
  ret void
}

declare dso_local i32 @set_param_2f(i32, i32, i32) #1

declare dso_local i32 @cg_gl_set_param_1f(i64, float) #1

declare dso_local i64 @state_manager_frame_is_reversed(...) #1

declare dso_local i64 @cgGetNamedParameter(i32, i32) #1

declare dso_local i32 @cg_gl_set_texture_parameter(i64, i32) #1

declare dso_local i32 @gl_cg_set_texture_info(%struct.TYPE_15__*, i32*, %struct.video_tex_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
