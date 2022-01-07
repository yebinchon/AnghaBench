; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbisenc.c_floor_fit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbisenc.c_floor_fit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { float }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32 }

@MAX_FLOOR_VALUES = common dso_local global i32 0, align 4
@ff_vorbis_floor1_inverse_db_table = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_8__*, float*, i32*, i32)* @floor_fit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @floor_fit(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, float* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store float* %2, float** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sdiv i32 255, %21
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %11, align 4
  store float 0.000000e+00, float* %13, align 4
  %24 = load i32, i32* @MAX_FLOOR_VALUES, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %14, align 8
  %27 = alloca float, i64 %25, align 16
  store i64 %25, i64* %15, align 8
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %48, %5
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %28
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = load float*, float** %8, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call float @get_floor_average(%struct.TYPE_8__* %35, float* %36, i32 %37)
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %27, i64 %40
  store float %38, float* %41, align 4
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %27, i64 %43
  %45 = load float, float* %44, align 4
  %46 = load float, float* %13, align 4
  %47 = fadd float %46, %45
  store float %47, float* %13, align 4
  br label %48

48:                                               ; preds = %34
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %28

51:                                               ; preds = %28
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sitofp i32 %54 to float
  %56 = load float, float* %13, align 4
  %57 = fdiv float %56, %55
  store float %57, float* %13, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load float, float* %59, align 4
  %61 = load float, float* %13, align 4
  %62 = fdiv float %61, %60
  store float %62, float* %13, align 4
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %132, %51
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %135

69:                                               ; preds = %63
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %27, i64 %85
  %87 = load float, float* %86, align 4
  store float %87, float* %17, align 4
  %88 = load float, float* %13, align 4
  %89 = load float, float* %17, align 4
  %90 = fmul float %88, %89
  %91 = call float @sqrt(float %90)
  %92 = load i32, i32* %16, align 4
  %93 = sitofp i32 %92 to float
  %94 = fmul float %93, 0x3F747AE140000000
  %95 = fptosi float %94 to i32
  %96 = call float @pow(float 1.250000e+00, i32 %95)
  %97 = fmul float %91, %96
  store float %97, float* %17, align 4
  store i32 0, i32* %18, align 4
  br label %98

98:                                               ; preds = %117, %69
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* %11, align 4
  %101 = sub nsw i32 %100, 1
  %102 = icmp slt i32 %99, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %98
  %104 = load float*, float** @ff_vorbis_floor1_inverse_db_table, align 8
  %105 = load i32, i32* %18, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = mul nsw i32 %105, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %104, i64 %110
  %112 = load float, float* %111, align 4
  %113 = load float, float* %17, align 4
  %114 = fcmp ogt float %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %103
  br label %120

116:                                              ; preds = %103
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %18, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %18, align 4
  br label %98

120:                                              ; preds = %115, %98
  %121 = load i32, i32* %18, align 4
  %122 = load i32*, i32** %9, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds i32, i32* %122, i64 %130
  store i32 %121, i32* %131, align 4
  br label %132

132:                                              ; preds = %120
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %12, align 4
  br label %63

135:                                              ; preds = %63
  %136 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %136)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local float @get_floor_average(%struct.TYPE_8__*, float*, i32) #2

declare dso_local float @sqrt(float) #2

declare dso_local float @pow(float, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
