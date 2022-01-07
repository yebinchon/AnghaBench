; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_d3d9.c_menu_display_d3d9_draw.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_d3d9.c_menu_display_d3d9_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { double, double, double, double, i64, %struct.TYPE_15__*, i64, i64, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i32, float*, float*, float* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { double, double, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { i32, i64, i64 }
%struct.TYPE_19__ = type { float, i32, i32, i32, i32, i32 }

@MENU_DISPLAY_PRIM_TRIANGLESTRIP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_16__*)* @menu_display_d3d9_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_display_d3d9_draw(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca [4 x i32], align 16
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %10, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %11, align 8
  store float* null, float** %12, align 8
  store float* null, float** %13, align 8
  store float* null, float** %14, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %21 = icmp ne %struct.TYPE_18__* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = icmp ne %struct.TYPE_17__* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %22, %2
  br label %330

32:                                               ; preds = %25
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %9, align 4
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 5
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add i32 %39, %44
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = icmp ugt i32 %45, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %32
  br label %330

53:                                               ; preds = %32
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i64 @d3d9_vertex_buffer_lock(i32 %58)
  %60 = inttoptr i64 %59 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %60, %struct.TYPE_19__** %11, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %62 = icmp ne %struct.TYPE_19__* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %53
  br label %330

64:                                               ; preds = %53
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %70 = zext i32 %68 to i64
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i64 %70
  store %struct.TYPE_19__* %71, %struct.TYPE_19__** %11, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 5
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load float*, float** %75, align 8
  store float* %76, float** %12, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 5
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  %81 = load float*, float** %80, align 8
  store float* %81, float** %13, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 5
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 3
  %86 = load float*, float** %85, align 8
  store float* %86, float** %14, align 8
  %87 = load float*, float** %12, align 8
  %88 = icmp ne float* %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %64
  %90 = call float* (...) @menu_display_d3d9_get_default_vertices()
  store float* %90, float** %12, align 8
  br label %91

91:                                               ; preds = %89, %64
  %92 = load float*, float** %13, align 8
  %93 = icmp ne float* %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = call float* (...) @menu_display_d3d9_get_default_tex_coords()
  store float* %95, float** %13, align 8
  br label %96

96:                                               ; preds = %94, %91
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %185, %96
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 5
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ult i32 %98, %103
  br i1 %104, label %105, label %188

105:                                              ; preds = %97
  %106 = load float*, float** %14, align 8
  %107 = getelementptr inbounds float, float* %106, i32 1
  store float* %107, float** %14, align 8
  %108 = load float, float* %106, align 4
  %109 = fmul float %108, 2.550000e+02
  %110 = fptosi float %109 to i32
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  store i32 %110, i32* %111, align 16
  %112 = load float*, float** %14, align 8
  %113 = getelementptr inbounds float, float* %112, i32 1
  store float* %113, float** %14, align 8
  %114 = load float, float* %112, align 4
  %115 = fmul float %114, 2.550000e+02
  %116 = fptosi float %115 to i32
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  store i32 %116, i32* %117, align 4
  %118 = load float*, float** %14, align 8
  %119 = getelementptr inbounds float, float* %118, i32 1
  store float* %119, float** %14, align 8
  %120 = load float, float* %118, align 4
  %121 = fmul float %120, 2.550000e+02
  %122 = fptosi float %121 to i32
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  store i32 %122, i32* %123, align 8
  %124 = load float*, float** %14, align 8
  %125 = getelementptr inbounds float, float* %124, i32 1
  store float* %125, float** %14, align 8
  %126 = load float, float* %124, align 4
  %127 = fmul float %126, 2.550000e+02
  %128 = fptosi float %127 to i32
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  store i32 %128, i32* %129, align 4
  %130 = load float*, float** %12, align 8
  %131 = getelementptr inbounds float, float* %130, i32 1
  store float* %131, float** %12, align 8
  %132 = load float, float* %130, align 4
  %133 = fptosi float %132 to i32
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %135 = load i32, i32* %5, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 5
  store i32 %133, i32* %138, align 4
  %139 = load float*, float** %12, align 8
  %140 = getelementptr inbounds float, float* %139, i32 1
  store float* %140, float** %12, align 8
  %141 = load float, float* %139, align 4
  %142 = fptosi float %141 to i32
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %144 = load i32, i32* %5, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 4
  store i32 %142, i32* %147, align 4
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %149 = load i32, i32* %5, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 0
  store float 5.000000e-01, float* %152, align 4
  %153 = load float*, float** %13, align 8
  %154 = getelementptr inbounds float, float* %153, i32 1
  store float* %154, float** %13, align 8
  %155 = load float, float* %153, align 4
  %156 = fptosi float %155 to i32
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %158 = load i32, i32* %5, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 3
  store i32 %156, i32* %161, align 4
  %162 = load float*, float** %13, align 8
  %163 = getelementptr inbounds float, float* %162, i32 1
  store float* %163, float** %13, align 8
  %164 = load float, float* %162, align 4
  %165 = fptosi float %164 to i32
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %167 = load i32, i32* %5, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 2
  store i32 %165, i32* %170, align 4
  %171 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %174 = load i32, i32* %173, align 16
  %175 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @D3DCOLOR_ARGB(i32 %172, i32 %174, i32 %176, i32 %178)
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %181 = load i32, i32* %5, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 1
  store i32 %179, i32* %184, align 4
  br label %185

185:                                              ; preds = %105
  %186 = load i32, i32* %5, align 4
  %187 = add i32 %186, 1
  store i32 %187, i32* %5, align 4
  br label %97

188:                                              ; preds = %97
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = trunc i64 %192 to i32
  %194 = call i32 @d3d9_vertex_buffer_unlock(i32 %193)
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 7
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %188
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %201 = call i64 @menu_display_d3d9_get_default_mvp(%struct.TYPE_16__* %200)
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 7
  store i64 %201, i64* %203, align 8
  br label %204

204:                                              ; preds = %199, %188
  %205 = load i32, i32* %7, align 4
  %206 = call i32 @matrix_4x4_scale(i32 %205, double 2.000000e+00, double 2.000000e+00, i32 0)
  %207 = load i32, i32* %6, align 4
  %208 = call i32 @matrix_4x4_translate(i32 %207, double -1.000000e+00, double -1.000000e+00, i32 0)
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* %7, align 4
  %212 = call i32 @matrix_4x4_multiply(i32 %209, i32 %210, i32 %211)
  %213 = load i32, i32* %7, align 4
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 7
  %216 = load i64, i64* %215, align 8
  %217 = inttoptr i64 %216 to i32*
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %8, align 4
  %220 = call i32 @matrix_4x4_multiply(i32 %213, i32 %218, i32 %219)
  %221 = load i32, i32* %6, align 4
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 0
  %224 = load double, double* %223, align 8
  %225 = fdiv double %224, 2.000000e+00
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 0
  %228 = load double, double* %227, align 8
  %229 = fdiv double %225, %228
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 1
  %232 = load double, double* %231, align 8
  %233 = fdiv double %232, 2.000000e+00
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 1
  %236 = load double, double* %235, align 8
  %237 = fdiv double %233, %236
  %238 = call i32 @matrix_4x4_scale(i32 %221, double %229, double %237, i32 0)
  %239 = load i32, i32* %8, align 4
  %240 = load i32, i32* %6, align 4
  %241 = load i32, i32* %7, align 4
  %242 = call i32 @matrix_4x4_multiply(i32 %239, i32 %240, i32 %241)
  %243 = load i32, i32* %6, align 4
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 2
  %246 = load double, double* %245, align 8
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 0
  %249 = load double, double* %248, align 8
  %250 = fdiv double %249, 2.000000e+00
  %251 = fadd double %246, %250
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 0
  %254 = load double, double* %253, align 8
  %255 = fdiv double %251, %254
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 3
  %258 = load double, double* %257, align 8
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i32 0, i32 1
  %261 = load double, double* %260, align 8
  %262 = fdiv double %261, 2.000000e+00
  %263 = fadd double %258, %262
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 1
  %266 = load double, double* %265, align 8
  %267 = fdiv double %263, %266
  %268 = call i32 @matrix_4x4_translate(i32 %243, double %255, double %267, i32 0)
  %269 = load i32, i32* %7, align 4
  %270 = load i32, i32* %6, align 4
  %271 = load i32, i32* %8, align 4
  %272 = call i32 @matrix_4x4_multiply(i32 %269, i32 %270, i32 %271)
  %273 = load i32, i32* %8, align 4
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %7, align 4
  %278 = call i32 @matrix_4x4_multiply(i32 %273, i32 %276, i32 %277)
  %279 = call i32 @d3d_matrix_transpose(i32* %7, i32* %8)
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @d3d9_set_mvp(i32 %282, i32* %7)
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %285 = icmp ne %struct.TYPE_17__* %284, null
  br i1 %285, label %286, label %295

286:                                              ; preds = %204
  %287 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 6
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %286
  %292 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %294 = call i32 @menu_display_d3d9_bind_texture(%struct.TYPE_17__* %292, %struct.TYPE_18__* %293)
  br label %295

295:                                              ; preds = %291, %286, %204
  %296 = load i32, i32* %9, align 4
  %297 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %297, i32 0, i32 4
  %299 = load i64, i64* %298, align 8
  %300 = call i64 @menu_display_prim_to_d3d9_enum(i64 %299)
  %301 = trunc i64 %300 to i32
  %302 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %303 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %306, i32 0, i32 5
  %308 = load %struct.TYPE_15__*, %struct.TYPE_15__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %311, i32 0, i32 4
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @MENU_DISPLAY_PRIM_TRIANGLESTRIP, align 8
  %315 = icmp eq i64 %313, %314
  %316 = zext i1 %315 to i64
  %317 = select i1 %315, i32 2, i32 0
  %318 = sub i32 %310, %317
  %319 = call i32 @d3d9_draw_primitive(i32 %296, i32 %301, i32 %305, i32 %318)
  %320 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %320, i32 0, i32 5
  %322 = load %struct.TYPE_15__*, %struct.TYPE_15__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %326 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = add i32 %328, %324
  store i32 %329, i32* %327, align 8
  br label %330

330:                                              ; preds = %295, %63, %52, %31
  ret void
}

declare dso_local i64 @d3d9_vertex_buffer_lock(i32) #1

declare dso_local float* @menu_display_d3d9_get_default_vertices(...) #1

declare dso_local float* @menu_display_d3d9_get_default_tex_coords(...) #1

declare dso_local i32 @D3DCOLOR_ARGB(i32, i32, i32, i32) #1

declare dso_local i32 @d3d9_vertex_buffer_unlock(i32) #1

declare dso_local i64 @menu_display_d3d9_get_default_mvp(%struct.TYPE_16__*) #1

declare dso_local i32 @matrix_4x4_scale(i32, double, double, i32) #1

declare dso_local i32 @matrix_4x4_translate(i32, double, double, i32) #1

declare dso_local i32 @matrix_4x4_multiply(i32, i32, i32) #1

declare dso_local i32 @d3d_matrix_transpose(i32*, i32*) #1

declare dso_local i32 @d3d9_set_mvp(i32, i32*) #1

declare dso_local i32 @menu_display_d3d9_bind_texture(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @d3d9_draw_primitive(i32, i32, i32, i32) #1

declare dso_local i64 @menu_display_prim_to_d3d9_enum(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
