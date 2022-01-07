; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmadec.c_decode_exp_vlc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmadec.c_decode_exp_vlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i32, float*, i32, %struct.TYPE_4__, i32, i64*, i32** }
%struct.TYPE_4__ = type { i32 }

@pow_tab = common dso_local global float* null, align 8
@EXPVLCBITS = common dso_local global i32 0, align 4
@EXPMAX = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Exponent vlc invalid\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Exponent out of range: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @decode_exp_vlc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_exp_vlc(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca float*, align 8
  %16 = alloca i8**, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load float*, float** @pow_tab, align 8
  %18 = getelementptr inbounds float, float* %17, i64 60
  store float* %18, float** %15, align 8
  %19 = load float*, float** %15, align 8
  %20 = bitcast float* %19 to i8**
  store i8** %20, i8*** %16, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 9
  %23 = load i32**, i32*** %22, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %26, %29
  %31 = getelementptr inbounds i32*, i32** %23, i64 %30
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %9, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 8
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8**
  store i8** %40, i8*** %12, align 8
  %41 = load i8**, i8*** %12, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %41, i64 %45
  store i8** %46, i8*** %13, align 8
  store float 0.000000e+00, float* %11, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %96

51:                                               ; preds = %2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 7
  %54 = call i32 @get_bits(i32* %53, i32 5)
  %55 = add nsw i32 %54, 10
  store i32 %55, i32* %6, align 4
  %56 = load float*, float** %15, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %56, i64 %58
  %60 = load float, float* %59, align 4
  store float %60, float* %10, align 4
  %61 = load i8**, i8*** %16, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %14, align 8
  %66 = load float, float* %10, align 4
  store float %66, float* %11, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %9, align 8
  %69 = load i32, i32* %67, align 4
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, 3
  switch i32 %71, label %95 [
    i32 0, label %74
    i32 3, label %78
    i32 2, label %82
    i32 1, label %86
  ]

72:                                               ; No predecessors!
  br label %73

73:                                               ; preds = %90, %72
  br label %74

74:                                               ; preds = %51, %73
  %75 = load i8*, i8** %14, align 8
  %76 = load i8**, i8*** %12, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i32 1
  store i8** %77, i8*** %12, align 8
  store i8* %75, i8** %76, align 8
  br label %78

78:                                               ; preds = %51, %74
  %79 = load i8*, i8** %14, align 8
  %80 = load i8**, i8*** %12, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i32 1
  store i8** %81, i8*** %12, align 8
  store i8* %79, i8** %80, align 8
  br label %82

82:                                               ; preds = %51, %78
  %83 = load i8*, i8** %14, align 8
  %84 = load i8**, i8*** %12, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i32 1
  store i8** %85, i8*** %12, align 8
  store i8* %83, i8** %84, align 8
  br label %86

86:                                               ; preds = %51, %82
  %87 = load i8*, i8** %14, align 8
  %88 = load i8**, i8*** %12, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i32 1
  store i8** %89, i8*** %12, align 8
  store i8* %87, i8** %88, align 8
  br label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %7, align 4
  %92 = sub nsw i32 %91, 4
  store i32 %92, i32* %7, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %73, label %94

94:                                               ; preds = %90
  br label %95

95:                                               ; preds = %94, %51
  br label %97

96:                                               ; preds = %2
  store i32 36, i32* %6, align 4
  br label %97

97:                                               ; preds = %96, %95
  br label %98

98:                                               ; preds = %182, %97
  %99 = load i8**, i8*** %12, align 8
  %100 = load i8**, i8*** %13, align 8
  %101 = icmp ult i8** %99, %100
  br i1 %101, label %102, label %183

102:                                              ; preds = %98
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 7
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @EXPVLCBITS, align 4
  %110 = load i32, i32* @EXPMAX, align 4
  %111 = call i32 @get_vlc2(i32* %104, i32 %108, i32 %109, i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %102
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @AV_LOG_ERROR, align 4
  %119 = call i32 (i32, i32, i8*, ...) @av_log(i32 %117, i32 %118, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %191

120:                                              ; preds = %102
  %121 = load i32, i32* %8, align 4
  %122 = sub nsw i32 %121, 60
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = add i32 %125, 60
  %127 = load float*, float** @pow_tab, align 8
  %128 = call i32 @FF_ARRAY_ELEMS(float* %127)
  %129 = icmp uge i32 %126, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %120
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @AV_LOG_ERROR, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call i32 (i32, i32, i8*, ...) @av_log(i32 %133, i32 %134, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  store i32 -1, i32* %3, align 4
  br label %191

137:                                              ; preds = %120
  %138 = load float*, float** %15, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float, float* %138, i64 %140
  %142 = load float, float* %141, align 4
  store float %142, float* %10, align 4
  %143 = load i8**, i8*** %16, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  %147 = load i8*, i8** %146, align 8
  store i8* %147, i8** %14, align 8
  %148 = load float, float* %10, align 4
  %149 = load float, float* %11, align 4
  %150 = fcmp ogt float %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %137
  %152 = load float, float* %10, align 4
  store float %152, float* %11, align 4
  br label %153

153:                                              ; preds = %151, %137
  %154 = load i32*, i32** %9, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %9, align 8
  %156 = load i32, i32* %154, align 4
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = and i32 %157, 3
  switch i32 %158, label %182 [
    i32 0, label %161
    i32 3, label %165
    i32 2, label %169
    i32 1, label %173
  ]

159:                                              ; No predecessors!
  br label %160

160:                                              ; preds = %177, %159
  br label %161

161:                                              ; preds = %153, %160
  %162 = load i8*, i8** %14, align 8
  %163 = load i8**, i8*** %12, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i32 1
  store i8** %164, i8*** %12, align 8
  store i8* %162, i8** %163, align 8
  br label %165

165:                                              ; preds = %153, %161
  %166 = load i8*, i8** %14, align 8
  %167 = load i8**, i8*** %12, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i32 1
  store i8** %168, i8*** %12, align 8
  store i8* %166, i8** %167, align 8
  br label %169

169:                                              ; preds = %153, %165
  %170 = load i8*, i8** %14, align 8
  %171 = load i8**, i8*** %12, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i32 1
  store i8** %172, i8*** %12, align 8
  store i8* %170, i8** %171, align 8
  br label %173

173:                                              ; preds = %153, %169
  %174 = load i8*, i8** %14, align 8
  %175 = load i8**, i8*** %12, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i32 1
  store i8** %176, i8*** %12, align 8
  store i8* %174, i8** %175, align 8
  br label %177

177:                                              ; preds = %173
  %178 = load i32, i32* %7, align 4
  %179 = sub nsw i32 %178, 4
  store i32 %179, i32* %7, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %160, label %181

181:                                              ; preds = %177
  br label %182

182:                                              ; preds = %181, %153
  br label %98

183:                                              ; preds = %98
  %184 = load float, float* %11, align 4
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 4
  %187 = load float*, float** %186, align 8
  %188 = load i32, i32* %5, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %187, i64 %189
  store float %184, float* %190, align 4
  store i32 0, i32* %3, align 4
  br label %191

191:                                              ; preds = %183, %130, %114
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @FF_ARRAY_ELEMS(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
