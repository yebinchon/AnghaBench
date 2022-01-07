; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_encode_intervals.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_encode_intervals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbg_script = type { i32 }
%struct.TYPE_6__ = type { i32* }
%struct.ws_intervals = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AVERROR_BUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbg_script*, %struct.TYPE_6__*, %struct.ws_intervals*)* @encode_intervals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_intervals(%struct.sbg_script* %0, %struct.TYPE_6__* %1, %struct.ws_intervals* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sbg_script*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.ws_intervals*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.sbg_script* %0, %struct.sbg_script** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store %struct.ws_intervals* %2, %struct.ws_intervals** %7, align 8
  store i32 4, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %50, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.ws_intervals*, %struct.ws_intervals** %7, align 8
  %14 = getelementptr inbounds %struct.ws_intervals, %struct.ws_intervals* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %53

17:                                               ; preds = %11
  %18 = load %struct.ws_intervals*, %struct.ws_intervals** %7, align 8
  %19 = getelementptr inbounds %struct.ws_intervals, %struct.ws_intervals* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 128
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %40

28:                                               ; preds = %17
  %29 = load %struct.ws_intervals*, %struct.ws_intervals** %7, align 8
  %30 = getelementptr inbounds %struct.ws_intervals, %struct.ws_intervals* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 129
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 32, i32 0
  br label %40

40:                                               ; preds = %28, %27
  %41 = phi i32 [ 44, %27 ], [ %39, %28 ]
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = call i32 @AVERROR(i32 %47)
  store i32 %48, i32* %4, align 4
  br label %261

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %11

53:                                               ; preds = %11
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @ff_alloc_extradata(%struct.TYPE_6__* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = call i32 @AVERROR(i32 %59)
  store i32 %60, i32* %4, align 4
  br label %261

61:                                               ; preds = %53
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %10, align 8
  br label %65

65:                                               ; preds = %61
  %66 = load i32*, i32** %10, align 8
  %67 = load %struct.ws_intervals*, %struct.ws_intervals** %7, align 8
  %68 = getelementptr inbounds %struct.ws_intervals, %struct.ws_intervals* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @AV_WL32 to i32 (i32*, i32, ...)*)(i32* %66, i32 %69)
  %71 = load i32*, i32** %10, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  store i32* %72, i32** %10, align 8
  br label %73

73:                                               ; preds = %65
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %246, %73
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.ws_intervals*, %struct.ws_intervals** %7, align 8
  %77 = getelementptr inbounds %struct.ws_intervals, %struct.ws_intervals* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %249

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80
  %82 = load i32*, i32** %10, align 8
  %83 = load %struct.ws_intervals*, %struct.ws_intervals** %7, align 8
  %84 = getelementptr inbounds %struct.ws_intervals, %struct.ws_intervals* %83, i32 0, i32 1
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @AV_WL64 to i32 (i32*, i32, ...)*)(i32* %82, i32 %90)
  %92 = load i32*, i32** %10, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 8
  store i32* %93, i32** %10, align 8
  br label %94

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94
  %96 = load i32*, i32** %10, align 8
  %97 = load %struct.ws_intervals*, %struct.ws_intervals** %7, align 8
  %98 = getelementptr inbounds %struct.ws_intervals, %struct.ws_intervals* %97, i32 0, i32 1
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @AV_WL64 to i32 (i32*, i32, ...)*)(i32* %96, i32 %104)
  %106 = load i32*, i32** %10, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 8
  store i32* %107, i32** %10, align 8
  br label %108

108:                                              ; preds = %95
  br label %109

109:                                              ; preds = %108
  %110 = load i32*, i32** %10, align 8
  %111 = load %struct.ws_intervals*, %struct.ws_intervals** %7, align 8
  %112 = getelementptr inbounds %struct.ws_intervals, %struct.ws_intervals* %111, i32 0, i32 1
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @AV_WL32 to i32 (i32*, i32, ...)*)(i32* %110, i32 %118)
  %120 = load i32*, i32** %10, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 4
  store i32* %121, i32** %10, align 8
  br label %122

122:                                              ; preds = %109
  br label %123

123:                                              ; preds = %122
  %124 = load i32*, i32** %10, align 8
  %125 = load %struct.ws_intervals*, %struct.ws_intervals** %7, align 8
  %126 = getelementptr inbounds %struct.ws_intervals, %struct.ws_intervals* %125, i32 0, i32 1
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @AV_WL32 to i32 (i32*, i32, ...)*)(i32* %124, i32 %132)
  %134 = load i32*, i32** %10, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 4
  store i32* %135, i32** %10, align 8
  br label %136

136:                                              ; preds = %123
  %137 = load %struct.ws_intervals*, %struct.ws_intervals** %7, align 8
  %138 = getelementptr inbounds %struct.ws_intervals, %struct.ws_intervals* %137, i32 0, i32 1
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  switch i32 %144, label %245 [
    i32 128, label %145
    i32 129, label %216
  ]

