; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegvideodec.c_mpegvideo_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegvideodec.c_mpegvideo_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@SLICE_START_CODE = common dso_local global i32 0, align 4
@VIDEO_ID = common dso_local global i32 0, align 4
@AUDIO_ID = common dso_local global i32 0, align 4
@AVPROBE_SCORE_EXTENSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @mpegvideo_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpegvideo_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %13, align 8
  %20 = load i32*, i32** %13, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  store i32* %25, i32** %14, align 8
  store i32 0, i32* %15, align 4
  br label %26

26:                                               ; preds = %170, %1
  %27 = load i32*, i32** %13, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = icmp ult i32* %27, %28
  br i1 %29, label %30, label %171

30:                                               ; preds = %26
  %31 = load i32*, i32** %13, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = call i32* @avpriv_find_start_code(i32* %31, i32* %32, i32* %4)
  store i32* %33, i32** %13, align 8
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, -256
  %36 = icmp eq i32 %35, 256
  br i1 %36, label %37, label %170

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  switch i32 %38, label %114 [
    i32 128, label %39
    i32 129, label %105
    i32 130, label %108
    i32 438, label %111
  ]

39:                                               ; preds = %37
  %40 = load i32*, i32** %13, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 6
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %114

46:                                               ; preds = %39
  store i32 -1, i32* %16, align 4
  %47 = load i32*, i32** %13, align 8
  %48 = load i32, i32* %16, align 4
  %49 = add nsw i32 %48, 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 2
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* %16, align 4
  %57 = add nsw i32 %56, 64
  store i32 %57, i32* %16, align 4
  br label %58

58:                                               ; preds = %55, %46
  %59 = load i32, i32* %16, align 4
  %60 = sext i32 %59 to i64
  %61 = load i32*, i32** %14, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = ptrtoint i32* %61 to i64
  %64 = ptrtoint i32* %62 to i64
  %65 = sub i64 %63, %64
  %66 = sdiv exact i64 %65, 4
  %67 = icmp sge i64 %60, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %114

69:                                               ; preds = %58
  %70 = load i32*, i32** %13, align 8
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %71, 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 1
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load i32, i32* %16, align 4
  %80 = add nsw i32 %79, 64
  store i32 %80, i32* %16, align 4
  br label %81

81:                                               ; preds = %78, %69
  %82 = load i32, i32* %16, align 4
  %83 = sext i32 %82 to i64
  %84 = load i32*, i32** %14, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = ptrtoint i32* %84 to i64
  %87 = ptrtoint i32* %85 to i64
  %88 = sub i64 %86, %87
  %89 = sdiv exact i64 %88, 4
  %90 = icmp sge i64 %83, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %114

92:                                               ; preds = %81
  %93 = load i32*, i32** %13, align 8
  %94 = load i32, i32* %16, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = getelementptr inbounds i32, i32* %96, i64 9
  %98 = call i32 @AV_RB24(i32* %97)
  %99 = and i32 %98, 16777214
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %114

102:                                              ; preds = %92
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %114

105:                                              ; preds = %37
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %114

108:                                              ; preds = %37
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %114

111:                                              ; preds = %37
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %37, %111, %108, %105, %102, %101, %91, %68, %45
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @SLICE_START_CODE, align 4
  %117 = icmp sge i32 %115, %116
  br i1 %117, label %118, label %151

118:                                              ; preds = %114
  %119 = load i32, i32* %4, align 4
  %120 = icmp sle i32 %119, 431
  br i1 %120, label %121, label %151

121:                                              ; preds = %118
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* @SLICE_START_CODE, align 4
  %124 = icmp sge i32 %122, %123
  br i1 %124, label %125, label %139

125:                                              ; preds = %121
  %126 = load i32, i32* %15, align 4
  %127 = icmp sle i32 %126, 431
  br i1 %127, label %128, label %139

128:                                              ; preds = %125
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* %15, align 4
  %131 = icmp sge i32 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %138

135:                                              ; preds = %128
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %12, align 4
  br label %138

138:                                              ; preds = %135, %132
  br label %150

139:                                              ; preds = %125, %121
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @SLICE_START_CODE, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %7, align 4
  br label %149

146:                                              ; preds = %139
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %12, align 4
  br label %149

149:                                              ; preds = %146, %143
  br label %150

150:                                              ; preds = %149, %138
  br label %151

151:                                              ; preds = %150, %118, %114
  %152 = load i32, i32* %4, align 4
  %153 = and i32 %152, 496
  %154 = load i32, i32* @VIDEO_ID, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  br label %168

159:                                              ; preds = %151
  %160 = load i32, i32* %4, align 4
  %161 = and i32 %160, 480
  %162 = load i32, i32* @AUDIO_ID, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %167

167:                                              ; preds = %164, %159
  br label %168

168:                                              ; preds = %167, %156
  %169 = load i32, i32* %4, align 4
  store i32 %169, i32* %15, align 4
  br label %170

170:                                              ; preds = %168, %30
  br label %26

171:                                              ; preds = %26
  %172 = load i32, i32* %6, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %216

174:                                              ; preds = %171
  %175 = load i32, i32* %6, align 4
  %176 = mul nsw i32 %175, 9
  %177 = load i32, i32* %5, align 4
  %178 = mul nsw i32 %177, 10
  %179 = icmp sle i32 %176, %178
  br i1 %179, label %180, label %216

180:                                              ; preds = %174
  %181 = load i32, i32* %5, align 4
  %182 = mul nsw i32 %181, 9
  %183 = load i32, i32* %7, align 4
  %184 = mul nsw i32 %183, 10
  %185 = icmp sle i32 %182, %184
  br i1 %185, label %186, label %216

186:                                              ; preds = %180
  %187 = load i32, i32* %8, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %216, label %189

189:                                              ; preds = %186
  %190 = load i32, i32* %10, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %216, label %192

192:                                              ; preds = %189
  %193 = load i32, i32* %11, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %216, label %195

195:                                              ; preds = %192
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* %12, align 4
  %198 = icmp sgt i32 %196, %197
  br i1 %198, label %199, label %216

199:                                              ; preds = %195
  %200 = load i32, i32* %9, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %204 = sdiv i32 %203, 4
  store i32 %204, i32* %2, align 4
  br label %217

205:                                              ; preds = %199
  %206 = load i32, i32* %5, align 4
  %207 = icmp sgt i32 %206, 1
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %210 = add nsw i32 %209, 1
  br label %214

211:                                              ; preds = %205
  %212 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %213 = sdiv i32 %212, 2
  br label %214

214:                                              ; preds = %211, %208
  %215 = phi i32 [ %210, %208 ], [ %213, %211 ]
  store i32 %215, i32* %2, align 4
  br label %217

216:                                              ; preds = %195, %192, %189, %186, %180, %174, %171
  store i32 0, i32* %2, align 4
  br label %217

217:                                              ; preds = %216, %214, %202
  %218 = load i32, i32* %2, align 4
  ret i32 %218
}

declare dso_local i32* @avpriv_find_start_code(i32*, i32*, i32*) #1

declare dso_local i32 @AV_RB24(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
