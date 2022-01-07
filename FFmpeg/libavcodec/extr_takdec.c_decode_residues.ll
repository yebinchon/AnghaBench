; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_takdec.c_decode_residues.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_takdec.c_decode_residues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32)* @decode_residues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_residues(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  store i32* %18, i32** %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %25, i32* %4, align 4
  br label %187

26:                                               ; preds = %3
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @get_bits1(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %174

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %31, %34
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %37, %40
  %42 = sub nsw i32 %36, %41
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %46, 2
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %30
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %13, align 4
  br label %58

55:                                               ; preds = %30
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %55, %49
  %59 = load i32, i32* %12, align 4
  %60 = icmp sle i32 %59, 1
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %12, align 4
  %63 = icmp sgt i32 %62, 128
  br i1 %63, label %64, label %66

64:                                               ; preds = %61, %58
  %65 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %65, i32* %4, align 4
  br label %187

66:                                               ; preds = %61
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @get_bits(i32* %67, i32 6)
  store i32 %68, i32* %10, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 %68, i32* %72, align 4
  store i32 1, i32* %9, align 4
  br label %73

73:                                               ; preds = %110, %66
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %113

77:                                               ; preds = %73
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @get_unary(i32* %78, i32 1, i32 6)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  switch i32 %80, label %102 [
    i32 6, label %81
    i32 5, label %84
    i32 4, label %84
    i32 3, label %84
    i32 2, label %96
    i32 1, label %99
  ]

81:                                               ; preds = %77
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @get_bits(i32* %82, i32 6)
  store i32 %83, i32* %10, align 4
  br label %102

84:                                               ; preds = %77, %77, %77
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @get_bits1(i32* %85)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = sub nsw i32 0, %87
  %89 = load i32, i32* %14, align 4
  %90 = sub nsw i32 %89, 1
  %91 = xor i32 %88, %90
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %10, align 4
  br label %102

96:                                               ; preds = %77
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %102

99:                                               ; preds = %77
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %77, %99, %96, %84, %81
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %103, i32* %109, align 4
  br label %110

110:                                              ; preds = %102
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %73

113:                                              ; preds = %73
  store i32 0, i32* %9, align 4
  br label %114

114:                                              ; preds = %168, %113
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %173

118:                                              ; preds = %114
  store i32 0, i32* %16, align 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %149, %118
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %12, align 4
  %129 = sub nsw i32 %128, 1
  %130 = icmp sge i32 %127, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %16, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %16, align 4
  br label %141

135:                                              ; preds = %126
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %16, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %16, align 4
  br label %141

141:                                              ; preds = %135, %131
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %12, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  br label %159

148:                                              ; preds = %141
  br label %149

149:                                              ; preds = %148
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %126, label %159

159:                                              ; preds = %149, %147
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %161 = load i32, i32* %10, align 4
  %162 = load i32*, i32** %6, align 8
  %163 = load i32, i32* %16, align 4
  %164 = call i32 @decode_segment(%struct.TYPE_4__* %160, i32 %161, i32* %162, i32 %163)
  store i32 %164, i32* %11, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = load i32, i32* %11, align 4
  store i32 %167, i32* %4, align 4
  br label %187

168:                                              ; preds = %159
  %169 = load i32, i32* %16, align 4
  %170 = load i32*, i32** %6, align 8
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  store i32* %172, i32** %6, align 8
  br label %114

173:                                              ; preds = %114
  br label %186

174:                                              ; preds = %26
  %175 = load i32*, i32** %8, align 8
  %176 = call i32 @get_bits(i32* %175, i32 6)
  store i32 %176, i32* %10, align 4
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %178 = load i32, i32* %10, align 4
  %179 = load i32*, i32** %6, align 8
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @decode_segment(%struct.TYPE_4__* %177, i32 %178, i32* %179, i32 %180)
  store i32 %181, i32* %11, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %174
  %184 = load i32, i32* %11, align 4
  store i32 %184, i32* %4, align 4
  br label %187

185:                                              ; preds = %174
  br label %186

186:                                              ; preds = %185, %173
  store i32 0, i32* %4, align 4
  br label %187

187:                                              ; preds = %186, %183, %166, %64, %24
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_unary(i32*, i32, i32) #1

declare dso_local i32 @decode_segment(%struct.TYPE_4__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
