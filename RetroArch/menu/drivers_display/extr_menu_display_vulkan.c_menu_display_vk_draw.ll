; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_vulkan.c_menu_display_vk_draw.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_vulkan.c_menu_display_vk_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_24__*, i32, i32, %struct.TYPE_21__, i64 }
%struct.TYPE_24__ = type { float*, float*, float*, i32, i8* }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { i64 }
%struct.vk_buffer_range = type { i64 }
%struct.vk_texture = type { i32, i32 }
%struct.vk_vertex = type { float, %struct.TYPE_20__, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_19__*, i32, %struct.TYPE_18__ }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32*, %struct.vk_texture }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.vk_draw_triangles = type { i32, i32, %struct.vk_buffer_range*, i32, i32, %struct.vk_texture*, i32 }

@VULKAN_DIRTY_DYNAMIC_BIT = common dso_local global i32 0, align 4
@VK_NULL_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_26__*)* @menu_display_vk_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_display_vk_draw(%struct.TYPE_17__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vk_buffer_range, align 8
  %7 = alloca %struct.vk_texture*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca %struct.vk_vertex*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca %struct.vk_draw_triangles, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %4, align 8
  store %struct.vk_texture* null, %struct.vk_texture** %7, align 8
  store float* null, float** %8, align 8
  store float* null, float** %9, align 8
  store float* null, float** %10, align 8
  store %struct.vk_vertex* null, %struct.vk_vertex** %11, align 8
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %17, %struct.TYPE_25__** %12, align 8
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %19 = icmp ne %struct.TYPE_25__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %22 = icmp ne %struct.TYPE_17__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %2
  br label %253

24:                                               ; preds = %20
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.vk_texture*
  store %struct.vk_texture* %28, %struct.vk_texture** %7, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  %33 = load float*, float** %32, align 8
  store float* %33, float** %8, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 1
  %38 = load float*, float** %37, align 8
  store float* %38, float** %9, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 2
  %43 = load float*, float** %42, align 8
  store float* %43, float** %10, align 8
  %44 = load float*, float** %8, align 8
  %45 = icmp ne float* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %24
  %47 = call float* (...) @menu_display_vk_get_default_vertices()
  store float* %47, float** %8, align 8
  br label %48

48:                                               ; preds = %46, %24
  %49 = load float*, float** %9, align 8
  %50 = icmp ne float* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = call i8* (...) @menu_display_vk_get_default_tex_coords()
  %53 = bitcast i8* %52 to float*
  store float* %53, float** %9, align 8
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 4
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %54
  %62 = call i8* (...) @menu_display_vk_get_default_tex_coords()
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 4
  store i8* %62, i8** %66, align 8
  br label %67

67:                                               ; preds = %61, %54
  %68 = load %struct.vk_texture*, %struct.vk_texture** %7, align 8
  %69 = icmp ne %struct.vk_texture* %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 2
  store %struct.vk_texture* %73, %struct.vk_texture** %7, align 8
  br label %74

74:                                               ; preds = %70, %67
  %75 = load float*, float** %10, align 8
  %76 = icmp ne float* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = call float* (...) @menu_display_vk_get_default_color()
  store float* %78, float** %10, align 8
  br label %79

79:                                               ; preds = %77, %74
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %82 = call i32 @menu_display_vk_viewport(%struct.TYPE_17__* %80, %struct.TYPE_26__* %81)
  %83 = load i32, i32* @VULKAN_DIRTY_DYNAMIC_BIT, align 4
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %83
  store i32 %88, i32* %86, align 4
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 32
  %103 = trunc i64 %102 to i32
  %104 = call i32 @vulkan_buffer_chain_alloc(i32 %91, i32* %95, i32 %103, %struct.vk_buffer_range* %6)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %79
  br label %253

107:                                              ; preds = %79
  %108 = getelementptr inbounds %struct.vk_buffer_range, %struct.vk_buffer_range* %6, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to %struct.vk_vertex*
  store %struct.vk_vertex* %110, %struct.vk_vertex** %11, align 8
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %172, %107
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = icmp ult i32 %112, %117
  br i1 %118, label %119, label %177

119:                                              ; preds = %111
  %120 = load float*, float** %8, align 8
  %121 = getelementptr inbounds float, float* %120, i32 1
  store float* %121, float** %8, align 8
  %122 = load float, float* %120, align 4
  %123 = fptosi float %122 to i32
  %124 = load %struct.vk_vertex*, %struct.vk_vertex** %11, align 8
  %125 = getelementptr inbounds %struct.vk_vertex, %struct.vk_vertex* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 4
  %126 = load float*, float** %8, align 8
  %127 = getelementptr inbounds float, float* %126, i32 1
  store float* %127, float** %8, align 8
  %128 = load float, float* %126, align 4
  %129 = fsub float 1.000000e+00, %128
  %130 = load %struct.vk_vertex*, %struct.vk_vertex** %11, align 8
  %131 = getelementptr inbounds %struct.vk_vertex, %struct.vk_vertex* %130, i32 0, i32 0
  store float %129, float* %131, align 4
  %132 = load float*, float** %9, align 8
  %133 = getelementptr inbounds float, float* %132, i32 1
  store float* %133, float** %9, align 8
  %134 = load float, float* %132, align 4
  %135 = fptosi float %134 to i32
  %136 = load %struct.vk_vertex*, %struct.vk_vertex** %11, align 8
  %137 = getelementptr inbounds %struct.vk_vertex, %struct.vk_vertex* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load float*, float** %9, align 8
  %139 = getelementptr inbounds float, float* %138, i32 1
  store float* %139, float** %9, align 8
  %140 = load float, float* %138, align 4
  %141 = fptosi float %140 to i32
  %142 = load %struct.vk_vertex*, %struct.vk_vertex** %11, align 8
  %143 = getelementptr inbounds %struct.vk_vertex, %struct.vk_vertex* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 4
  %144 = load float*, float** %10, align 8
  %145 = getelementptr inbounds float, float* %144, i32 1
  store float* %145, float** %10, align 8
  %146 = load float, float* %144, align 4
  %147 = fptosi float %146 to i32
  %148 = load %struct.vk_vertex*, %struct.vk_vertex** %11, align 8
  %149 = getelementptr inbounds %struct.vk_vertex, %struct.vk_vertex* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 3
  store i32 %147, i32* %150, align 4
  %151 = load float*, float** %10, align 8
  %152 = getelementptr inbounds float, float* %151, i32 1
  store float* %152, float** %10, align 8
  %153 = load float, float* %151, align 4
  %154 = fptosi float %153 to i32
  %155 = load %struct.vk_vertex*, %struct.vk_vertex** %11, align 8
  %156 = getelementptr inbounds %struct.vk_vertex, %struct.vk_vertex* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 2
  store i32 %154, i32* %157, align 4
  %158 = load float*, float** %10, align 8
  %159 = getelementptr inbounds float, float* %158, i32 1
  store float* %159, float** %10, align 8
  %160 = load float, float* %158, align 4
  %161 = fptosi float %160 to i32
  %162 = load %struct.vk_vertex*, %struct.vk_vertex** %11, align 8
  %163 = getelementptr inbounds %struct.vk_vertex, %struct.vk_vertex* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 1
  store i32 %161, i32* %164, align 4
  %165 = load float*, float** %10, align 8
  %166 = getelementptr inbounds float, float* %165, i32 1
  store float* %166, float** %10, align 8
  %167 = load float, float* %165, align 4
  %168 = fptosi float %167 to i32
  %169 = load %struct.vk_vertex*, %struct.vk_vertex** %11, align 8
  %170 = getelementptr inbounds %struct.vk_vertex, %struct.vk_vertex* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  store i32 %168, i32* %171, align 4
  br label %172

172:                                              ; preds = %119
  %173 = load i32, i32* %5, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %5, align 4
  %175 = load %struct.vk_vertex*, %struct.vk_vertex** %11, align 8
  %176 = getelementptr inbounds %struct.vk_vertex, %struct.vk_vertex* %175, i32 1
  store %struct.vk_vertex* %176, %struct.vk_vertex** %11, align 8
  br label %111

177:                                              ; preds = %111
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  switch i32 %181, label %182 [
  ]

182:                                              ; preds = %177
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i64 @to_display_pipeline(i32 %189, i32 %193)
  %195 = getelementptr inbounds i32, i32* %186, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = getelementptr inbounds %struct.vk_draw_triangles, %struct.vk_draw_triangles* %13, i32 0, i32 6
  store i32 %196, i32* %197, align 8
  %198 = load %struct.vk_texture*, %struct.vk_texture** %7, align 8
  %199 = getelementptr inbounds %struct.vk_draw_triangles, %struct.vk_draw_triangles* %13, i32 0, i32 5
  store %struct.vk_texture* %198, %struct.vk_texture** %199, align 8
  %200 = load %struct.vk_texture*, %struct.vk_texture** %7, align 8
  %201 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %182
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  br label %226

209:                                              ; preds = %182
  %210 = load %struct.vk_texture*, %struct.vk_texture** %7, align 8
  %211 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %209
  %215 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  br label %224

219:                                              ; preds = %209
  %220 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  br label %224

224:                                              ; preds = %219, %214
  %225 = phi i32 [ %218, %214 ], [ %223, %219 ]
  br label %226

226:                                              ; preds = %224, %204
  %227 = phi i32 [ %208, %204 ], [ %225, %224 ]
  %228 = getelementptr inbounds %struct.vk_draw_triangles, %struct.vk_draw_triangles* %13, i32 0, i32 4
  store i32 %227, i32* %228, align 4
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %226
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  br label %240

237:                                              ; preds = %226
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %239 = call i32 @menu_display_vk_get_default_mvp(%struct.TYPE_26__* %238)
  br label %240

240:                                              ; preds = %237, %233
  %241 = phi i32 [ %236, %233 ], [ %239, %237 ]
  %242 = getelementptr inbounds %struct.vk_draw_triangles, %struct.vk_draw_triangles* %13, i32 0, i32 3
  store i32 %241, i32* %242, align 8
  %243 = getelementptr inbounds %struct.vk_draw_triangles, %struct.vk_draw_triangles* %13, i32 0, i32 0
  store i32 4, i32* %243, align 8
  %244 = getelementptr inbounds %struct.vk_draw_triangles, %struct.vk_draw_triangles* %13, i32 0, i32 2
  store %struct.vk_buffer_range* %6, %struct.vk_buffer_range** %244, align 8
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_24__*, %struct.TYPE_24__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = getelementptr inbounds %struct.vk_draw_triangles, %struct.vk_draw_triangles* %13, i32 0, i32 1
  store i32 %249, i32* %250, align 4
  %251 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %252 = call i32 @vulkan_draw_triangles(%struct.TYPE_25__* %251, %struct.vk_draw_triangles* %13)
  br label %253

253:                                              ; preds = %23, %106, %240
  ret void
}

declare dso_local float* @menu_display_vk_get_default_vertices(...) #1

declare dso_local i8* @menu_display_vk_get_default_tex_coords(...) #1

declare dso_local float* @menu_display_vk_get_default_color(...) #1

declare dso_local i32 @menu_display_vk_viewport(%struct.TYPE_17__*, %struct.TYPE_26__*) #1

declare dso_local i32 @vulkan_buffer_chain_alloc(i32, i32*, i32, %struct.vk_buffer_range*) #1

declare dso_local i64 @to_display_pipeline(i32, i32) #1

declare dso_local i32 @menu_display_vk_get_default_mvp(%struct.TYPE_26__*) #1

declare dso_local i32 @vulkan_draw_triangles(%struct.TYPE_25__*, %struct.vk_draw_triangles*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
