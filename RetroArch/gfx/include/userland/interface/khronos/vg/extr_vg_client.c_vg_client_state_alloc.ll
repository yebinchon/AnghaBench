; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/vg/extr_vg_client.c_vg_client_state_alloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/vg/extr_vg_client.c_vg_client_state_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float, float, i32, i32, float*, float*, i32, float*, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i64, i32, i32, i64, i32, i32, i32, %struct.TYPE_5__*, i32, i32*, i32*, i32* }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"VG_CLIENT_STATE_T\00", align 1
@VG_MATRIX_PATH_USER_TO_SURFACE = common dso_local global i32 0, align 4
@VG_EVEN_ODD = common dso_local global i32 0, align 4
@VG_CAP_BUTT = common dso_local global i32 0, align 4
@VG_JOIN_MITER = common dso_local global i32 0, align 4
@VG_IMAGE_QUALITY_FASTER = common dso_local global i32 0, align 4
@VG_DRAW_IMAGE_NORMAL = common dso_local global i32 0, align 4
@VG_RENDERING_QUALITY_BETTER = common dso_local global i32 0, align 4
@VG_INVALID_HANDLE = common dso_local global i8* null, align 8
@VG_BLEND_SRC_OVER = common dso_local global i32 0, align 4
@VG_RED = common dso_local global i32 0, align 4
@VG_GREEN = common dso_local global i32 0, align 4
@VG_BLUE = common dso_local global i32 0, align 4
@VG_ALPHA = common dso_local global i32 0, align 4
@VG_PIXEL_LAYOUT_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @vg_client_state_alloc(i32* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = call i64 @khrn_platform_malloc(i32 184, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %7 = inttoptr i64 %6 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %176

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @vg_client_shared_state_acquire(i32* %12)
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 29
  store i32* %14, i32** %16, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 28
  store i32* null, i32** %18, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 27
  store i32* null, i32** %20, align 8
  %21 = load i32, i32* @VG_MATRIX_PATH_USER_TO_SURFACE, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 26
  store i32 %21, i32* %23, align 8
  store i64 0, i64* %4, align 8
  br label %24

24:                                               ; preds = %46, %11
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 25
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = call i64 @ARR_COUNT(%struct.TYPE_5__* %28)
  %30 = icmp ne i64 %25, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %24
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 25
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = call i32 @vg_mat3x3_set_identity(i32* %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 25
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = call i32 @vg_mat3x3_set_identity(i32* %44)
  br label %46

46:                                               ; preds = %31
  %47 = load i64, i64* %4, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %4, align 8
  br label %24

49:                                               ; preds = %24
  %50 = load i32, i32* @VG_EVEN_ODD, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 24
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store float 1.000000e+00, float* %54, align 8
  %55 = load i32, i32* @VG_CAP_BUTT, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 23
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @VG_JOIN_MITER, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 22
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store float 4.000000e+00, float* %62, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 21
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  store float 0.000000e+00, float* %66, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  store i32 0, i32* %68, align 4
  %69 = load i32, i32* @VG_IMAGE_QUALITY_FASTER, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 20
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @VG_DRAW_IMAGE_NORMAL, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 19
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 4
  store i32 0, i32* %76, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 18
  store i64 0, i64* %78, align 8
  %79 = load i32, i32* @VG_RENDERING_QUALITY_BETTER, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 17
  store i32 %79, i32* %81, align 8
  %82 = load i8*, i8** @VG_INVALID_HANDLE, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 16
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** @VG_INVALID_HANDLE, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 15
  store i8* %85, i8** %87, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 5
  %90 = load float*, float** %89, align 8
  %91 = getelementptr inbounds float, float* %90, i64 0
  store float 0.000000e+00, float* %91, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 5
  %94 = load float*, float** %93, align 8
  %95 = getelementptr inbounds float, float* %94, i64 1
  store float 0.000000e+00, float* %95, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 5
  %98 = load float*, float** %97, align 8
  %99 = getelementptr inbounds float, float* %98, i64 2
  store float 0.000000e+00, float* %99, align 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 5
  %102 = load float*, float** %101, align 8
  %103 = getelementptr inbounds float, float* %102, i64 3
  store float 0.000000e+00, float* %103, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 6
  %106 = load float*, float** %105, align 8
  %107 = getelementptr inbounds float, float* %106, i64 0
  store float 0.000000e+00, float* %107, align 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 6
  %110 = load float*, float** %109, align 8
  %111 = getelementptr inbounds float, float* %110, i64 1
  store float 0.000000e+00, float* %111, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 6
  %114 = load float*, float** %113, align 8
  %115 = getelementptr inbounds float, float* %114, i64 2
  store float 0.000000e+00, float* %115, align 4
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 6
  %118 = load float*, float** %117, align 8
  %119 = getelementptr inbounds float, float* %118, i64 3
  store float 0.000000e+00, float* %119, align 4
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 7
  store i32 0, i32* %121, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 8
  %124 = load float*, float** %123, align 8
  %125 = getelementptr inbounds float, float* %124, i64 0
  store float 1.000000e+00, float* %125, align 4
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 8
  %128 = load float*, float** %127, align 8
  %129 = getelementptr inbounds float, float* %128, i64 1
  store float 1.000000e+00, float* %129, align 4
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 8
  %132 = load float*, float** %131, align 8
  %133 = getelementptr inbounds float, float* %132, i64 2
  store float 1.000000e+00, float* %133, align 4
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 8
  %136 = load float*, float** %135, align 8
  %137 = getelementptr inbounds float, float* %136, i64 3
  store float 1.000000e+00, float* %137, align 4
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 8
  %140 = load float*, float** %139, align 8
  %141 = getelementptr inbounds float, float* %140, i64 4
  store float 0.000000e+00, float* %141, align 4
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 8
  %144 = load float*, float** %143, align 8
  %145 = getelementptr inbounds float, float* %144, i64 5
  store float 0.000000e+00, float* %145, align 4
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 8
  %148 = load float*, float** %147, align 8
  %149 = getelementptr inbounds float, float* %148, i64 6
  store float 0.000000e+00, float* %149, align 4
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 8
  %152 = load float*, float** %151, align 8
  %153 = getelementptr inbounds float, float* %152, i64 7
  store float 0.000000e+00, float* %153, align 4
  %154 = load i32, i32* @VG_BLEND_SRC_OVER, align 4
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 14
  store i32 %154, i32* %156, align 4
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 9
  store i32 0, i32* %158, align 8
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 10
  store i32 0, i32* %160, align 4
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 11
  store i32 0, i32* %162, align 8
  %163 = load i32, i32* @VG_RED, align 4
  %164 = load i32, i32* @VG_GREEN, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @VG_BLUE, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @VG_ALPHA, align 4
  %169 = or i32 %167, %168
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 12
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* @VG_PIXEL_LAYOUT_UNKNOWN, align 4
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 13
  store i32 %172, i32* %174, align 8
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %175, %struct.TYPE_4__** %2, align 8
  br label %176

176:                                              ; preds = %49, %10
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %177
}

declare dso_local i64 @khrn_platform_malloc(i32, i8*) #1

declare dso_local i32 @vg_client_shared_state_acquire(i32*) #1

declare dso_local i64 @ARR_COUNT(%struct.TYPE_5__*) #1

declare dso_local i32 @vg_mat3x3_set_identity(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
