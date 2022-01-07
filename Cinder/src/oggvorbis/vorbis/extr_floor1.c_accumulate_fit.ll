; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_floor1.c_accumulate_fit.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_floor1.c_accumulate_fit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (float*, float*, i32, i32, %struct.TYPE_7__*, i32, %struct.TYPE_6__*)* @accumulate_fit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @accumulate_fit(float* %0, float* %1, i32 %2, i32 %3, %struct.TYPE_7__* %4, i32 %5, %struct.TYPE_6__* %6) #0 {
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store float* %0, float** %8, align 8
  store float* %1, float** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %30 = call i32 @memset(%struct.TYPE_7__* %29, i32 0, i32 56)
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %7
  %41 = load i32, i32* %13, align 4
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %40, %7
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %15, align 8
  br label %46

46:                                               ; preds = %136, %43
  %47 = load i64, i64* %15, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp sle i64 %47, %49
  br i1 %50, label %51, label %139

51:                                               ; preds = %46
  %52 = load float*, float** %8, align 8
  %53 = load i64, i64* %15, align 8
  %54 = getelementptr inbounds float, float* %52, i64 %53
  %55 = call i32 @vorbis_dBquant(float* %54)
  store i32 %55, i32* %28, align 4
  %56 = load i32, i32* %28, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %135

58:                                               ; preds = %51
  %59 = load float*, float** %9, align 8
  %60 = load i64, i64* %15, align 8
  %61 = getelementptr inbounds float, float* %59, i64 %60
  %62 = load float, float* %61, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load float, float* %64, align 4
  %66 = fadd float %62, %65
  %67 = load float*, float** %8, align 8
  %68 = load i64, i64* %15, align 8
  %69 = getelementptr inbounds float, float* %67, i64 %68
  %70 = load float, float* %69, align 4
  %71 = fcmp oge float %66, %70
  br i1 %71, label %72, label %103

72:                                               ; preds = %58
  %73 = load i64, i64* %15, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %28, align 4
  %79 = load i32, i32* %17, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %17, align 4
  %81 = load i64, i64* %15, align 8
  %82 = load i64, i64* %15, align 8
  %83 = mul nsw i64 %81, %82
  %84 = load i32, i32* %18, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %28, align 4
  %89 = load i32, i32* %28, align 4
  %90 = mul nsw i32 %88, %89
  %91 = load i32, i32* %19, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %19, align 4
  %93 = load i64, i64* %15, align 8
  %94 = load i32, i32* %28, align 4
  %95 = sext i32 %94 to i64
  %96 = mul nsw i64 %93, %95
  %97 = load i32, i32* %20, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %20, align 4
  %101 = load i32, i32* %21, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %21, align 4
  br label %134

103:                                              ; preds = %58
  %104 = load i64, i64* %15, align 8
  %105 = load i32, i32* %22, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %104
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %22, align 4
  %109 = load i32, i32* %28, align 4
  %110 = load i32, i32* %23, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %23, align 4
  %112 = load i64, i64* %15, align 8
  %113 = load i64, i64* %15, align 8
  %114 = mul nsw i64 %112, %113
  %115 = load i32, i32* %24, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %24, align 4
  %119 = load i32, i32* %28, align 4
  %120 = load i32, i32* %28, align 4
  %121 = mul nsw i32 %119, %120
  %122 = load i32, i32* %25, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %25, align 4
  %124 = load i64, i64* %15, align 8
  %125 = load i32, i32* %28, align 4
  %126 = sext i32 %125 to i64
  %127 = mul nsw i64 %124, %126
  %128 = load i32, i32* %26, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %26, align 4
  %132 = load i32, i32* %27, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %27, align 4
  br label %134

134:                                              ; preds = %103, %72
  br label %135

135:                                              ; preds = %134, %51
  br label %136

136:                                              ; preds = %135
  %137 = load i64, i64* %15, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %15, align 8
  br label %46

139:                                              ; preds = %46
  %140 = load i32, i32* %16, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* %17, align 4
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %18, align 4
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* %19, align 4
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 5
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* %20, align 4
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 6
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* %21, align 4
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 7
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* %22, align 4
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 8
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* %23, align 4
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 9
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* %24, align 4
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 10
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* %25, align 4
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 11
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %26, align 4
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 12
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* %27, align 4
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 13
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* %21, align 4
  ret i32 %176
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @vorbis_dBquant(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
