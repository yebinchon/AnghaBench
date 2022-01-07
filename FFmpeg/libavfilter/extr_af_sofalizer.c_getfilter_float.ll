; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_sofalizer.c_getfilter_float.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_sofalizer.c_getfilter_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.SOFAlizerContext* }
%struct.SOFAlizerContext = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_11__*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { float* }
%struct.TYPE_7__ = type { i32, float* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, float, float, float, float*, float*, float*, float*)* @getfilter_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getfilter_float(%struct.TYPE_10__* %0, float %1, float %2, float %3, float* %4, float* %5, float* %6, float* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca %struct.SOFAlizerContext*, align 8
  %19 = alloca [3 x float], align 4
  %20 = alloca [2 x float], align 4
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca float*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %10, align 8
  store float %1, float* %11, align 4
  store float %2, float* %12, align 4
  store float %3, float* %13, align 4
  store float* %4, float** %14, align 8
  store float* %5, float** %15, align 8
  store float* %6, float** %16, align 8
  store float* %7, float** %17, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %27, align 8
  store %struct.SOFAlizerContext* %28, %struct.SOFAlizerContext** %18, align 8
  %29 = load float, float* %11, align 4
  %30 = getelementptr inbounds [3 x float], [3 x float]* %19, i64 0, i64 0
  store float %29, float* %30, align 4
  %31 = load float, float* %12, align 4
  %32 = getelementptr inbounds [3 x float], [3 x float]* %19, i64 0, i64 1
  store float %31, float* %32, align 4
  %33 = load float, float* %13, align 4
  %34 = getelementptr inbounds [3 x float], [3 x float]* %19, i64 0, i64 2
  store float %33, float* %34, align 4
  %35 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %18, align 8
  %36 = getelementptr inbounds %struct.SOFAlizerContext, %struct.SOFAlizerContext* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds [3 x float], [3 x float]* %19, i64 0, i64 0
  %40 = call i32 @mysofa_lookup(i32 %38, float* %39)
  store i32 %40, i32* %23, align 4
  %41 = load i32, i32* %23, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %8
  %44 = load i32, i32* @EINVAL, align 4
  %45 = call i32 @AVERROR(i32 %44)
  store i32 %45, i32* %9, align 4
  br label %213

46:                                               ; preds = %8
  %47 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %18, align 8
  %48 = getelementptr inbounds %struct.SOFAlizerContext, %struct.SOFAlizerContext* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %46
  %52 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %18, align 8
  %53 = getelementptr inbounds %struct.SOFAlizerContext, %struct.SOFAlizerContext* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %23, align 4
  %57 = call i32* @mysofa_neighborhood(i32 %55, i32 %56)
  store i32* %57, i32** %24, align 8
  %58 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %18, align 8
  %59 = getelementptr inbounds %struct.SOFAlizerContext, %struct.SOFAlizerContext* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds [3 x float], [3 x float]* %19, i64 0, i64 0
  %63 = load i32, i32* %23, align 4
  %64 = load i32*, i32** %24, align 8
  %65 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %18, align 8
  %66 = getelementptr inbounds %struct.SOFAlizerContext, %struct.SOFAlizerContext* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds [2 x float], [2 x float]* %20, i64 0, i64 0
  %70 = call float* @mysofa_interpolate(%struct.TYPE_11__* %61, float* %62, i32 %63, i32* %64, i32 %68, float* %69)
  store float* %70, float** %25, align 8
  br label %172

71:                                               ; preds = %46
  %72 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %18, align 8
  %73 = getelementptr inbounds %struct.SOFAlizerContext, %struct.SOFAlizerContext* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %18, align 8
  %80 = getelementptr inbounds %struct.SOFAlizerContext, %struct.SOFAlizerContext* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sgt i32 %78, %84
  br i1 %85, label %86, label %126

86:                                               ; preds = %71
  %87 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %18, align 8
  %88 = getelementptr inbounds %struct.SOFAlizerContext, %struct.SOFAlizerContext* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load float*, float** %92, align 8
  %94 = load i32, i32* %23, align 4
  %95 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %18, align 8
  %96 = getelementptr inbounds %struct.SOFAlizerContext, %struct.SOFAlizerContext* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = mul nsw i32 %94, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, float* %93, i64 %102
  %104 = load float, float* %103, align 4
  %105 = getelementptr inbounds [2 x float], [2 x float]* %20, i64 0, i64 0
  store float %104, float* %105, align 4
  %106 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %18, align 8
  %107 = getelementptr inbounds %struct.SOFAlizerContext, %struct.SOFAlizerContext* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load float*, float** %111, align 8
  %113 = load i32, i32* %23, align 4
  %114 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %18, align 8
  %115 = getelementptr inbounds %struct.SOFAlizerContext, %struct.SOFAlizerContext* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = mul nsw i32 %113, %119
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %112, i64 %122
  %124 = load float, float* %123, align 4
  %125 = getelementptr inbounds [2 x float], [2 x float]* %20, i64 0, i64 1
  store float %124, float* %125, align 4
  br label %147

126:                                              ; preds = %71
  %127 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %18, align 8
  %128 = getelementptr inbounds %struct.SOFAlizerContext, %struct.SOFAlizerContext* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load float*, float** %132, align 8
  %134 = getelementptr inbounds float, float* %133, i64 0
  %135 = load float, float* %134, align 4
  %136 = getelementptr inbounds [2 x float], [2 x float]* %20, i64 0, i64 0
  store float %135, float* %136, align 4
  %137 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %18, align 8
  %138 = getelementptr inbounds %struct.SOFAlizerContext, %struct.SOFAlizerContext* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load float*, float** %142, align 8
  %144 = getelementptr inbounds float, float* %143, i64 1
  %145 = load float, float* %144, align 4
  %146 = getelementptr inbounds [2 x float], [2 x float]* %20, i64 0, i64 1
  store float %145, float* %146, align 4
  br label %147

147:                                              ; preds = %126, %86
  %148 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %18, align 8
  %149 = getelementptr inbounds %struct.SOFAlizerContext, %struct.SOFAlizerContext* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load float*, float** %153, align 8
  %155 = load i32, i32* %23, align 4
  %156 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %18, align 8
  %157 = getelementptr inbounds %struct.SOFAlizerContext, %struct.SOFAlizerContext* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = mul nsw i32 %155, %161
  %163 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %18, align 8
  %164 = getelementptr inbounds %struct.SOFAlizerContext, %struct.SOFAlizerContext* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = mul nsw i32 %162, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds float, float* %154, i64 %170
  store float* %171, float** %25, align 8
  br label %172

172:                                              ; preds = %147, %51
  %173 = getelementptr inbounds [2 x float], [2 x float]* %20, i64 0, i64 0
  %174 = load float, float* %173, align 4
  %175 = load float*, float** %16, align 8
  store float %174, float* %175, align 4
  %176 = getelementptr inbounds [2 x float], [2 x float]* %20, i64 0, i64 1
  %177 = load float, float* %176, align 4
  %178 = load float*, float** %17, align 8
  store float %177, float* %178, align 4
  %179 = load float*, float** %25, align 8
  store float* %179, float** %21, align 8
  %180 = load float*, float** %25, align 8
  %181 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %18, align 8
  %182 = getelementptr inbounds %struct.SOFAlizerContext, %struct.SOFAlizerContext* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds float, float* %180, i64 %187
  store float* %188, float** %22, align 8
  %189 = load float*, float** %14, align 8
  %190 = load float*, float** %21, align 8
  %191 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %18, align 8
  %192 = getelementptr inbounds %struct.SOFAlizerContext, %struct.SOFAlizerContext* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = mul i64 4, %197
  %199 = trunc i64 %198 to i32
  %200 = call i32 @memcpy(float* %189, float* %190, i32 %199)
  %201 = load float*, float** %15, align 8
  %202 = load float*, float** %22, align 8
  %203 = load %struct.SOFAlizerContext*, %struct.SOFAlizerContext** %18, align 8
  %204 = getelementptr inbounds %struct.SOFAlizerContext, %struct.SOFAlizerContext* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = mul i64 4, %209
  %211 = trunc i64 %210 to i32
  %212 = call i32 @memcpy(float* %201, float* %202, i32 %211)
  store i32 0, i32* %9, align 4
  br label %213

213:                                              ; preds = %172, %43
  %214 = load i32, i32* %9, align 4
  ret i32 %214
}

declare dso_local i32 @mysofa_lookup(i32, float*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @mysofa_neighborhood(i32, i32) #1

declare dso_local float* @mysofa_interpolate(%struct.TYPE_11__*, float*, i32, i32*, i32, float*) #1

declare dso_local i32 @memcpy(float*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
