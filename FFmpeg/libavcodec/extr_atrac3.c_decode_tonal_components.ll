; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3.c_decode_tonal_components.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3.c_decode_tonal_components.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@SAMPLES_PER_FRAME = common dso_local global i32 0, align 4
@ff_atrac_sf_table = common dso_local global float* null, align 8
@inv_max_quant = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32)* @decode_tonal_components to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_tonal_components(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x i32], align 16
  %16 = alloca [8 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_3__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca float, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %17, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @get_bits(i32* %26, i32 5)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %183

31:                                               ; preds = %3
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @get_bits(i32* %32, i32 2)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %37, i32* %4, align 4
  br label %183

38:                                               ; preds = %31
  %39 = load i32, i32* %13, align 4
  %40 = and i32 %39, 1
  store i32 %40, i32* %14, align 4
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %178, %38
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %181

45:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %56, %45
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @get_bits1(i32* %51)
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %54
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %46

59:                                               ; preds = %46
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @get_bits(i32* %60, i32 3)
  store i32 %61, i32* %18, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @get_bits(i32* %62, i32 3)
  store i32 %63, i32* %19, align 4
  %64 = load i32, i32* %19, align 4
  %65 = icmp sle i32 %64, 1
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %67, i32* %4, align 4
  br label %183

68:                                               ; preds = %59
  %69 = load i32, i32* %13, align 4
  %70 = icmp eq i32 %69, 3
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @get_bits1(i32* %72)
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %71, %68
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %174, %74
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  %79 = mul nsw i32 %78, 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %177

81:                                               ; preds = %75
  %82 = load i32, i32* %9, align 4
  %83 = ashr i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %174

89:                                               ; preds = %81
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @get_bits(i32* %90, i32 3)
  store i32 %91, i32* %20, align 4
  store i32 0, i32* %10, align 4
  br label %92

92:                                               ; preds = %170, %89
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %20, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %173

96:                                               ; preds = %92
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %98 = load i32, i32* %17, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %99
  store %struct.TYPE_3__* %100, %struct.TYPE_3__** %21, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @get_bits(i32* %101, i32 6)
  store i32 %102, i32* %22, align 4
  %103 = load i32, i32* %17, align 4
  %104 = icmp sge i32 %103, 64
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %106, i32* %4, align 4
  br label %183

107:                                              ; preds = %96
  %108 = load i32, i32* %9, align 4
  %109 = mul nsw i32 %108, 64
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 @get_bits(i32* %110, i32 6)
  %112 = add nsw i32 %109, %111
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* @SAMPLES_PER_FRAME, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %115, %118
  store i32 %119, i32* %24, align 4
  %120 = load i32, i32* %18, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %23, align 4
  %122 = load i32, i32* %24, align 4
  %123 = load i32, i32* %23, align 4
  %124 = call i32 @FFMIN(i32 %122, i32 %123)
  store i32 %124, i32* %23, align 4
  %125 = load float*, float** @ff_atrac_sf_table, align 8
  %126 = load i32, i32* %22, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %125, i64 %127
  %129 = load float, float* %128, align 4
  %130 = load float*, float** @inv_max_quant, align 8
  %131 = load i32, i32* %19, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %130, i64 %132
  %134 = load float, float* %133, align 4
  %135 = fmul float %129, %134
  store float %135, float* %25, align 4
  %136 = load i32*, i32** %5, align 8
  %137 = load i32, i32* %19, align 4
  %138 = load i32, i32* %14, align 4
  %139 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %140 = load i32, i32* %23, align 4
  %141 = call i32 @read_quant_spectral_coeffs(i32* %136, i32 %137, i32 %138, i32* %139, i32 %140)
  %142 = load i32, i32* %23, align 4
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  store i32 0, i32* %11, align 4
  br label %145

145:                                              ; preds = %164, %107
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %23, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %167

149:                                              ; preds = %145
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = sitofp i32 %153 to float
  %155 = load float, float* %25, align 4
  %156 = fmul float %154, %155
  %157 = fptosi float %156 to i32
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %157, i32* %163, align 4
  br label %164

164:                                              ; preds = %149
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %11, align 4
  br label %145

167:                                              ; preds = %145
  %168 = load i32, i32* %17, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %17, align 4
  br label %170

170:                                              ; preds = %167
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %10, align 4
  br label %92

173:                                              ; preds = %92
  br label %174

174:                                              ; preds = %173, %88
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %9, align 4
  br label %75

177:                                              ; preds = %75
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %8, align 4
  br label %41

181:                                              ; preds = %41
  %182 = load i32, i32* %17, align 4
  store i32 %182, i32* %4, align 4
  br label %183

183:                                              ; preds = %181, %105, %66, %36, %30
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @read_quant_spectral_coeffs(i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
