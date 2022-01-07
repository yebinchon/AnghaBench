; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_d3d8.c_menu_display_d3d8_draw.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_d3d8.c_menu_display_d3d8_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { double, double, double, double, i64, %struct.TYPE_17__*, i64, i64, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i32, float*, float*, float* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_18__ = type { double, double, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i64 }
%struct.TYPE_21__ = type { float, i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }

@MENU_DISPLAY_PRIM_TRIANGLESTRIP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_18__*)* @menu_display_d3d8_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_display_d3d8_draw(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca [4 x i32], align 16
  %15 = alloca %struct.TYPE_22__, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %19, %struct.TYPE_20__** %9, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %10, align 8
  store float* null, float** %11, align 8
  store float* null, float** %12, align 8
  store float* null, float** %13, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %21 = icmp ne %struct.TYPE_20__* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %24 = icmp ne %struct.TYPE_19__* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %22, %2
  br label %359

32:                                               ; preds = %25
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 5
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add i32 %36, %41
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = icmp ugt i32 %42, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %32
  br label %359

50:                                               ; preds = %32
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @d3d8_vertex_buffer_lock(i32 %54)
  %56 = inttoptr i64 %55 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %56, %struct.TYPE_21__** %10, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %58 = icmp ne %struct.TYPE_21__* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  br label %359

60:                                               ; preds = %50
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %66 = zext i32 %64 to i64
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i64 %66
  store %struct.TYPE_21__* %67, %struct.TYPE_21__** %10, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 5
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = load float*, float** %71, align 8
  store float* %72, float** %11, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 5
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 2
  %77 = load float*, float** %76, align 8
  store float* %77, float** %12, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 5
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 3
  %82 = load float*, float** %81, align 8
  store float* %82, float** %13, align 8
  %83 = load float*, float** %11, align 8
  %84 = icmp ne float* %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %60
  %86 = call float* (...) @menu_display_d3d8_get_default_vertices()
  store float* %86, float** %11, align 8
  br label %87

87:                                               ; preds = %85, %60
  %88 = load float*, float** %12, align 8
  %89 = icmp ne float* %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  %91 = call float* (...) @menu_display_d3d8_get_default_tex_coords()
  store float* %91, float** %12, align 8
  br label %92

92:                                               ; preds = %90, %87
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %214, %92
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 5
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ult i32 %94, %99
  br i1 %100, label %101, label %217

101:                                              ; preds = %93
  %102 = load float*, float** %13, align 8
  %103 = getelementptr inbounds float, float* %102, i32 1
  store float* %103, float** %13, align 8
  %104 = load float, float* %102, align 4
  %105 = fmul float %104, 2.550000e+02
  %106 = fptosi float %105 to i32
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  store i32 %106, i32* %107, align 16
  %108 = load float*, float** %13, align 8
  %109 = getelementptr inbounds float, float* %108, i32 1
  store float* %109, float** %13, align 8
  %110 = load float, float* %108, align 4
  %111 = fmul float %110, 2.550000e+02
  %112 = fptosi float %111 to i32
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  store i32 %112, i32* %113, align 4
  %114 = load float*, float** %13, align 8
  %115 = getelementptr inbounds float, float* %114, i32 1
  store float* %115, float** %13, align 8
  %116 = load float, float* %114, align 4
  %117 = fmul float %116, 2.550000e+02
  %118 = fptosi float %117 to i32
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  store i32 %118, i32* %119, align 8
  %120 = load float*, float** %13, align 8
  %121 = getelementptr inbounds float, float* %120, i32 1
  store float* %121, float** %13, align 8
  %122 = load float, float* %120, align 4
  %123 = fmul float %122, 2.550000e+02
  %124 = fptosi float %123 to i32
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  store i32 %124, i32* %125, align 4
  %126 = load float*, float** %11, align 8
  %127 = getelementptr inbounds float, float* %126, i32 1
  store float* %127, float** %11, align 8
  %128 = load float, float* %126, align 4
  %129 = fptosi float %128 to i32
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %131 = load i32, i32* %5, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 5
  store i32 %129, i32* %134, align 4
  %135 = load float*, float** %11, align 8
  %136 = getelementptr inbounds float, float* %135, i32 1
  store float* %136, float** %11, align 8
  %137 = load float, float* %135, align 4
  %138 = fptosi float %137 to i32
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %140 = load i32, i32* %5, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 4
  store i32 %138, i32* %143, align 4
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %145 = load i32, i32* %5, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 0
  store float 5.000000e-01, float* %148, align 4
  %149 = load float*, float** %12, align 8
  %150 = getelementptr inbounds float, float* %149, i32 1
  store float* %150, float** %12, align 8
  %151 = load float, float* %149, align 4
  %152 = fptosi float %151 to i32
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %154 = load i32, i32* %5, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 3
  store i32 %152, i32* %157, align 4
  %158 = load float*, float** %12, align 8
  %159 = getelementptr inbounds float, float* %158, i32 1
  store float* %159, float** %12, align 8
  %160 = load float, float* %158, align 4
  %161 = fptosi float %160 to i32
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %163 = load i32, i32* %5, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 2
  store i32 %161, i32* %166, align 4
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 6
  %169 = load i64, i64* %168, align 8
  %170 = inttoptr i64 %169 to i8*
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %199

172:                                              ; preds = %101
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 6
  %175 = load i64, i64* %174, align 8
  %176 = inttoptr i64 %175 to i8*
  %177 = call i64 @d3d8_texture_get_level_desc(i8* %176, i32 0, %struct.TYPE_22__* %15)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %198

179:                                              ; preds = %172
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %183 = load i32, i32* %5, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = mul nsw i32 %187, %181
  store i32 %188, i32* %186, align 4
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %192 = load i32, i32* %5, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = mul nsw i32 %196, %190
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %179, %172
  br label %199

199:                                              ; preds = %198, %101
  %200 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %201 = load i32, i32* %200, align 4
  %202 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %203 = load i32, i32* %202, align 16
  %204 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  %205 = load i32, i32* %204, align 4
  %206 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @D3DCOLOR_ARGB(i32 %201, i32 %203, i32 %205, i32 %207)
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %210 = load i32, i32* %5, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 1
  store i32 %208, i32* %213, align 4
  br label %214

214:                                              ; preds = %199
  %215 = load i32, i32* %5, align 4
  %216 = add i32 %215, 1
  store i32 %216, i32* %5, align 4
  br label %93

217:                                              ; preds = %93
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @d3d8_vertex_buffer_unlock(i32 %221)
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 7
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %232, label %227

227:                                              ; preds = %217
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %229 = call i64 @menu_display_d3d8_get_default_mvp(%struct.TYPE_18__* %228)
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 7
  store i64 %229, i64* %231, align 8
  br label %232

232:                                              ; preds = %227, %217
  %233 = load i32, i32* %7, align 4
  %234 = call i32 @matrix_4x4_scale(i32 %233, double 2.000000e+00, double 2.000000e+00, i32 0)
  %235 = load i32, i32* %6, align 4
  %236 = call i32 @matrix_4x4_translate(i32 %235, double -1.000000e+00, double -1.000000e+00, i32 0)
  %237 = load i32, i32* %8, align 4
  %238 = load i32, i32* %6, align 4
  %239 = load i32, i32* %7, align 4
  %240 = call i32 @matrix_4x4_multiply(i32 %237, i32 %238, i32 %239)
  %241 = load i32, i32* %7, align 4
  %242 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %242, i32 0, i32 7
  %244 = load i64, i64* %243, align 8
  %245 = inttoptr i64 %244 to i32*
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %8, align 4
  %248 = call i32 @matrix_4x4_multiply(i32 %241, i32 %246, i32 %247)
  %249 = load i32, i32* %6, align 4
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 0
  %252 = load double, double* %251, align 8
  %253 = fdiv double %252, 2.000000e+00
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %254, i32 0, i32 0
  %256 = load double, double* %255, align 8
  %257 = fdiv double %253, %256
  %258 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 1
  %260 = load double, double* %259, align 8
  %261 = fdiv double %260, 2.000000e+00
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 1
  %264 = load double, double* %263, align 8
  %265 = fdiv double %261, %264
  %266 = call i32 @matrix_4x4_scale(i32 %249, double %257, double %265, i32 0)
  %267 = load i32, i32* %8, align 4
  %268 = load i32, i32* %6, align 4
  %269 = load i32, i32* %7, align 4
  %270 = call i32 @matrix_4x4_multiply(i32 %267, i32 %268, i32 %269)
  %271 = load i32, i32* %6, align 4
  %272 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %272, i32 0, i32 2
  %274 = load double, double* %273, align 8
  %275 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %275, i32 0, i32 0
  %277 = load double, double* %276, align 8
  %278 = fdiv double %277, 2.000000e+00
  %279 = fadd double %274, %278
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i32 0, i32 0
  %282 = load double, double* %281, align 8
  %283 = fdiv double %279, %282
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %284, i32 0, i32 3
  %286 = load double, double* %285, align 8
  %287 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %287, i32 0, i32 1
  %289 = load double, double* %288, align 8
  %290 = fdiv double %289, 2.000000e+00
  %291 = fadd double %286, %290
  %292 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %292, i32 0, i32 1
  %294 = load double, double* %293, align 8
  %295 = fdiv double %291, %294
  %296 = call i32 @matrix_4x4_translate(i32 %271, double %283, double %295, i32 0)
  %297 = load i32, i32* %7, align 4
  %298 = load i32, i32* %6, align 4
  %299 = load i32, i32* %8, align 4
  %300 = call i32 @matrix_4x4_multiply(i32 %297, i32 %298, i32 %299)
  %301 = load i32, i32* %8, align 4
  %302 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %303 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* %7, align 4
  %306 = call i32 @matrix_4x4_multiply(i32 %301, i32 %304, i32 %305)
  %307 = call i32 @d3d_matrix_transpose(i32* %7, i32* %8)
  %308 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %309 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @d3d8_set_mvp(i32 %310, i32* %7)
  %312 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %313 = icmp ne %struct.TYPE_19__* %312, null
  br i1 %313, label %314, label %323

314:                                              ; preds = %232
  %315 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %315, i32 0, i32 6
  %317 = load i64, i64* %316, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %314
  %320 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %321 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %322 = call i32 @menu_display_d3d8_bind_texture(%struct.TYPE_19__* %320, %struct.TYPE_20__* %321)
  br label %323

323:                                              ; preds = %319, %314, %232
  %324 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %325 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  %327 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %328 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %327, i32 0, i32 4
  %329 = load i64, i64* %328, align 8
  %330 = call i32 @menu_display_prim_to_d3d8_enum(i64 %329)
  %331 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %332 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %336 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %335, i32 0, i32 5
  %337 = load %struct.TYPE_17__*, %struct.TYPE_17__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %341 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %340, i32 0, i32 4
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* @MENU_DISPLAY_PRIM_TRIANGLESTRIP, align 8
  %344 = icmp eq i64 %342, %343
  %345 = zext i1 %344 to i64
  %346 = select i1 %344, i32 2, i32 0
  %347 = sub i32 %339, %346
  %348 = call i32 @d3d8_draw_primitive(i32 %326, i32 %330, i32 %334, i32 %347)
  %349 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %349, i32 0, i32 5
  %351 = load %struct.TYPE_17__*, %struct.TYPE_17__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %355 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = add i32 %357, %353
  store i32 %358, i32* %356, align 8
  br label %359

359:                                              ; preds = %323, %59, %49, %31
  ret void
}

declare dso_local i64 @d3d8_vertex_buffer_lock(i32) #1

declare dso_local float* @menu_display_d3d8_get_default_vertices(...) #1

declare dso_local float* @menu_display_d3d8_get_default_tex_coords(...) #1

declare dso_local i64 @d3d8_texture_get_level_desc(i8*, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @D3DCOLOR_ARGB(i32, i32, i32, i32) #1

declare dso_local i32 @d3d8_vertex_buffer_unlock(i32) #1

declare dso_local i64 @menu_display_d3d8_get_default_mvp(%struct.TYPE_18__*) #1

declare dso_local i32 @matrix_4x4_scale(i32, double, double, i32) #1

declare dso_local i32 @matrix_4x4_translate(i32, double, double, i32) #1

declare dso_local i32 @matrix_4x4_multiply(i32, i32, i32) #1

declare dso_local i32 @d3d_matrix_transpose(i32*, i32*) #1

declare dso_local i32 @d3d8_set_mvp(i32, i32*) #1

declare dso_local i32 @menu_display_d3d8_bind_texture(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @d3d8_draw_primitive(i32, i32, i32, i32) #1

declare dso_local i32 @menu_display_prim_to_d3d8_enum(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
