; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_paletteuse.c_debug_mean_error.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_paletteuse.c_debug_mean_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32 }
%struct.TYPE_7__ = type { i64**, i32*, i32, i32 }

@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"MEP:%.3f TotalMEP:%.3f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32)* @debug_mean_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_mean_error(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [4 x i64], align 16
  %21 = alloca [4 x i64], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i32 %3, i32* %8, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %11, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64**, i64*** %26, align 8
  %28 = getelementptr inbounds i64*, i64** %27, i64 0
  %29 = load i64*, i64** %28, align 8
  %30 = bitcast i64* %29 to i32*
  store i32* %30, i32** %12, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64**, i64*** %32, align 8
  %34 = getelementptr inbounds i64*, i64** %33, i64 0
  %35 = load i64*, i64** %34, align 8
  store i64* %35, i64** %13, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 2
  store i32 %41, i32* %14, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %15, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  %54 = mul nsw i32 %53, 3
  %55 = sitofp i32 %54 to float
  store float %55, float* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %135, %4
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %138

62:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %123, %62
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %126

69:                                               ; preds = %63
  %70 = load i32*, i32** %12, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %18, align 4
  %75 = load i32*, i32** %11, align 8
  %76 = load i64*, i64** %13, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i32, i32* %75, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %19, align 4
  %83 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  store i64 255, i64* %83, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 1
  %85 = load i32, i32* %18, align 4
  %86 = ashr i32 %85, 16
  %87 = and i32 %86, 255
  %88 = sext i32 %87 to i64
  store i64 %88, i64* %84, align 8
  %89 = getelementptr inbounds i64, i64* %84, i64 1
  %90 = load i32, i32* %18, align 4
  %91 = ashr i32 %90, 8
  %92 = and i32 %91, 255
  %93 = sext i32 %92 to i64
  store i64 %93, i64* %89, align 8
  %94 = getelementptr inbounds i64, i64* %89, i64 1
  %95 = load i32, i32* %18, align 4
  %96 = and i32 %95, 255
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %94, align 8
  %98 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  store i64 255, i64* %98, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 1
  %100 = load i32, i32* %19, align 4
  %101 = ashr i32 %100, 16
  %102 = and i32 %101, 255
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %99, align 8
  %104 = getelementptr inbounds i64, i64* %99, i64 1
  %105 = load i32, i32* %19, align 4
  %106 = ashr i32 %105, 8
  %107 = and i32 %106, 255
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %104, align 8
  %109 = getelementptr inbounds i64, i64* %104, i64 1
  %110 = load i32, i32* %19, align 4
  %111 = and i32 %110, 255
  %112 = sext i32 %111 to i64
  store i64 %112, i64* %109, align 8
  %113 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %114 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @diff(i64* %113, i64* %114, i32 %117)
  %119 = load i32, i32* %17, align 4
  %120 = zext i32 %119 to i64
  %121 = add nsw i64 %120, %118
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %17, align 4
  br label %123

123:                                              ; preds = %69
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %63

126:                                              ; preds = %63
  %127 = load i32, i32* %14, align 4
  %128 = load i32*, i32** %12, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %12, align 8
  %131 = load i32, i32* %15, align 4
  %132 = load i64*, i64** %13, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i64, i64* %132, i64 %133
  store i64* %134, i64** %13, align 8
  br label %135

135:                                              ; preds = %126
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %56

138:                                              ; preds = %56
  %139 = load i32, i32* %17, align 4
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = add i32 %142, %139
  store i32 %143, i32* %141, align 8
  %144 = load i32, i32* @AV_LOG_INFO, align 4
  %145 = load i32, i32* %17, align 4
  %146 = uitofp i32 %145 to float
  %147 = load float, float* %16, align 4
  %148 = fdiv float %146, %147
  %149 = fptoui float %148 to i32
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = uitofp i32 %152 to float
  %154 = load float, float* %16, align 4
  %155 = load i32, i32* %8, align 4
  %156 = sitofp i32 %155 to float
  %157 = fmul float %154, %156
  %158 = fdiv float %153, %157
  %159 = call i32 @av_log(i32* null, i32 %144, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %149, float %158)
  ret void
}

declare dso_local i64 @diff(i64*, i64*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
