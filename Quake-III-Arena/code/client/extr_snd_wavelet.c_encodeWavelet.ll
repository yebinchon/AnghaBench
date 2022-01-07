; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_wavelet.c_encodeWavelet.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_wavelet.c_encodeWavelet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_5__* }

@madeTable = common dso_local global i64 0, align 8
@mulawToShort = common dso_local global float* null, align 8
@qtrue = common dso_local global i64 0, align 8
@SND_CHUNK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encodeWavelet(%struct.TYPE_6__* %0, i16* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca [4097 x float], align 16
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i16* %1, i16** %4, align 8
  %13 = load i64, i64* @madeTable, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %27, %15
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 256
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @MuLawDecode(i32 %20)
  %22 = sitofp i64 %21 to float
  %23 = load float*, float** @mulawToShort, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float* %23, i64 %25
  store float %22, float* %26, align 4
  br label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %16

30:                                               ; preds = %16
  %31 = load i64, i64* @qtrue, align 8
  store i64 %31, i64* @madeTable, align 8
  br label %32

32:                                               ; preds = %30, %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %11, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %120, %32
  %37 = load i32, i32* %8, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %127

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @SND_CHUNK_SIZE, align 4
  %43 = mul nsw i32 %42, 2
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @SND_CHUNK_SIZE, align 4
  %47 = mul nsw i32 %46, 2
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %45, %39
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 4, i32* %9, align 4
  br label %52

52:                                               ; preds = %51, %48
  %53 = call %struct.TYPE_5__* (...) @SND_malloc()
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %10, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = icmp eq %struct.TYPE_5__* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store %struct.TYPE_5__* %59, %struct.TYPE_5__** %61, align 8
  br label %66

62:                                               ; preds = %52
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  store %struct.TYPE_5__* %63, %struct.TYPE_5__** %65, align 8
  br label %66

66:                                               ; preds = %62, %58
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %67, %struct.TYPE_5__** %11, align 8
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %81, %66
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = load i16*, i16** %4, align 8
  %74 = load i16, i16* %73, align 2
  %75 = sitofp i16 %74 to float
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [4097 x float], [4097 x float]* %5, i64 0, i64 %77
  store float %75, float* %78, align 4
  %79 = load i16*, i16** %4, align 8
  %80 = getelementptr inbounds i16, i16* %79, i32 1
  store i16* %80, i16** %4, align 8
  br label %81

81:                                               ; preds = %72
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %68

84:                                               ; preds = %68
  %85 = getelementptr inbounds [4097 x float], [4097 x float]* %5, i64 0, i64 0
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @wt1(float* %85, i32 %86, i32 1)
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i32*
  store i32* %91, i32** %12, align 8
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %117, %84
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %120

96:                                               ; preds = %92
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [4097 x float], [4097 x float]* %5, i64 0, i64 %98
  %100 = load float, float* %99, align 4
  store float %100, float* %6, align 4
  %101 = load float, float* %6, align 4
  %102 = fcmp ogt float %101, 3.276700e+04
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store float 3.276700e+04, float* %6, align 4
  br label %109

104:                                              ; preds = %96
  %105 = load float, float* %6, align 4
  %106 = fcmp olt float %105, -3.276800e+04
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store float -3.276800e+04, float* %6, align 4
  br label %108

108:                                              ; preds = %107, %104
  br label %109

109:                                              ; preds = %108, %103
  %110 = load float, float* %6, align 4
  %111 = fptosi float %110 to i16
  %112 = call i32 @MuLawEncode(i16 signext %111)
  %113 = load i32*, i32** %12, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %112, i32* %116, align 4
  br label %117

117:                                              ; preds = %109
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %92

120:                                              ; preds = %92
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %8, align 4
  %126 = sub nsw i32 %125, %124
  store i32 %126, i32* %8, align 4
  br label %36

127:                                              ; preds = %36
  ret void
}

declare dso_local i64 @MuLawDecode(i32) #1

declare dso_local %struct.TYPE_5__* @SND_malloc(...) #1

declare dso_local i32 @wt1(float*, i32, i32) #1

declare dso_local i32 @MuLawEncode(i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