145:                                              ; preds = %136
  br label %146

146:                                              ; preds = %145
  %147 = load i32*, i32** %10, align 8
  %148 = load %struct.ws_intervals*, %struct.ws_intervals** %7, align 8
  %149 = getelementptr inbounds %struct.ws_intervals, %struct.ws_intervals* %148, i32 0, i32 1
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @AV_WL32 to i32 (i32*, i32, ...)*)(i32* %147, i32 %155)
  %157 = load i32*, i32** %10, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 4
  store i32* %158, i32** %10, align 8
  br label %159

159:                                              ; preds = %146
  br label %160

160:                                              ; preds = %159
  %161 = load i32*, i32** %10, align 8
  %162 = load %struct.ws_intervals*, %struct.ws_intervals** %7, align 8
  %163 = getelementptr inbounds %struct.ws_intervals, %struct.ws_intervals* %162, i32 0, i32 1
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @AV_WL32 to i32 (i32*, i32, ...)*)(i32* %161, i32 %169)
  %171 = load i32*, i32** %10, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 4
  store i32* %172, i32** %10, align 8
  br label %173

173:                                              ; preds = %160
  br label %174

174:                                              ; preds = %173
  %175 = load i32*, i32** %10, align 8
  %176 = load %struct.ws_intervals*, %struct.ws_intervals** %7, align 8
  %177 = getelementptr inbounds %struct.ws_intervals, %struct.ws_intervals* %176, i32 0, i32 1
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %177, align 8
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @AV_WL32 to i32 (i32*, i32, ...)*)(i32* %175, i32 %183)
  %185 = load i32*, i32** %10, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 4
  store i32* %186, i32** %10, align 8
  br label %187

187:                                              ; preds = %174
  br label %188

188:                                              ; preds = %187
  %189 = load i32*, i32** %10, align 8
  %190 = load %struct.ws_intervals*, %struct.ws_intervals** %7, align 8
  %191 = getelementptr inbounds %struct.ws_intervals, %struct.ws_intervals* %190, i32 0, i32 1
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %191, align 8
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 4
  %198 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @AV_WL32 to i32 (i32*, i32, ...)*)(i32* %189, i32 %197)
  %199 = load i32*, i32** %10, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 4
  store i32* %200, i32** %10, align 8
  br label %201

201:                                              ; preds = %188
  br label %202

202:                                              ; preds = %201
  %203 = load i32*, i32** %10, align 8
  %204 = load %struct.ws_intervals*, %struct.ws_intervals** %7, align 8
  %205 = getelementptr inbounds %struct.ws_intervals, %struct.ws_intervals* %204, i32 0, i32 1
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %205, align 8
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 6
  %211 = load i32, i32* %210, align 4
  %212 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @AV_WL32 to i32 (i32*, i32, ...)*)(i32* %203, i32 %211)
  %213 = load i32*, i32** %10, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 4
  store i32* %214, i32** %10, align 8
  br label %215

215:                                              ; preds = %202
  br label %245

216:                                              ; preds = %136
  br label %217

217:                                              ; preds = %216
  %218 = load i32*, i32** %10, align 8
  %219 = load %struct.ws_intervals*, %struct.ws_intervals** %7, align 8
  %220 = getelementptr inbounds %struct.ws_intervals, %struct.ws_intervals* %219, i32 0, i32 1
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %220, align 8
  %222 = load i32, i32* %8, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 4
  %227 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @AV_WL32 to i32 (i32*, i32, ...)*)(i32* %218, i32 %226)
  %228 = load i32*, i32** %10, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 4
  store i32* %229, i32** %10, align 8
  br label %230

230:                                              ; preds = %217
  br label %231

231:                                              ; preds = %230
  %232 = load i32*, i32** %10, align 8
  %233 = load %struct.ws_intervals*, %struct.ws_intervals** %7, align 8
  %234 = getelementptr inbounds %struct.ws_intervals, %struct.ws_intervals* %233, i32 0, i32 1
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %234, align 8
  %236 = load i32, i32* %8, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 4
  %241 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @AV_WL32 to i32 (i32*, i32, ...)*)(i32* %232, i32 %240)
  %242 = load i32*, i32** %10, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 4
  store i32* %243, i32** %10, align 8
  br label %244

244:                                              ; preds = %231
  br label %245

245:                                              ; preds = %136, %244, %215
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %8, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %8, align 4
  br label %74

249:                                              ; preds = %74
  %250 = load i32*, i32** %10, align 8
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %9, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = icmp ne i32* %250, %256
  br i1 %257, label %258, label %260

258:                                              ; preds = %249
  %259 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %259, i32* %4, align 4
  br label %261

260:                                              ; preds = %249
  store i32 0, i32* %4, align 4
  br label %261

261:                                              ; preds = %260, %258, %58, %46
  %262 = load i32, i32* %4, align 4
  ret i32 %262
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @ff_alloc_extradata(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @AV_WL32(...) #1

declare dso_local i32 @AV_WL64(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
