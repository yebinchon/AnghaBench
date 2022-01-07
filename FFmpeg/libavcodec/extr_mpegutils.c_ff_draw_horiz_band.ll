; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegutils.c_ff_draw_horiz_band.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegutils.c_ff_draw_horiz_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32, i32, i32)*, i64, i32 }
%struct.TYPE_11__ = type { i64, i32* }
%struct.TYPE_10__ = type { i32 }

@PICT_FRAME = common dso_local global i32 0, align 4
@SLICE_FLAG_ALLOW_FIELD = common dso_local global i32 0, align 4
@AV_NUM_DATA_POINTERS = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_B = common dso_local global i64 0, align 8
@SLICE_FLAG_CODED_ORDER = common dso_local global i32 0, align 4
@AV_CODEC_ID_SVQ3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_draw_horiz_band(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_11__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.TYPE_10__* @av_pix_fmt_desc_get(i32 %27)
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %17, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @PICT_FRAME, align 4
  %34 = icmp ne i32 %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %19, align 4
  %36 = load i32, i32* %19, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %8
  %39 = load i32, i32* %13, align 4
  %40 = shl i32 %39, 1
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %12, align 4
  %42 = shl i32 %41, 1
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %38, %8
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %47, %49
  %51 = call i32 @FFMIN(i32 %44, i64 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %19, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %43
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @SLICE_FLAG_ALLOW_FIELD, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  br label %175

65:                                               ; preds = %57, %54, %43
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = load i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32, i32, i32)*, i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32, i32, i32)** %67, align 8
  %69 = icmp ne i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32, i32, i32)* %68, null
  br i1 %69, label %70, label %175

70:                                               ; preds = %65
  %71 = load i32, i32* @AV_NUM_DATA_POINTERS, align 4
  %72 = zext i32 %71 to i64
  %73 = call i8* @llvm.stacksave()
  store i8* %73, i8** %21, align 8
  %74 = alloca i32, i64 %72, align 16
  store i64 %72, i64* %22, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %90, label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %80
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @SLICE_FLAG_CODED_ORDER, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83, %80, %70
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %91, %struct.TYPE_11__** %20, align 8
  br label %99

92:                                               ; preds = %83
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %94 = icmp ne %struct.TYPE_11__* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %96, %struct.TYPE_11__** %20, align 8
  br label %98

97:                                               ; preds = %92
  store i32 1, i32* %24, align 4
  br label %171

98:                                               ; preds = %95
  br label %99

99:                                               ; preds = %98, %90
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %128

105:                                              ; preds = %99
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* @PICT_FRAME, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %128

109:                                              ; preds = %105
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @AV_CODEC_ID_SVQ3, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %109
  store i32 0, i32* %23, align 4
  br label %116

116:                                              ; preds = %124, %115
  %117 = load i32, i32* %23, align 4
  %118 = load i32, i32* @AV_NUM_DATA_POINTERS, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = load i32, i32* %23, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %74, i64 %122
  store i32 0, i32* %123, align 4
  br label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %23, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %23, align 4
  br label %116

127:                                              ; preds = %116
  br label %160

128:                                              ; preds = %109, %105, %99
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 %129, %134
  %136 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %135, i32* %136, align 16
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %18, align 4
  %139 = ashr i32 %137, %138
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 %139, %144
  %146 = getelementptr inbounds i32, i32* %74, i64 2
  store i32 %145, i32* %146, align 8
  %147 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 %145, i32* %147, align 4
  store i32 3, i32* %23, align 4
  br label %148

148:                                              ; preds = %156, %128
  %149 = load i32, i32* %23, align 4
  %150 = load i32, i32* @AV_NUM_DATA_POINTERS, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %148
  %153 = load i32, i32* %23, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %74, i64 %154
  store i32 0, i32* %155, align 4
  br label %156

156:                                              ; preds = %152
  %157 = load i32, i32* %23, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %23, align 4
  br label %148

159:                                              ; preds = %148
  br label %160

160:                                              ; preds = %159, %127
  %161 = call i32 (...) @emms_c()
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 2
  %164 = load i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32, i32, i32)*, i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32, i32, i32)** %163, align 8
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %13, align 4
  %170 = call i32 %164(%struct.TYPE_12__* %165, %struct.TYPE_11__* %166, i32* %74, i32 %167, i32 %168, i32 %169)
  store i32 0, i32* %24, align 4
  br label %171

171:                                              ; preds = %160, %97
  %172 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %172)
  %173 = load i32, i32* %24, align 4
  switch i32 %173, label %176 [
    i32 0, label %174
    i32 1, label %175
  ]

174:                                              ; preds = %171
  br label %175

175:                                              ; preds = %64, %171, %174, %65
  ret void

176:                                              ; preds = %171
  unreachable
}

declare dso_local %struct.TYPE_10__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @FFMIN(i32, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @emms_c(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
