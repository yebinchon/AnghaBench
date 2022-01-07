; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_vc_egl_ctx.c_gfx_ctx_vc_destroy.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_vc_egl_ctx.c_gfx_ctx_vc_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64, i64*, i32**, %struct.TYPE_3__, i32*, i32* }
%struct.TYPE_3__ = type { i64, i32*, i32*, i32*, i32* }

@g_egl_inited = common dso_local global i32 0, align 4
@MAX_EGLIMAGE_TEXTURES = common dso_local global i32 0, align 4
@EGL_OPENVG_API = common dso_local global i32 0, align 4
@vc_api = common dso_local global i32 0, align 4
@EGL_NO_SURFACE = common dso_local global i32* null, align 8
@EGL_NO_CONTEXT = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @gfx_ctx_vc_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_ctx_vc_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* @g_egl_inited, align 4
  br label %286

10:                                               ; preds = %1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 6
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %227

16:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %95, %16
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MAX_EGLIMAGE_TEXTURES, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %98

21:                                               ; preds = %17
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 5
  %24 = load i32**, i32*** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %60

30:                                               ; preds = %21
  br i1 true, label %31, label %60

31:                                               ; preds = %30
  %32 = load i32, i32* @EGL_OPENVG_API, align 4
  %33 = call i32 @eglBindAPI(i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 7
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 7
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 8
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @eglMakeCurrent(i32* %37, i32* %40, i32* %43, i32* %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 5
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @peglDestroyImageKHR(i32* %51, i32* %58)
  br label %60

60:                                               ; preds = %31, %30, %21
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %94

69:                                               ; preds = %60
  %70 = load i32, i32* @EGL_OPENVG_API, align 4
  %71 = call i32 @eglBindAPI(i32 %70)
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 7
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 7
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 8
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @eglMakeCurrent(i32* %75, i32* %78, i32* %81, i32* %84)
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 4
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @vgDestroyImage(i64 %92)
  br label %94

94:                                               ; preds = %69, %60
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %4, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %17

98:                                               ; preds = %17
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %125

104:                                              ; preds = %98
  %105 = load i8*, i8** %2, align 8
  %106 = load i32, i32* @vc_api, align 4
  %107 = call i32 @gfx_ctx_vc_bind_api(i8* %105, i32 %106, i32 0, i32 0)
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 6
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32*, i32** @EGL_NO_SURFACE, align 8
  %113 = load i32*, i32** @EGL_NO_SURFACE, align 8
  %114 = load i32*, i32** @EGL_NO_CONTEXT, align 8
  %115 = call i32 @eglMakeCurrent(i32* %111, i32* %112, i32* %113, i32* %114)
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @eglDestroyContext(i32* %119, i32* %123)
  br label %125

125:                                              ; preds = %104, %98
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 6
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %141

131:                                              ; preds = %125
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 6
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 6
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @eglDestroyContext(i32* %135, i32* %139)
  br label %141

141:                                              ; preds = %131, %125
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 8
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %165

146:                                              ; preds = %141
  %147 = load i32, i32* @EGL_OPENVG_API, align 4
  %148 = call i32 @eglBindAPI(i32 %147)
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 6
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32*, i32** @EGL_NO_SURFACE, align 8
  %154 = load i32*, i32** @EGL_NO_SURFACE, align 8
  %155 = load i32*, i32** @EGL_NO_CONTEXT, align 8
  %156 = call i32 @eglMakeCurrent(i32* %152, i32* %153, i32* %154, i32* %155)
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 6
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 8
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @eglDestroyContext(i32* %160, i32* %163)
  br label %165

165:                                              ; preds = %146, %141
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 6
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %184

171:                                              ; preds = %165
  %172 = load i8*, i8** %2, align 8
  %173 = load i32, i32* @vc_api, align 4
  %174 = call i32 @gfx_ctx_vc_bind_api(i8* %172, i32 %173, i32 0, i32 0)
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 6
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 6
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = call i32 @eglDestroySurface(i32* %178, i32* %182)
  br label %184

184:                                              ; preds = %171, %165
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 7
  %187 = load i32*, i32** %186, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %200

189:                                              ; preds = %184
  %190 = load i32, i32* @EGL_OPENVG_API, align 4
  %191 = call i32 @eglBindAPI(i32 %190)
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 6
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 7
  %198 = load i32*, i32** %197, align 8
  %199 = call i32 @eglDestroySurface(i32* %195, i32* %198)
  br label %200

200:                                              ; preds = %189, %184
  %201 = load i32, i32* @EGL_OPENVG_API, align 4
  %202 = call i32 @eglBindAPI(i32 %201)
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 6
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = load i32*, i32** @EGL_NO_SURFACE, align 8
  %208 = load i32*, i32** @EGL_NO_SURFACE, align 8
  %209 = load i32*, i32** @EGL_NO_CONTEXT, align 8
  %210 = call i32 @eglMakeCurrent(i32* %206, i32* %207, i32* %208, i32* %209)
  %211 = load i8*, i8** %2, align 8
  %212 = load i32, i32* @vc_api, align 4
  %213 = call i32 @gfx_ctx_vc_bind_api(i8* %211, i32 %212, i32 0, i32 0)
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 6
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = load i32*, i32** @EGL_NO_SURFACE, align 8
  %219 = load i32*, i32** @EGL_NO_SURFACE, align 8
  %220 = load i32*, i32** @EGL_NO_CONTEXT, align 8
  %221 = call i32 @eglMakeCurrent(i32* %217, i32* %218, i32* %219, i32* %220)
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 6
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = call i32 @eglTerminate(i32* %225)
  br label %227

227:                                              ; preds = %200, %10
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 6
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 4
  store i32* null, i32** %230, align 8
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 6
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 3
  store i32* null, i32** %233, align 8
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 8
  store i32* null, i32** %235, align 8
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 6
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 2
  store i32* null, i32** %238, align 8
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 7
  store i32* null, i32** %240, align 8
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 6
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 1
  store i32* null, i32** %243, align 8
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 6
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 0
  store i64 0, i64* %246, align 8
  store i32 0, i32* @g_egl_inited, align 4
  store i32 0, i32* %4, align 4
  br label %247

247:                                              ; preds = %264, %227
  %248 = load i32, i32* %4, align 4
  %249 = load i32, i32* @MAX_EGLIMAGE_TEXTURES, align 4
  %250 = icmp ult i32 %248, %249
  br i1 %250, label %251, label %267

251:                                              ; preds = %247
  %252 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 5
  %254 = load i32**, i32*** %253, align 8
  %255 = load i32, i32* %4, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds i32*, i32** %254, i64 %256
  store i32* null, i32** %257, align 8
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 4
  %260 = load i64*, i64** %259, align 8
  %261 = load i32, i32* %4, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds i64, i64* %260, i64 %262
  store i64 0, i64* %263, align 8
  br label %264

264:                                              ; preds = %251
  %265 = load i32, i32* %4, align 4
  %266 = add i32 %265, 1
  store i32 %266, i32* %4, align 4
  br label %247

267:                                              ; preds = %247
  %268 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 3
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %267
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @vc_dispmanx_vsync_callback(i32 %275, i32* null, i32* null)
  br label %277

277:                                              ; preds = %272, %267
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @slock_free(i32 %280)
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @scond_free(i32 %284)
  br label %286

286:                                              ; preds = %277, %9
  ret void
}

declare dso_local i32 @peglDestroyImageKHR(i32*, i32*) #1

declare dso_local i32 @eglBindAPI(i32) #1

declare dso_local i32 @eglMakeCurrent(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @vgDestroyImage(i64) #1

declare dso_local i32 @gfx_ctx_vc_bind_api(i8*, i32, i32, i32) #1

declare dso_local i32 @eglDestroyContext(i32*, i32*) #1

declare dso_local i32 @eglDestroySurface(i32*, i32*) #1

declare dso_local i32 @eglTerminate(i32*) #1

declare dso_local i32 @vc_dispmanx_vsync_callback(i32, i32*, i32*) #1

declare dso_local i32 @slock_free(i32) #1

declare dso_local i32 @scond_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
