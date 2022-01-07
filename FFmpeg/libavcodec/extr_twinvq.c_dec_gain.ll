; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvq.c_dec_gain.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvq.c_dec_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_8__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { float*, float* }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@TWINVQ_AMP_MAX = common dso_local global i32 0, align 4
@TWINVQ_GAIN_BITS = common dso_local global i32 0, align 4
@TWINVQ_SUB_AMP_MAX = common dso_local global i32 0, align 4
@TWINVQ_SUB_GAIN_BITS = common dso_local global i32 0, align 4
@TWINVQ_FT_LONG = common dso_local global i32 0, align 4
@TWINVQ_MULAW_MU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32, float*)* @dec_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dec_gain(%struct.TYPE_11__* %0, i32 %1, float* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store float* %2, float** %6, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %7, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %23
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %8, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* @TWINVQ_AMP_MAX, align 4
  %34 = load i32, i32* @TWINVQ_GAIN_BITS, align 4
  %35 = shl i32 1, %34
  %36 = sub nsw i32 %35, 1
  %37 = sdiv i32 %33, %36
  %38 = sitofp i32 %37 to float
  store float %38, float* %12, align 4
  %39 = load i32, i32* @TWINVQ_SUB_AMP_MAX, align 4
  %40 = load i32, i32* @TWINVQ_SUB_GAIN_BITS, align 4
  %41 = shl i32 1, %40
  %42 = sub nsw i32 %41, 1
  %43 = sdiv i32 %39, %42
  %44 = sitofp i32 %43 to float
  store float %44, float* %13, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @TWINVQ_FT_LONG, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %87

48:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %83, %48
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %50, %55
  br i1 %56, label %57, label %86

57:                                               ; preds = %49
  %58 = load float, float* %12, align 4
  %59 = fpext float %58 to double
  %60 = fmul double %59, 5.000000e-01
  %61 = load float, float* %12, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load float*, float** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %64, i64 %66
  %68 = load float, float* %67, align 4
  %69 = fmul float %61, %68
  %70 = fpext float %69 to double
  %71 = fadd double %60, %70
  %72 = fptrunc double %71 to float
  %73 = load i32, i32* @TWINVQ_AMP_MAX, align 4
  %74 = load i32, i32* @TWINVQ_MULAW_MU, align 4
  %75 = call float @twinvq_mulawinv(float %72, i32 %73, i32 %74)
  %76 = fpext float %75 to double
  %77 = fmul double 0x3F20000000000000, %76
  %78 = fptrunc double %77 to float
  %79 = load float*, float** %6, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, float* %79, i64 %81
  store float %78, float* %82, align 4
  br label %83

83:                                               ; preds = %57
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %49

86:                                               ; preds = %49
  br label %163

87:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %88

88:                                               ; preds = %159, %87
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %89, %94
  br i1 %95, label %96, label %162

96:                                               ; preds = %88
  %97 = load float, float* %12, align 4
  %98 = fpext float %97 to double
  %99 = fmul double %98, 5.000000e-01
  %100 = load float, float* %12, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load float*, float** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float, float* %103, i64 %105
  %107 = load float, float* %106, align 4
  %108 = fmul float %100, %107
  %109 = fpext float %108 to double
  %110 = fadd double %99, %109
  %111 = fptrunc double %110 to float
  %112 = load i32, i32* @TWINVQ_AMP_MAX, align 4
  %113 = load i32, i32* @TWINVQ_MULAW_MU, align 4
  %114 = call float @twinvq_mulawinv(float %111, i32 %112, i32 %113)
  %115 = fpext float %114 to double
  %116 = fmul double 0x3E80000000000000, %115
  %117 = fptrunc double %116 to float
  store float %117, float* %14, align 4
  store i32 0, i32* %10, align 4
  br label %118

118:                                              ; preds = %155, %96
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %158

122:                                              ; preds = %118
  %123 = load float, float* %14, align 4
  %124 = load float, float* %13, align 4
  %125 = fpext float %124 to double
  %126 = fmul double %125, 5.000000e-01
  %127 = load float, float* %13, align 4
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load float*, float** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %11, align 4
  %133 = mul nsw i32 %131, %132
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %130, i64 %136
  %138 = load float, float* %137, align 4
  %139 = fmul float %127, %138
  %140 = fpext float %139 to double
  %141 = fadd double %126, %140
  %142 = fptrunc double %141 to float
  %143 = load i32, i32* @TWINVQ_SUB_AMP_MAX, align 4
  %144 = load i32, i32* @TWINVQ_MULAW_MU, align 4
  %145 = call float @twinvq_mulawinv(float %142, i32 %143, i32 %144)
  %146 = fmul float %123, %145
  %147 = load float*, float** %6, align 8
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* %11, align 4
  %150 = mul nsw i32 %148, %149
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float* %147, i64 %153
  store float %146, float* %154, align 4
  br label %155

155:                                              ; preds = %122
  %156 = load i32, i32* %10, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %10, align 4
  br label %118

158:                                              ; preds = %118
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %9, align 4
  br label %88

162:                                              ; preds = %88
  br label %163

163:                                              ; preds = %162, %86
  ret void
}

declare dso_local float @twinvq_mulawinv(float, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
