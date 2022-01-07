; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_crop_layer.c_make_crop_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_crop_layer.c_make_crop_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, float, i32, float, float, float, i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Crop Layer: %d x %d -> %d x %d x %d image\0A\00", align 1
@CROP = common dso_local global i32 0, align 4
@forward_crop_layer = common dso_local global i32 0, align 4
@backward_crop_layer = common dso_local global i32 0, align 4
@backward_crop_layer_gpu = common dso_local global i32 0, align 4
@forward_crop_layer_gpu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_crop_layer(%struct.TYPE_3__* noalias sret %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, float %8, float %9, float %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store float %8, float* %19, align 4
  store float %9, float* %20, align 4
  store float %10, float* %21, align 4
  %22 = load i32, i32* @stderr, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* %17, align 4
  %27 = load i32, i32* %15, align 4
  %28 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = bitcast %struct.TYPE_3__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 104, i1 false)
  %30 = load i32, i32* @CROP, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 21
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* %12, align 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* %13, align 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %14, align 4
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* %15, align 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %16, align 4
  %41 = sitofp i32 %40 to float
  %42 = load i32, i32* %13, align 4
  %43 = sitofp i32 %42 to float
  %44 = fdiv float %41, %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  store float %44, float* %45, align 8
  %46 = load i32, i32* %18, align 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  store i32 %46, i32* %47, align 4
  %48 = load float, float* %19, align 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 6
  store float %48, float* %49, align 8
  %50 = load float, float* %20, align 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 7
  store float %50, float* %51, align 4
  %52 = load float, float* %21, align 4
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 8
  store float %52, float* %53, align 8
  %54 = load i32, i32* %17, align 4
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 9
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %16, align 4
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 10
  store i32 %56, i32* %57, align 8
  %58 = load i32, i32* %15, align 4
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 11
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %61, %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %64, %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 12
  store i32 %67, i32* %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 9
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 10
  %72 = load i32, i32* %71, align 8
  %73 = mul nsw i32 %70, %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 11
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %73, %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 13
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 13
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %12, align 4
  %81 = mul nsw i32 %79, %80
  %82 = call i32 @calloc(i32 %81, i32 4)
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 15
  store i32 %82, i32* %83, align 8
  %84 = load i32, i32* @forward_crop_layer, align 4
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 20
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* @backward_crop_layer, align 4
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 19
  store i32 %86, i32* %87, align 8
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
