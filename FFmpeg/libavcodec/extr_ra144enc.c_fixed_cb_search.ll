; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ra144enc.c_fixed_cb_search.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ra144enc.c_fixed_cb_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLOCKSIZE = common dso_local global i32 0, align 4
@ff_cb1_vects = common dso_local global float** null, align 8
@LPC_ORDER = common dso_local global i32 0, align 4
@ff_cb2_vects = common dso_local global float** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, i32, i32*, i32*)* @fixed_cb_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixed_cb_search(float* %0, float* %1, float* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store float* %0, float** %7, align 8
  store float* %1, float** %8, align 8
  store float* %2, float** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load i32, i32* @BLOCKSIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %16, align 8
  %23 = alloca float, i64 %21, align 16
  store i64 %21, i64* %17, align 8
  %24 = load i32, i32* @BLOCKSIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca float, i64 %25, align 16
  store i64 %25, i64* %18, align 8
  %27 = load i32, i32* @BLOCKSIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca float, i64 %28, align 16
  store i64 %28, i64* %19, align 8
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %6
  %33 = load float*, float** %7, align 8
  %34 = mul nuw i64 4, %21
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memcpy(float* %23, float* %33, i32 %35)
  br label %37

37:                                               ; preds = %32, %6
  %38 = load float*, float** %7, align 8
  %39 = load float*, float** %8, align 8
  %40 = load float**, float*** @ff_cb1_vects, align 8
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %45

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %43
  %46 = phi float* [ %23, %43 ], [ null, %44 ]
  %47 = load float*, float** %9, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @find_best_vect(float* %38, float* %39, float** %40, float* %46, float* null, float* %47, i32* %48, float* %15)
  %50 = load float, float* %15, align 4
  %51 = fcmp une float %50, 0.000000e+00
  br i1 %51, label %52, label %112

52:                                               ; preds = %45
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %71, %52
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @BLOCKSIZE, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = load float**, float*** @ff_cb1_vects, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float*, float** %58, i64 %61
  %63 = load float*, float** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %63, i64 %65
  %67 = load float, float* %66, align 4
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %29, i64 %69
  store float %67, float* %70, align 4
  br label %71

71:                                               ; preds = %57
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %13, align 4
  br label %53

74:                                               ; preds = %53
  %75 = load float*, float** %7, align 8
  %76 = load float*, float** %8, align 8
  %77 = load i32, i32* @BLOCKSIZE, align 4
  %78 = load i32, i32* @LPC_ORDER, align 4
  %79 = call i32 @ff_celp_lp_synthesis_filterf(float* %75, float* %76, float* %29, i32 %77, i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load float*, float** %7, align 8
  %84 = call i32 @orthogonalize(float* %83, float* %23)
  br label %85

85:                                               ; preds = %82, %74
  store i32 0, i32* %13, align 4
  br label %86

86:                                               ; preds = %104, %85
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @BLOCKSIZE, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %86
  %91 = load float, float* %15, align 4
  %92 = load float*, float** %7, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, float* %92, i64 %94
  %96 = load float, float* %95, align 4
  %97 = fmul float %91, %96
  %98 = load float*, float** %9, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %98, i64 %100
  %102 = load float, float* %101, align 4
  %103 = fsub float %102, %97
  store float %103, float* %101, align 4
  br label %104

104:                                              ; preds = %90
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %86

107:                                              ; preds = %86
  %108 = load float*, float** %7, align 8
  %109 = mul nuw i64 4, %25
  %110 = trunc i64 %109 to i32
  %111 = call i32 @memcpy(float* %26, float* %108, i32 %110)
  store i32 1, i32* %14, align 4
  br label %113

112:                                              ; preds = %45
  store i32 0, i32* %14, align 4
  br label %113

113:                                              ; preds = %112, %107
  %114 = load float*, float** %7, align 8
  %115 = load float*, float** %8, align 8
  %116 = load float**, float*** @ff_cb2_vects, align 8
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %121

120:                                              ; preds = %113
  br label %121

121:                                              ; preds = %120, %119
  %122 = phi float* [ %23, %119 ], [ null, %120 ]
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %127

126:                                              ; preds = %121
  br label %127

127:                                              ; preds = %126, %125
  %128 = phi float* [ %26, %125 ], [ null, %126 ]
  %129 = load float*, float** %9, align 8
  %130 = load i32*, i32** %12, align 8
  %131 = call i32 @find_best_vect(float* %114, float* %115, float** %116, float* %122, float* %128, float* %129, i32* %130, float* %15)
  %132 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %132)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(float*, float*, i32) #2

declare dso_local i32 @find_best_vect(float*, float*, float**, float*, float*, float*, i32*, float*) #2

declare dso_local i32 @ff_celp_lp_synthesis_filterf(float*, float*, float*, i32, i32) #2

declare dso_local i32 @orthogonalize(float*, float*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
