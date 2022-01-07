; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_random_ts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_random_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, float***, i32* }

@DCA_LBR_TIME_SAMPLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32)* @random_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @random_ts(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca [8 x float], align 16
  %14 = alloca float*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %10, align 4
  br label %16

16:                                               ; preds = %166, %3
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %169

20:                                               ; preds = %16
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %162, %20
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %165

27:                                               ; preds = %21
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load float***, float**** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float**, float*** %30, i64 %32
  %34 = load float**, float*** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float*, float** %34, i64 %36
  %38 = load float*, float** %37, align 8
  store float* %38, float** %12, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %11, align 4
  %47 = shl i32 1, %46
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %27
  br label %162

51:                                               ; preds = %27
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 2
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load float*, float** %12, align 8
  %56 = load i32, i32* @DCA_LBR_TIME_SAMPLES, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = call i32 @memset(float* %55, i32 0, i32 %59)
  br label %161

61:                                               ; preds = %51
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 10
  br i1 %63, label %64, label %81

64:                                               ; preds = %61
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %77, %64
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @DCA_LBR_TIME_SAMPLES, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call float @lbr_rand(%struct.TYPE_4__* %70, i32 %71)
  %73 = load float*, float** %12, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %73, i64 %75
  store float %72, float* %76, align 4
  br label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %65

80:                                               ; preds = %65
  br label %160

81:                                               ; preds = %61
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %154, %81
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @DCA_LBR_TIME_SAMPLES, align 4
  %85 = sdiv i32 %84, 8
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %159

87:                                               ; preds = %82
  %88 = bitcast [8 x float]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %88, i8 0, i64 32, i1 false)
  store i32 2, i32* %9, align 4
  br label %89

89:                                               ; preds = %128, %87
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %90, 6
  br i1 %91, label %92, label %131

92:                                               ; preds = %89
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load float***, float**** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float**, float*** %95, i64 %97
  %99 = load float**, float*** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float*, float** %99, i64 %101
  %103 = load float*, float** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = mul nsw i32 %104, 8
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float, float* %103, i64 %106
  store float* %107, float** %14, align 8
  store i32 0, i32* %8, align 4
  br label %108

108:                                              ; preds = %124, %92
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %109, 8
  br i1 %110, label %111, label %127

111:                                              ; preds = %108
  %112 = load float*, float** %14, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %112, i64 %114
  %116 = load float, float* %115, align 4
  %117 = call i64 @fabs(float %116)
  %118 = sitofp i64 %117 to float
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [8 x float], [8 x float]* %13, i64 0, i64 %120
  %122 = load float, float* %121, align 4
  %123 = fadd float %122, %118
  store float %123, float* %121, align 4
  br label %124

124:                                              ; preds = %111
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %108

127:                                              ; preds = %108
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %89

131:                                              ; preds = %89
  store i32 0, i32* %8, align 4
  br label %132

132:                                              ; preds = %150, %131
  %133 = load i32, i32* %8, align 4
  %134 = icmp slt i32 %133, 8
  br i1 %134, label %135, label %153

135:                                              ; preds = %132
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [8 x float], [8 x float]* %13, i64 0, i64 %137
  %139 = load float, float* %138, align 4
  %140 = fmul float %139, 2.500000e-01
  %141 = fadd float %140, 5.000000e-01
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %143 = load i32, i32* %11, align 4
  %144 = call float @lbr_rand(%struct.TYPE_4__* %142, i32 %143)
  %145 = fmul float %141, %144
  %146 = load float*, float** %12, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, float* %146, i64 %148
  store float %145, float* %149, align 4
  br label %150

150:                                              ; preds = %135
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %8, align 4
  br label %132

153:                                              ; preds = %132
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  %157 = load float*, float** %12, align 8
  %158 = getelementptr inbounds float, float* %157, i64 8
  store float* %158, float** %12, align 8
  br label %82

159:                                              ; preds = %82
  br label %160

160:                                              ; preds = %159, %80
  br label %161

161:                                              ; preds = %160, %54
  br label %162

162:                                              ; preds = %161, %50
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %11, align 4
  br label %21

165:                                              ; preds = %21
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %10, align 4
  br label %16

169:                                              ; preds = %16
  ret void
}

declare dso_local i32 @memset(float*, i32, i32) #1

declare dso_local float @lbr_rand(%struct.TYPE_4__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @fabs(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
