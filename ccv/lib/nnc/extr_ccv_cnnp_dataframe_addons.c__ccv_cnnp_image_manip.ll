; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_dataframe_addons.c__ccv_cnnp_image_manip.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_dataframe_addons.c__ccv_cnnp_image_manip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@CCV_C3 = common dso_local global i64 0, align 8
@__const._ccv_cnnp_image_manip.idx = private unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i64, i64, i32*)* @_ccv_cnnp_image_manip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_cnnp_image_manip(%struct.TYPE_11__* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_12__, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = bitcast %struct.TYPE_12__* %5 to { i64, i64 }*
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  store i64 %1, i64* %11, align 4
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  store i64 %2, i64* %12, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32* %3, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @CCV_GET_CHANNEL(i32 %18)
  %20 = load i64, i64* @CCV_C3, align 8
  %21 = icmp eq i64 %19, %20
  br label %22

22:                                               ; preds = %15, %4
  %23 = phi i1 [ false, %4 ], [ %21, %15 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = bitcast [4 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %26, i8* align 16 bitcast ([4 x i32]* @__const._ccv_cnnp_image_manip.idx to i8*), i64 16, i1 false)
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %29 = call i32 @sfmt_genrand_shuffle(i32* %27, i32* %28, i32 4, i32 4)
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %99, %22
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %102

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %98 [
    i32 0, label %38
    i32 1, label %51
    i32 2, label %63
    i32 3, label %75
  ]

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %98

43:                                               ; preds = %38
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = bitcast %struct.TYPE_11__** %6 to i32**
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @_ccv_cnnp_random_logexp(i32* %46, i32 %48)
  %50 = call i32 @ccv_scale(%struct.TYPE_11__* %44, i32** %45, i32 0, i32 %49)
  br label %98

51:                                               ; preds = %33
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %98

56:                                               ; preds = %51
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @_ccv_cnnp_random_logexp(i32* %58, i32 %60)
  %62 = call i32 @ccv_saturation(%struct.TYPE_11__* %57, %struct.TYPE_11__** %6, i32 0, i32 %61)
  br label %98

63:                                               ; preds = %33
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %98

68:                                               ; preds = %63
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @_ccv_cnnp_random_logexp(i32* %70, i32 %72)
  %74 = call i32 @ccv_contrast(%struct.TYPE_11__* %69, %struct.TYPE_11__** %6, i32 0, i32 %73)
  br label %98

75:                                               ; preds = %33
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %98

80:                                               ; preds = %75
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @sfmt_genrand_real1(i32* %82)
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %83, %85
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @sfmt_genrand_real1(i32* %87)
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %88, %90
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @sfmt_genrand_real1(i32* %92)
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %93, %95
  %97 = call i32 @_ccv_cnnp_image_lighting(%struct.TYPE_11__* %81, i32 %86, i32 %91, i32 %96)
  br label %98

98:                                               ; preds = %33, %80, %79, %68, %67, %56, %55, %43, %42
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %30

102:                                              ; preds = %30
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @CCV_GET_CHANNEL(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sfmt_genrand_shuffle(i32*, i32*, i32, i32) #1

declare dso_local i32 @ccv_scale(%struct.TYPE_11__*, i32**, i32, i32) #1

declare dso_local i32 @_ccv_cnnp_random_logexp(i32*, i32) #1

declare dso_local i32 @ccv_saturation(%struct.TYPE_11__*, %struct.TYPE_11__**, i32, i32) #1

declare dso_local i32 @ccv_contrast(%struct.TYPE_11__*, %struct.TYPE_11__**, i32, i32) #1

declare dso_local i32 @_ccv_cnnp_image_lighting(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @sfmt_genrand_real1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
