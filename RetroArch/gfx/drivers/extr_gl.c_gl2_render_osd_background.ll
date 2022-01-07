; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl2_render_osd_background.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl2_render_osd_background.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i32 (i32, %struct.uniform_info*, i32*)*, i32 (i32, i32*)*, i32 (i32, %struct.TYPE_24__*)*, i32 (%struct.TYPE_16__*, i32, i32, i32)* }
%struct.uniform_info = type { i32, %struct.TYPE_22__, %struct.TYPE_19__, i64, i64, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { float, float, float, float }
%struct.TYPE_19__ = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { float*, float*, float*, float*, i32 }
%struct.TYPE_23__ = type { float, float, i64, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { float, float }
%struct.TYPE_17__ = type { float, float, float }

@VIDEO_SHADER_STOCK_BLEND = common dso_local global i32 0, align 4
@GL_BLEND = common dso_local global i32 0, align 4
@GL_SRC_ALPHA = common dso_local global i32 0, align 4
@GL_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@GL_FUNC_ADD = common dso_local global i32 0, align 4
@UNIFORM_4F = common dso_local global i32 0, align 4
@SHADER_PROGRAM_FRAGMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"bgcolor\00", align 1
@GL_TRIANGLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_23__*, i8*)* @gl2_render_osd_background to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl2_render_osd_background(%struct.TYPE_16__* %0, %struct.TYPE_23__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_24__, align 8
  %8 = alloca %struct.uniform_info, align 8
  %9 = alloca [4 x float], align 16
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 6, i32* %10, align 4
  %21 = call i64 @calloc(i32 24, i32 4)
  %22 = inttoptr i64 %21 to float*
  store float* %22, float** %11, align 8
  %23 = call i64 @malloc(i32 48)
  %24 = inttoptr i64 %23 to float*
  store float* %24, float** %12, align 8
  %25 = call %struct.TYPE_25__* (...) @config_get_ptr()
  store %struct.TYPE_25__* %25, %struct.TYPE_25__** %13, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = trunc i64 %28 to i32
  %30 = call i32 @font_driver_get_message_width(i32* null, i8* %26, i32 %29, float 1.000000e+00)
  store i32 %30, i32* %14, align 4
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 0
  %33 = load float, float* %32, align 8
  store float %33, float* %15, align 4
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 1
  %36 = load float, float* %35, align 4
  store float %36, float* %16, align 4
  %37 = load i32, i32* %14, align 4
  %38 = sitofp i32 %37 to float
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = sitofp i64 %41 to float
  %43 = fdiv float %38, %42
  store float %43, float* %17, align 4
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load float, float* %46, align 4
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = sitofp i64 %50 to float
  %52 = fdiv float %47, %51
  store float %52, float* %18, align 4
  store float 0x3F747AE140000000, float* %19, align 4
  store float 0x3F747AE140000000, float* %20, align 4
  %53 = load float, float* %19, align 4
  %54 = load float, float* %15, align 4
  %55 = fsub float %54, %53
  store float %55, float* %15, align 4
  %56 = load float, float* %20, align 4
  %57 = load float, float* %16, align 4
  %58 = fsub float %57, %56
  store float %58, float* %16, align 4
  %59 = load float, float* %19, align 4
  %60 = load float, float* %17, align 4
  %61 = fadd float %60, %59
  store float %61, float* %17, align 4
  %62 = load float, float* %20, align 4
  %63 = load float, float* %18, align 4
  %64 = fadd float %63, %62
  store float %64, float* %18, align 4
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load float, float* %67, align 4
  %69 = fdiv float %68, 2.550000e+02
  %70 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 0
  store float %69, float* %70, align 16
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load float, float* %73, align 4
  %75 = fdiv float %74, 2.550000e+02
  %76 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 1
  store float %75, float* %76, align 4
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 2
  %80 = load float, float* %79, align 4
  %81 = fdiv float %80, 2.550000e+02
  %82 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 2
  store float %81, float* %82, align 8
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  %86 = load float, float* %85, align 4
  %87 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 3
  store float %86, float* %87, align 4
  %88 = load float, float* %15, align 4
  %89 = load float*, float** %12, align 8
  %90 = getelementptr inbounds float, float* %89, i64 0
  store float %88, float* %90, align 4
  %91 = load float, float* %16, align 4
  %92 = load float*, float** %12, align 8
  %93 = getelementptr inbounds float, float* %92, i64 1
  store float %91, float* %93, align 4
  %94 = load float, float* %15, align 4
  %95 = load float*, float** %12, align 8
  %96 = getelementptr inbounds float, float* %95, i64 2
  store float %94, float* %96, align 4
  %97 = load float, float* %16, align 4
  %98 = load float, float* %18, align 4
  %99 = fadd float %97, %98
  %100 = load float*, float** %12, align 8
  %101 = getelementptr inbounds float, float* %100, i64 3
  store float %99, float* %101, align 4
  %102 = load float, float* %15, align 4
  %103 = load float, float* %17, align 4
  %104 = fadd float %102, %103
  %105 = load float*, float** %12, align 8
  %106 = getelementptr inbounds float, float* %105, i64 4
  store float %104, float* %106, align 4
  %107 = load float, float* %16, align 4
  %108 = load float, float* %18, align 4
  %109 = fadd float %107, %108
  %110 = load float*, float** %12, align 8
  %111 = getelementptr inbounds float, float* %110, i64 5
  store float %109, float* %111, align 4
  %112 = load float, float* %15, align 4
  %113 = load float*, float** %12, align 8
  %114 = getelementptr inbounds float, float* %113, i64 6
  store float %112, float* %114, align 4
  %115 = load float, float* %16, align 4
  %116 = load float*, float** %12, align 8
  %117 = getelementptr inbounds float, float* %116, i64 7
  store float %115, float* %117, align 4
  %118 = load float, float* %15, align 4
  %119 = load float, float* %17, align 4
  %120 = fadd float %118, %119
  %121 = load float*, float** %12, align 8
  %122 = getelementptr inbounds float, float* %121, i64 8
  store float %120, float* %122, align 4
  %123 = load float, float* %16, align 4
  %124 = load float, float* %18, align 4
  %125 = fadd float %123, %124
  %126 = load float*, float** %12, align 8
  %127 = getelementptr inbounds float, float* %126, i64 9
  store float %125, float* %127, align 4
  %128 = load float, float* %15, align 4
  %129 = load float, float* %17, align 4
  %130 = fadd float %128, %129
  %131 = load float*, float** %12, align 8
  %132 = getelementptr inbounds float, float* %131, i64 10
  store float %130, float* %132, align 4
  %133 = load float, float* %16, align 4
  %134 = load float*, float** %12, align 8
  %135 = getelementptr inbounds float, float* %134, i64 11
  store float %133, float* %135, align 4
  %136 = load float*, float** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  store float* %136, float** %137, align 8
  %138 = load float*, float** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 1
  store float* %138, float** %139, align 8
  %140 = load float*, float** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 2
  store float* %140, float** %141, align 8
  %142 = load float*, float** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 3
  store float* %142, float** %143, align 8
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 4
  store i32 6, i32* %144, align 8
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @video_driver_set_viewport(i64 %147, i64 %150, i32 1, i32 0)
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 3
  %156 = load i32 (%struct.TYPE_16__*, i32, i32, i32)*, i32 (%struct.TYPE_16__*, i32, i32, i32)** %155, align 8
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @VIDEO_SHADER_STOCK_BLEND, align 4
  %162 = call i32 %156(%struct.TYPE_16__* %157, i32 %160, i32 %161, i32 1)
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 2
  %167 = load i32 (i32, %struct.TYPE_24__*)*, i32 (i32, %struct.TYPE_24__*)** %166, align 8
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 %167(i32 %170, %struct.TYPE_24__* %7)
  %172 = load i32, i32* @GL_BLEND, align 4
  %173 = call i32 @glEnable(i32 %172)
  %174 = load i32, i32* @GL_SRC_ALPHA, align 4
  %175 = load i32, i32* @GL_ONE_MINUS_SRC_ALPHA, align 4
  %176 = call i32 @glBlendFunc(i32 %174, i32 %175)
  %177 = load i32, i32* @GL_FUNC_ADD, align 4
  %178 = call i32 @glBlendEquation(i32 %177)
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 1
  %183 = load i32 (i32, i32*)*, i32 (i32, i32*)** %182, align 8
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 2
  %189 = call i32 %183(i32 %186, i32* %188)
  %190 = load i32, i32* @UNIFORM_4F, align 4
  %191 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %8, i32 0, i32 5
  store i32 %190, i32* %191, align 8
  %192 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %8, i32 0, i32 0
  store i32 1, i32* %192, align 8
  %193 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %8, i32 0, i32 4
  store i64 0, i64* %193, align 8
  %194 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %8, i32 0, i32 3
  store i64 0, i64* %194, align 8
  %195 = load i32, i32* @SHADER_PROGRAM_FRAGMENT, align 4
  %196 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %8, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 4
  store i32 %195, i32* %197, align 4
  %198 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %8, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %199, align 8
  %200 = load i32, i32* @VIDEO_SHADER_STOCK_BLEND, align 4
  %201 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %8, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 3
  store i32 %200, i32* %202, align 8
  %203 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %8, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 1
  store i32 1, i32* %204, align 8
  %205 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %8, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 2
  store i32 1, i32* %206, align 4
  %207 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 0
  %208 = load float, float* %207, align 16
  %209 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %8, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 0
  store float %208, float* %211, align 4
  %212 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 1
  %213 = load float, float* %212, align 4
  %214 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %8, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 1
  store float %213, float* %216, align 4
  %217 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 2
  %218 = load float, float* %217, align 8
  %219 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %8, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 2
  store float %218, float* %221, align 4
  %222 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 3
  %223 = load float, float* %222, align 4
  %224 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %8, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 3
  store float %223, float* %226, align 4
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 0
  %231 = load i32 (i32, %struct.uniform_info*, i32*)*, i32 (i32, %struct.uniform_info*, i32*)** %230, align 8
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32 %231(i32 %234, %struct.uniform_info* %8, i32* null)
  %236 = load i32, i32* @GL_TRIANGLES, align 4
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 4
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @glDrawArrays(i32 %236, i32 0, i32 %238)
  %240 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %8, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 0
  store float 0.000000e+00, float* %242, align 4
  %243 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %8, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 1
  store float 0.000000e+00, float* %245, align 4
  %246 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %8, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 2
  store float 0.000000e+00, float* %248, align 4
  %249 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %8, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 3
  store float 0.000000e+00, float* %251, align 4
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %254, i32 0, i32 0
  %256 = load i32 (i32, %struct.uniform_info*, i32*)*, i32 (i32, %struct.uniform_info*, i32*)** %255, align 8
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = call i32 %256(i32 %259, %struct.uniform_info* %8, i32* null)
  %261 = load float*, float** %11, align 8
  %262 = call i32 @free(float* %261)
  %263 = load float*, float** %12, align 8
  %264 = call i32 @free(float* %263)
  %265 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %265, i32 0, i32 3
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %268, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = call i32 @video_driver_set_viewport(i64 %267, i64 %270, i32 0, i32 1)
  ret void
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local %struct.TYPE_25__* @config_get_ptr(...) #1

declare dso_local i32 @font_driver_get_message_width(i32*, i8*, i32, float) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @video_driver_set_viewport(i64, i64, i32, i32) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glBlendFunc(i32, i32) #1

declare dso_local i32 @glBlendEquation(i32) #1

declare dso_local i32 @glDrawArrays(i32, i32, i32) #1

declare dso_local i32 @free(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
