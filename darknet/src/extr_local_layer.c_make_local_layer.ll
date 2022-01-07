; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_local_layer.c_make_local_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_local_layer.c_make_local_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float*, float*, float*, float*, float*, float*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32 }

@LOCAL = common dso_local global i32 0, align 4
@forward_local_layer = common dso_local global i32 0, align 4
@backward_local_layer = common dso_local global i32 0, align 4
@update_local_layer = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Local Layer: %d x %d x %d image, %d filters -> %d x %d x %d image\0A\00", align 1
@backward_local_layer_gpu = common dso_local global i32 0, align 4
@forward_local_layer_gpu = common dso_local global i32 0, align 4
@update_local_layer_gpu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_local_layer(%struct.TYPE_5__* noalias sret %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 %9, i32* %19, align 4
  %25 = bitcast %struct.TYPE_5__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 192, i1 false)
  %26 = load i32, i32* @LOCAL, align 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 33
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* %12, align 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* %13, align 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %14, align 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 2
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* %15, align 4
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 3
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %11, align 4
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 4
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* %17, align 4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 5
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %16, align 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 6
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* %18, align 4
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 7
  store i32 %42, i32* %43, align 4
  %44 = call i32 @local_out_height(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %0)
  store i32 %44, i32* %21, align 4
  %45 = call i32 @local_out_width(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %0)
  store i32 %45, i32* %22, align 4
  %46 = load i32, i32* %21, align 4
  %47 = load i32, i32* %22, align 4
  %48 = mul nsw i32 %46, %47
  store i32 %48, i32* %23, align 4
  %49 = load i32, i32* %21, align 4
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 8
  store i32 %49, i32* %50, align 8
  %51 = load i32, i32* %22, align 4
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 9
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %15, align 4
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 10
  store i32 %53, i32* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 9
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %56, %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 10
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %59, %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 11
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = mul nsw i32 %65, %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 %68, %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 12
  store i32 %71, i32* %72, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %15, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load i32, i32* %16, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load i32, i32* %16, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load i32, i32* %23, align 4
  %81 = mul nsw i32 %79, %80
  %82 = call i8* @calloc(i32 %81, i32 4)
  %83 = bitcast i8* %82 to float*
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 13
  store float* %83, float** %84, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32, i32* %16, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* %16, align 4
  %91 = mul nsw i32 %89, %90
  %92 = load i32, i32* %23, align 4
  %93 = mul nsw i32 %91, %92
  %94 = call i8* @calloc(i32 %93, i32 4)
  %95 = bitcast i8* %94 to float*
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 14
  store float* %95, float** %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 11
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @calloc(i32 %98, i32 4)
  %100 = bitcast i8* %99 to float*
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 15
  store float* %100, float** %101, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 11
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @calloc(i32 %103, i32 4)
  %105 = bitcast i8* %104 to float*
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 16
  store float* %105, float** %106, align 8
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %16, align 4
  %109 = mul nsw i32 %107, %108
  %110 = load i32, i32* %14, align 4
  %111 = mul nsw i32 %109, %110
  %112 = sitofp i32 %111 to double
  %113 = fdiv double 2.000000e+00, %112
  %114 = fptosi double %113 to i32
  %115 = call float @sqrt(i32 %114)
  store float %115, float* %24, align 4
  store i32 0, i32* %20, align 4
  br label %116

116:                                              ; preds = %135, %10
  %117 = load i32, i32* %20, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %15, align 4
  %120 = mul nsw i32 %118, %119
  %121 = load i32, i32* %16, align 4
  %122 = mul nsw i32 %120, %121
  %123 = load i32, i32* %16, align 4
  %124 = mul nsw i32 %122, %123
  %125 = icmp slt i32 %117, %124
  br i1 %125, label %126, label %138

126:                                              ; preds = %116
  %127 = load float, float* %24, align 4
  %128 = call float @rand_uniform(i32 -1, i32 1)
  %129 = fmul float %127, %128
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 13
  %131 = load float*, float** %130, align 8
  %132 = load i32, i32* %20, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %131, i64 %133
  store float %129, float* %134, align 4
  br label %135

135:                                              ; preds = %126
  %136 = load i32, i32* %20, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %20, align 4
  br label %116

138:                                              ; preds = %116
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %21, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load i32, i32* %22, align 4
  %144 = mul nsw i32 %142, %143
  %145 = load i32, i32* %15, align 4
  %146 = mul nsw i32 %144, %145
  %147 = call i8* @calloc(i32 %146, i32 4)
  %148 = bitcast i8* %147 to float*
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 17
  store float* %148, float** %149, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %21, align 4
  %153 = mul nsw i32 %151, %152
  %154 = load i32, i32* %22, align 4
  %155 = mul nsw i32 %153, %154
  %156 = load i32, i32* %15, align 4
  %157 = mul nsw i32 %155, %156
  %158 = call i8* @calloc(i32 %157, i32 4)
  %159 = bitcast i8* %158 to float*
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 18
  store float* %159, float** %160, align 8
  %161 = load i32, i32* %21, align 4
  %162 = load i32, i32* %22, align 4
  %163 = mul nsw i32 %161, %162
  %164 = load i32, i32* %16, align 4
  %165 = mul nsw i32 %163, %164
  %166 = load i32, i32* %16, align 4
  %167 = mul nsw i32 %165, %166
  %168 = load i32, i32* %14, align 4
  %169 = mul nsw i32 %167, %168
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 19
  store i32 %169, i32* %170, align 8
  %171 = load i32, i32* @forward_local_layer, align 4
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 32
  store i32 %171, i32* %172, align 4
  %173 = load i32, i32* @backward_local_layer, align 4
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 31
  store i32 %173, i32* %174, align 8
  %175 = load i32, i32* @update_local_layer, align 4
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 30
  store i32 %175, i32* %176, align 4
  %177 = load i32, i32* %19, align 4
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 20
  store i32 %177, i32* %178, align 4
  %179 = load i32, i32* @stderr, align 4
  %180 = load i32, i32* %12, align 4
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* %21, align 4
  %185 = load i32, i32* %22, align 4
  %186 = load i32, i32* %15, align 4
  %187 = call i32 @fprintf(i32 %179, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %180, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185, i32 %186)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @local_out_height(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8) #2

declare dso_local i32 @local_out_width(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8) #2

declare dso_local i8* @calloc(i32, i32) #2

declare dso_local float @sqrt(i32) #2

declare dso_local float @rand_uniform(i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
