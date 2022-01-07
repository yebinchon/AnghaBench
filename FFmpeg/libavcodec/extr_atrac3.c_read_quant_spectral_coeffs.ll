; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3.c_read_quant_spectral_coeffs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3.c_read_quant_spectral_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@clc_length_tab = common dso_local global i32* null, align 8
@mantissa_clc_tab = common dso_local global i32* null, align 8
@spectral_coeff_tab = common dso_local global %struct.TYPE_2__* null, align 8
@mantissa_vlc_tab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32*, i32)* @read_quant_spectral_coeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_quant_spectral_coeffs(i32* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* %10, align 4
  %19 = sdiv i32 %18, 2
  store i32 %19, i32* %10, align 4
  br label %20

20:                                               ; preds = %17, %5
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %96

23:                                               ; preds = %20
  %24 = load i32*, i32** @clc_length_tab, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %54

31:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %50, %31
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @get_sbits(i32* %40, i32 %41)
  store i32 %42, i32* %12, align 4
  br label %44

43:                                               ; preds = %36
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %43, %39
  %45 = load i32, i32* %12, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %45, i32* %49, align 4
  br label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %32

53:                                               ; preds = %32
  br label %95

54:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %91, %54
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %94

59:                                               ; preds = %55
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @get_bits(i32* %63, i32 %64)
  store i32 %65, i32* %12, align 4
  br label %67

66:                                               ; preds = %59
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %66, %62
  %68 = load i32*, i32** @mantissa_clc_tab, align 8
  %69 = load i32, i32* %12, align 4
  %70 = ashr i32 %69, 2
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %11, align 4
  %76 = mul nsw i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  store i32 %73, i32* %78, align 4
  %79 = load i32*, i32** @mantissa_clc_tab, align 8
  %80 = load i32, i32* %12, align 4
  %81 = and i32 %80, 3
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %11, align 4
  %87 = mul nsw i32 %86, 2
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  store i32 %84, i32* %90, align 4
  br label %91

91:                                               ; preds = %67
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %55

94:                                               ; preds = %55
  br label %95

95:                                               ; preds = %94, %53
  br label %192

96:                                               ; preds = %20
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 1
  br i1 %98, label %99, label %141

99:                                               ; preds = %96
  store i32 0, i32* %11, align 4
  br label %100

100:                                              ; preds = %137, %99
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %140

104:                                              ; preds = %100
  %105 = load i32*, i32** %6, align 8
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spectral_coeff_tab, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spectral_coeff_tab, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @get_vlc2(i32* %105, i32 %112, i32 %119, i32 3)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %13, align 4
  %124 = ashr i32 %123, 1
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %13, align 4
  %126 = and i32 %125, 1
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %104
  %129 = load i32, i32* %12, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %12, align 4
  br label %131

131:                                              ; preds = %128, %104
  %132 = load i32, i32* %12, align 4
  %133 = load i32*, i32** %9, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %132, i32* %136, align 4
  br label %137

137:                                              ; preds = %131
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %11, align 4
  br label %100

140:                                              ; preds = %100
  br label %191

141:                                              ; preds = %96
  store i32 0, i32* %11, align 4
  br label %142

142:                                              ; preds = %187, %141
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %190

146:                                              ; preds = %142
  %147 = load i32*, i32** %6, align 8
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spectral_coeff_tab, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spectral_coeff_tab, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @get_vlc2(i32* %147, i32 %154, i32 %161, i32 3)
  store i32 %162, i32* %13, align 4
  %163 = load i32*, i32** @mantissa_vlc_tab, align 8
  %164 = load i32, i32* %13, align 4
  %165 = mul nsw i32 %164, 2
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %9, align 8
  %170 = load i32, i32* %11, align 4
  %171 = mul nsw i32 %170, 2
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  store i32 %168, i32* %173, align 4
  %174 = load i32*, i32** @mantissa_vlc_tab, align 8
  %175 = load i32, i32* %13, align 4
  %176 = mul nsw i32 %175, 2
  %177 = add nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %174, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32*, i32** %9, align 8
  %182 = load i32, i32* %11, align 4
  %183 = mul nsw i32 %182, 2
  %184 = add nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %181, i64 %185
  store i32 %180, i32* %186, align 4
  br label %187

187:                                              ; preds = %146
  %188 = load i32, i32* %11, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %11, align 4
  br label %142

190:                                              ; preds = %142
  br label %191

191:                                              ; preds = %190, %140
  br label %192

192:                                              ; preds = %191, %95
  ret void
}

declare dso_local i32 @get_sbits(i32*, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
