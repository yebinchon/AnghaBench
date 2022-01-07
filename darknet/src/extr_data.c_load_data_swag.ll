; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_data.c_load_data_swag.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_data.c_load_data_swag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_16__, %struct.TYPE_13__, i64, i32 }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32, i32* }
%struct.TYPE_14__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_data_swag(%struct.TYPE_15__* noalias sret %0, i8** %1, i32 %2, i32 %3, float %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_14__, align 4
  %13 = alloca { i64, i32 }, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_14__, align 4
  %30 = alloca { i64, i32 }, align 4
  %31 = alloca { i64, i32 }, align 8
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca %struct.TYPE_14__, align 4
  %35 = alloca { i64, i32 }, align 4
  %36 = alloca { i64, i32 }, align 8
  %37 = alloca { i64, i32 }, align 4
  %38 = alloca { i64, i32 }, align 4
  %39 = alloca { i64, i32 }, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store float %4, float* %9, align 4
  %40 = call i32 (...) @rand()
  %41 = load i32, i32* %7, align 4
  %42 = srem i32 %40, %41
  store i32 %42, i32* %10, align 4
  %43 = load i8**, i8*** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %11, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call { i64, i32 } @load_image_color(i8* %48, i32 0, i32 0)
  store { i64, i32 } %49, { i64, i32 }* %13, align 8
  %50 = bitcast { i64, i32 }* %13 to i8*
  %51 = bitcast %struct.TYPE_14__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 8 %50, i64 12, i1 false)
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %14, align 4
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %15, align 4
  %56 = bitcast %struct.TYPE_15__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %56, i8 0, i64 48, i1 false)
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 4
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* %15, align 4
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = load i32, i32* %14, align 4
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32* @calloc(i32 %66, i32 8)
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  store i32* %67, i32** %69, align 8
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %15, align 4
  %72 = mul nsw i32 %70, %71
  %73 = mul nsw i32 %72, 3
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 4, %76
  %78 = mul nsw i32 %77, 90
  store i32 %78, i32* %16, align 4
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 2
  %80 = load i32, i32* %16, align 4
  %81 = call i32* @make_matrix(i32 1, i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  store i32* %81, i32** %82, align 8
  %83 = bitcast %struct.TYPE_16__* %79 to i8*
  %84 = bitcast %struct.TYPE_16__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 %84, i64 8, i1 false)
  %85 = load i32, i32* %15, align 4
  %86 = sitofp i32 %85 to float
  %87 = load float, float* %9, align 4
  %88 = fmul float %86, %87
  %89 = fptosi float %88 to i32
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %14, align 4
  %91 = sitofp i32 %90 to float
  %92 = load float, float* %9, align 4
  %93 = fmul float %91, %92
  %94 = fptosi float %93 to i32
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* %18, align 4
  %96 = sub nsw i32 0, %95
  %97 = load i32, i32* %18, align 4
  %98 = call i32 @rand_uniform(i32 %96, i32 %97)
  store i32 %98, i32* %20, align 4
  %99 = load i32, i32* %18, align 4
  %100 = sub nsw i32 0, %99
  %101 = load i32, i32* %18, align 4
  %102 = call i32 @rand_uniform(i32 %100, i32 %101)
  store i32 %102, i32* %21, align 4
  %103 = load i32, i32* %19, align 4
  %104 = sub nsw i32 0, %103
  %105 = load i32, i32* %19, align 4
  %106 = call i32 @rand_uniform(i32 %104, i32 %105)
  store i32 %106, i32* %22, align 4
  %107 = load i32, i32* %19, align 4
  %108 = sub nsw i32 0, %107
  %109 = load i32, i32* %19, align 4
  %110 = call i32 @rand_uniform(i32 %108, i32 %109)
  store i32 %110, i32* %23, align 4
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %20, align 4
  %113 = sub nsw i32 %111, %112
  %114 = load i32, i32* %21, align 4
  %115 = sub nsw i32 %113, %114
  store i32 %115, i32* %24, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %22, align 4
  %118 = sub nsw i32 %116, %117
  %119 = load i32, i32* %23, align 4
  %120 = sub nsw i32 %118, %119
  store i32 %120, i32* %25, align 4
  %121 = load i32, i32* %24, align 4
  %122 = sitofp i32 %121 to float
  %123 = load i32, i32* %15, align 4
  %124 = sitofp i32 %123 to float
  %125 = fdiv float %122, %124
  store float %125, float* %26, align 4
  %126 = load i32, i32* %25, align 4
  %127 = sitofp i32 %126 to float
  %128 = load i32, i32* %14, align 4
  %129 = sitofp i32 %128 to float
  %130 = fdiv float %127, %129
  store float %130, float* %27, align 4
  %131 = call i32 (...) @rand()
  %132 = srem i32 %131, 2
  store i32 %132, i32* %28, align 4
  %133 = load i32, i32* %20, align 4
  %134 = load i32, i32* %22, align 4
  %135 = load i32, i32* %24, align 4
  %136 = load i32, i32* %25, align 4
  %137 = bitcast { i64, i32 }* %30 to i8*
  %138 = bitcast %struct.TYPE_14__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %137, i8* align 4 %138, i64 12, i1 false)
  %139 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %30, i32 0, i32 0
  %140 = load i64, i64* %139, align 4
  %141 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %30, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call { i64, i32 } @crop_image(i64 %140, i32 %142, i32 %133, i32 %134, i32 %135, i32 %136)
  store { i64, i32 } %143, { i64, i32 }* %31, align 8
  %144 = bitcast { i64, i32 }* %31 to i8*
  %145 = bitcast %struct.TYPE_14__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %145, i8* align 8 %144, i64 12, i1 false)
  %146 = load i32, i32* %20, align 4
  %147 = sitofp i32 %146 to float
  %148 = load i32, i32* %15, align 4
  %149 = sitofp i32 %148 to float
  %150 = fdiv float %147, %149
  %151 = load float, float* %26, align 4
  %152 = fdiv float %150, %151
  store float %152, float* %32, align 4
  %153 = load i32, i32* %22, align 4
  %154 = sitofp i32 %153 to float
  %155 = load i32, i32* %14, align 4
  %156 = sitofp i32 %155 to float
  %157 = fdiv float %154, %156
  %158 = load float, float* %27, align 4
  %159 = fdiv float %157, %158
  store float %159, float* %33, align 4
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* %14, align 4
  %162 = bitcast { i64, i32 }* %35 to i8*
  %163 = bitcast %struct.TYPE_14__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %162, i8* align 4 %163, i64 12, i1 false)
  %164 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %35, i32 0, i32 0
  %165 = load i64, i64* %164, align 4
  %166 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %35, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call { i64, i32 } @resize_image(i64 %165, i32 %167, i32 %160, i32 %161)
  store { i64, i32 } %168, { i64, i32 }* %36, align 8
  %169 = bitcast { i64, i32 }* %36 to i8*
  %170 = bitcast %struct.TYPE_14__* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %170, i8* align 8 %169, i64 12, i1 false)
  %171 = load i32, i32* %28, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %5
  %174 = bitcast { i64, i32 }* %37 to i8*
  %175 = bitcast %struct.TYPE_14__* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %174, i8* align 4 %175, i64 12, i1 false)
  %176 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %37, i32 0, i32 0
  %177 = load i64, i64* %176, align 4
  %178 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %37, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @flip_image(i64 %177, i32 %179)
  br label %181

