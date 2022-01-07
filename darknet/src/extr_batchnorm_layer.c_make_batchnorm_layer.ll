; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_batchnorm_layer.c_make_batchnorm_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_batchnorm_layer.c_make_batchnorm_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Batch Normalization Layer: %d x %d x %d image\0A\00", align 1
@BATCHNORM = common dso_local global i32 0, align 4
@forward_batchnorm_layer = common dso_local global i32 0, align 4
@backward_batchnorm_layer = common dso_local global i32 0, align 4
@CUDNN_DATA_FLOAT = common dso_local global i32 0, align 4
@CUDNN_TENSOR_NCHW = common dso_local global i32 0, align 4
@backward_batchnorm_layer_gpu = common dso_local global i32 0, align 4
@forward_batchnorm_layer_gpu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_batchnorm_layer(%struct.TYPE_3__* noalias sret %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 %4, i32* %9, align 4
  %11 = load i32, i32* @stderr, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, i32 %14)
  %16 = bitcast %struct.TYPE_3__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 264, i1 false)
  %17 = load i32, i32* @BATCHNORM, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 39
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %9, align 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 6
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load i32, i32* %9, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* %6, align 4
  %36 = mul nsw i32 %34, %35
  %37 = call i8* @calloc(i32 %36, i32 4)
  %38 = bitcast i8* %37 to i32*
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 7
  store i32* %38, i32** %39, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %9, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32, i32* %6, align 4
  %46 = mul nsw i32 %44, %45
  %47 = call i8* @calloc(i32 %46, i32 4)
  %48 = bitcast i8* %47 to i32*
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 8
  store i32* %48, i32** %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* %9, align 4
  %54 = mul nsw i32 %52, %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 9
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 9
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 10
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i8* @calloc(i32 %59, i32 4)
  %61 = bitcast i8* %60 to i32*
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 11
  store i32* %61, i32** %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i8* @calloc(i32 %63, i32 4)
  %65 = bitcast i8* %64 to i32*
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 12
  store i32* %65, i32** %66, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i8* @calloc(i32 %67, i32 4)
  %69 = bitcast i8* %68 to i32*
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 13
  store i32* %69, i32** %70, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i8* @calloc(i32 %71, i32 4)
  %73 = bitcast i8* %72 to i32*
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 14
  store i32* %73, i32** %74, align 8
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %85, %5
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 11
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %75

88:                                               ; preds = %75
  %89 = load i32, i32* %9, align 4
  %90 = call i8* @calloc(i32 %89, i32 4)
  %91 = bitcast i8* %90 to i32*
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 15
  store i32* %91, i32** %92, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i8* @calloc(i32 %93, i32 4)
  %95 = bitcast i8* %94 to i32*
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 16
  store i32* %95, i32** %96, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i8* @calloc(i32 %97, i32 4)
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 38
  store i8* %98, i8** %99, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i8* @calloc(i32 %100, i32 4)
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 37
  store i8* %101, i8** %102, align 8
  %103 = load i32, i32* @forward_batchnorm_layer, align 4
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 36
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* @backward_batchnorm_layer, align 4
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 35
  store i32 %105, i32* %106, align 8
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
