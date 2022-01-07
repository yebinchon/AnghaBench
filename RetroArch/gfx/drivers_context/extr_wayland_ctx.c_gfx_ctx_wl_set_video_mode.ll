; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_wayland_ctx.c_gfx_ctx_wl_set_video_mode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_wayland_ctx.c_gfx_ctx_wl_set_video_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, %struct.TYPE_15__, i32, i32, %struct.TYPE_17__, i32, i64, i64, %struct.TYPE_14__, i32, i64, i64, i8*, i32, i64, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@DEFAULT_WINDOWED_WIDTH = common dso_local global i32 0, align 4
@DEFAULT_WINDOWED_HEIGHT = common dso_local global i32 0, align 4
@wl_surface_listener = common dso_local global i32 0, align 4
@wl_api = common dso_local global i32 0, align 4
@xdg_surface_listener = common dso_local global i32 0, align 4
@xdg_toplevel_listener = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"retroarch\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"RetroArch\00", align 1
@xdg_shell_listener = common dso_local global i32 0, align 4
@zxdg_surface_v6_listener = common dso_local global i32 0, align 4
@zxdg_toplevel_v6_listener = common dso_local global i32 0, align 4
@zxdg_shell_v6_listener = common dso_local global i32 0, align 4
@VULKAN_WSI_WAYLAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i32, i32)* @gfx_ctx_wl_set_video_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_ctx_wl_set_video_mode(i8* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %12, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  br label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @DEFAULT_WINDOWED_WIDTH, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %10, align 4
  br label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @DEFAULT_WINDOWED_HEIGHT, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 19
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @wl_compositor_create_surface(i32 %37)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @wl_surface_set_buffer_scale(i32 %43, i32 %46)
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %52 = call i32 @wl_surface_add_listener(i32 %50, i32* @wl_surface_listener, %struct.TYPE_16__* %51)
  %53 = load i32, i32* @wl_api, align 4
  switch i32 %53, label %56 [
    i32 131, label %54
    i32 130, label %54
    i32 129, label %54
    i32 132, label %55
  ]

54:                                               ; preds = %31, %31, %31
  br label %57

55:                                               ; preds = %31
  br label %56

56:                                               ; preds = %31, %55
  br label %57

57:                                               ; preds = %56, %54
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 17
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %138

62:                                               ; preds = %57
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 17
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @xdg_wm_base_get_xdg_surface(i64 %65, i32 %68)
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 18
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 18
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %76 = call i32 @xdg_surface_add_listener(i32 %74, i32* @xdg_surface_listener, %struct.TYPE_16__* %75)
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 18
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @xdg_surface_get_toplevel(i32 %79)
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 10
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 10
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %87 = call i32 @xdg_toplevel_add_listener(i64 %85, i32* @xdg_toplevel_listener, %struct.TYPE_16__* %86)
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 10
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @xdg_toplevel_set_app_id(i64 %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 10
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @xdg_toplevel_set_title(i64 %94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 14
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %62
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 14
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 10
  %106 = load i64, i64* %105, align 8
  %107 = call i8* @zxdg_decoration_manager_v1_get_toplevel_decoration(i64 %103, i64 %106)
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 15
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %100, %62
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @wl_surface_commit(i32 %113)
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 3
  store i32 1, i32* %116, align 4
  br label %117

117:                                              ; preds = %122, %110
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 7
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @wl_display_dispatch(i32 %126)
  br label %117

128:                                              ; preds = %117
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 7
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @wl_display_roundtrip(i32 %132)
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 17
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @xdg_wm_base_add_listener(i64 %136, i32* @xdg_shell_listener, i32* null)
  br label %220

138:                                              ; preds = %57
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 13
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %219

143:                                              ; preds = %138
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 13
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @zxdg_shell_v6_get_xdg_surface(i64 %146, i32 %149)
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 16
  store i32 %150, i32* %152, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 16
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %157 = call i32 @zxdg_surface_v6_add_listener(i32 %155, i32* @zxdg_surface_v6_listener, %struct.TYPE_16__* %156)
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 16
  %160 = load i32, i32* %159, align 8
  %161 = call i64 @zxdg_surface_v6_get_toplevel(i32 %160)
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 9
  store i64 %161, i64* %163, align 8
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 9
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %168 = call i32 @zxdg_toplevel_v6_add_listener(i64 %166, i32* @zxdg_toplevel_v6_listener, %struct.TYPE_16__* %167)
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 9
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @zxdg_toplevel_v6_set_app_id(i64 %171, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 9
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @zxdg_toplevel_v6_set_title(i64 %175, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 14
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %143
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 14
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 10
  %187 = load i64, i64* %186, align 8
  %188 = call i8* @zxdg_decoration_manager_v1_get_toplevel_decoration(i64 %184, i64 %187)
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 15
  store i8* %188, i8** %190, align 8
  br label %191

191:                                              ; preds = %181, %143
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @wl_surface_commit(i32 %194)
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 3
  store i32 1, i32* %197, align 4
  br label %198

198:                                              ; preds = %203, %191
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %198
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 7
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @wl_display_dispatch(i32 %207)
  br label %198

209:                                              ; preds = %198
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 7
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @wl_display_roundtrip(i32 %213)
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 13
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @zxdg_shell_v6_add_listener(i64 %217, i32* @zxdg_shell_v6_listener, i32* null)
  br label %219

219:                                              ; preds = %209, %138
  br label %220

220:                                              ; preds = %219, %128
  %221 = load i32, i32* @wl_api, align 4
  switch i32 %221, label %224 [
    i32 131, label %222
    i32 130, label %222
    i32 129, label %222
    i32 132, label %223
  ]

222:                                              ; preds = %220, %220, %220
  br label %225

223:                                              ; preds = %220
  br label %224

224:                                              ; preds = %220, %223
  br label %225

225:                                              ; preds = %224, %222
  %226 = load i32, i32* %11, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %250

228:                                              ; preds = %225
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 10
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %228
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 10
  %236 = load i64, i64* %235, align 8
  %237 = call i32 @xdg_toplevel_set_fullscreen(i64 %236, i32* null)
  br label %249

238:                                              ; preds = %228
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 9
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %238
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 9
  %246 = load i64, i64* %245, align 8
  %247 = call i32 @zxdg_toplevel_v6_set_fullscreen(i64 %246, i32* null)
  br label %248

248:                                              ; preds = %243, %238
  br label %249

249:                                              ; preds = %248, %233
  br label %250

250:                                              ; preds = %249, %225
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 7
  %253 = call i32 @flush_wayland_fd(%struct.TYPE_17__* %252)
  %254 = load i32, i32* @wl_api, align 4
  switch i32 %254, label %262 [
    i32 128, label %255
    i32 132, label %261
  ]

255:                                              ; preds = %250
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 7
  %258 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @wl_display_roundtrip(i32 %259)
  br label %263

261:                                              ; preds = %250
  br label %262

262:                                              ; preds = %250, %261
  br label %263

263:                                              ; preds = %262, %255
  %264 = load i32, i32* %11, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %263
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 4
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 0
  store i32 0, i32* %269, align 8
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %271 = call i32 @gfx_ctx_wl_show_mouse(%struct.TYPE_16__* %270, i32 0)
  br label %276

272:                                              ; preds = %263
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 4
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 0
  store i32 1, i32* %275, align 8
  br label %276

276:                                              ; preds = %272, %266
  store i32 1, i32* %6, align 4
  br label %280

277:                                              ; No predecessors!
  %278 = load i8*, i8** %7, align 8
  %279 = call i32 @gfx_ctx_wl_destroy(i8* %278)
  store i32 0, i32* %6, align 4
  br label %280

280:                                              ; preds = %277, %276
  %281 = load i32, i32* %6, align 4
  ret i32 %281
}

declare dso_local i32 @wl_compositor_create_surface(i32) #1

declare dso_local i32 @wl_surface_set_buffer_scale(i32, i32) #1

declare dso_local i32 @wl_surface_add_listener(i32, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @xdg_wm_base_get_xdg_surface(i64, i32) #1

declare dso_local i32 @xdg_surface_add_listener(i32, i32*, %struct.TYPE_16__*) #1

declare dso_local i64 @xdg_surface_get_toplevel(i32) #1

declare dso_local i32 @xdg_toplevel_add_listener(i64, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @xdg_toplevel_set_app_id(i64, i8*) #1

declare dso_local i32 @xdg_toplevel_set_title(i64, i8*) #1

declare dso_local i8* @zxdg_decoration_manager_v1_get_toplevel_decoration(i64, i64) #1

declare dso_local i32 @wl_surface_commit(i32) #1

declare dso_local i32 @wl_display_dispatch(i32) #1

declare dso_local i32 @wl_display_roundtrip(i32) #1

declare dso_local i32 @xdg_wm_base_add_listener(i64, i32*, i32*) #1

declare dso_local i32 @zxdg_shell_v6_get_xdg_surface(i64, i32) #1

declare dso_local i32 @zxdg_surface_v6_add_listener(i32, i32*, %struct.TYPE_16__*) #1

declare dso_local i64 @zxdg_surface_v6_get_toplevel(i32) #1

declare dso_local i32 @zxdg_toplevel_v6_add_listener(i64, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @zxdg_toplevel_v6_set_app_id(i64, i8*) #1

declare dso_local i32 @zxdg_toplevel_v6_set_title(i64, i8*) #1

declare dso_local i32 @zxdg_shell_v6_add_listener(i64, i32*, i32*) #1

declare dso_local i32 @xdg_toplevel_set_fullscreen(i64, i32*) #1

declare dso_local i32 @zxdg_toplevel_v6_set_fullscreen(i64, i32*) #1

declare dso_local i32 @flush_wayland_fd(%struct.TYPE_17__*) #1

declare dso_local i32 @gfx_ctx_wl_show_mouse(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @gfx_ctx_wl_destroy(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