181:                                              ; preds = %173, %5
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  store i32 %183, i32* %187, align 4
  %188 = load i8*, i8** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* %28, align 4
  %196 = load float, float* %32, align 4
  %197 = load float, float* %33, align 4
  %198 = load float, float* %26, align 4
  %199 = fpext float %198 to double
  %200 = fdiv double 1.000000e+00, %199
  %201 = fptosi double %200 to i32
  %202 = load float, float* %27, align 4
  %203 = fpext float %202 to double
  %204 = fdiv double 1.000000e+00, %203
  %205 = fptosi double %204 to i32
  %206 = call i32 @fill_truth_swag(i8* %188, i32 %193, i32 %194, i32 %195, float %196, float %197, i32 %201, i32 %205)
  %207 = bitcast { i64, i32 }* %38 to i8*
  %208 = bitcast %struct.TYPE_14__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %207, i8* align 4 %208, i64 12, i1 false)
  %209 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %38, i32 0, i32 0
  %210 = load i64, i64* %209, align 4
  %211 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %38, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @free_image(i64 %210, i32 %212)
  %214 = bitcast { i64, i32 }* %39 to i8*
  %215 = bitcast %struct.TYPE_14__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %214, i8* align 4 %215, i64 12, i1 false)
  %216 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %39, i32 0, i32 0
  %217 = load i64, i64* %216, align 4
  %218 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %39, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @free_image(i64 %217, i32 %219)
  ret void
}

declare dso_local i32 @rand(...) #1

declare dso_local { i64, i32 } @load_image_color(i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32* @make_matrix(i32, i32) #1

declare dso_local i32 @rand_uniform(i32, i32) #1

declare dso_local { i64, i32 } @crop_image(i64, i32, i32, i32, i32, i32) #1

declare dso_local { i64, i32 } @resize_image(i64, i32, i32, i32) #1

declare dso_local i32 @flip_image(i64, i32) #1

declare dso_local i32 @fill_truth_swag(i8*, i32, i32, i32, float, float, i32, i32) #1

declare dso_local i32 @free_image(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
