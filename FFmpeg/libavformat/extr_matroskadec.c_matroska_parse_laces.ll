; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_matroska_parse_laces.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_matroska_parse_laces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"EBML block data error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32**, i32*, i32, i32**, i32*)* @matroska_parse_laces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matroska_parse_laces(%struct.TYPE_5__* %0, i32** %1, i32* %2, i32 %3, i32** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32** %4, i32*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %16, align 4
  %27 = load i32**, i32*** %9, align 8
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %17, align 8
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %6
  %32 = load i32*, i32** %13, align 8
  store i32 1, i32* %32, align 4
  %33 = call i32* @av_malloc(i32 4)
  %34 = load i32**, i32*** %12, align 8
  store i32* %33, i32** %34, align 8
  %35 = load i32**, i32*** %12, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = call i32 @AVERROR(i32 %39)
  store i32 %40, i32* %7, align 4
  br label %291

41:                                               ; preds = %31
  %42 = load i32, i32* %16, align 4
  %43 = load i32**, i32*** %12, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 0
  %45 = load i32*, i32** %44, align 8
  store i32 %42, i32* %45, align 4
  store i32 0, i32* %7, align 4
  br label %291

46:                                               ; preds = %6
  %47 = load i32, i32* %16, align 4
  %48 = icmp sgt i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @av_assert0(i32 %49)
  %51 = load i32*, i32** %17, align 8
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  %54 = load i32*, i32** %13, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %17, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32* %56, i32** %17, align 8
  %57 = load i32, i32* %16, align 4
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %16, align 4
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32* @av_malloc_array(i32 %60, i32 4)
  store i32* %61, i32** %18, align 8
  %62 = load i32*, i32** %18, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %46
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = call i32 @AVERROR(i32 %65)
  store i32 %66, i32* %7, align 4
  br label %291

67:                                               ; preds = %46
  %68 = load i32, i32* %11, align 4
  switch i32 %68, label %283 [
    i32 1, label %69
    i32 2, label %131
    i32 3, label %158
  ]

69:                                               ; preds = %67
  store i32 0, i32* %20, align 4
  store i32 0, i32* %15, align 4
  br label %70

70:                                               ; preds = %114, %69
  %71 = load i32, i32* %14, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32, i32* %15, align 4
  %75 = load i32*, i32** %13, align 8
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %76, 1
  %78 = icmp slt i32 %74, %77
  br label %79

79:                                               ; preds = %73, %70
  %80 = phi i1 [ false, %70 ], [ %78, %73 ]
  br i1 %80, label %81, label %117

81:                                               ; preds = %79
  %82 = load i32*, i32** %18, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %81, %112
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %20, align 4
  %89 = icmp sle i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %91, i32* %14, align 4
  br label %113

92:                                               ; preds = %86
  %93 = load i32*, i32** %17, align 8
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %20, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %20, align 4
  %98 = load i32, i32* %19, align 4
  %99 = load i32*, i32** %18, align 8
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, %98
  store i32 %104, i32* %102, align 4
  %105 = load i32*, i32** %17, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  store i32* %106, i32** %17, align 8
  %107 = load i32, i32* %16, align 4
  %108 = sub nsw i32 %107, 1
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %19, align 4
  %110 = icmp ne i32 %109, 255
  br i1 %110, label %111, label %112

111:                                              ; preds = %92
  br label %113

112:                                              ; preds = %92
  br label %86

113:                                              ; preds = %111, %90
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %15, align 4
  br label %70

117:                                              ; preds = %79
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %20, align 4
  %120 = icmp sle i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %122, i32* %14, align 4
  br label %283

123:                                              ; preds = %117
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %20, align 4
  %126 = sub nsw i32 %124, %125
  %127 = load i32*, i32** %18, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %126, i32* %130, align 4
  br label %283

131:                                              ; preds = %67
  %132 = load i32, i32* %16, align 4
  %133 = load i32*, i32** %13, align 8
  %134 = load i32, i32* %133, align 4
  %135 = srem i32 %132, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %138, i32* %14, align 4
  br label %283

139:                                              ; preds = %131
  store i32 0, i32* %15, align 4
  br label %140

140:                                              ; preds = %154, %139
  %141 = load i32, i32* %15, align 4
  %142 = load i32*, i32** %13, align 8
  %143 = load i32, i32* %142, align 4
  %144 = icmp slt i32 %141, %143
  br i1 %144, label %145, label %157

145:                                              ; preds = %140
  %146 = load i32, i32* %16, align 4
  %147 = load i32*, i32** %13, align 8
  %148 = load i32, i32* %147, align 4
  %149 = sdiv i32 %146, %148
  %150 = load i32*, i32** %18, align 8
  %151 = load i32, i32* %15, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 %149, i32* %153, align 4
  br label %154

154:                                              ; preds = %145
  %155 = load i32, i32* %15, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %15, align 4
  br label %140

157:                                              ; preds = %140
  br label %283

158:                                              ; preds = %67
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %160 = load i32*, i32** %17, align 8
  %161 = load i32, i32* %16, align 4
  %162 = call i32 @matroska_ebmlnum_uint(%struct.TYPE_5__* %159, i32* %160, i32 %161, i32* %21)
  store i32 %162, i32* %15, align 4
  %163 = load i32, i32* %15, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %158
  %166 = load i32, i32* %21, align 4
  %167 = load i32, i32* @INT_MAX, align 4
  %168 = icmp sgt i32 %166, %167
  br i1 %168, label %169, label %183

169:                                              ; preds = %165, %158
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @AV_LOG_INFO, align 4
  %174 = call i32 @av_log(i32 %172, i32 %173, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %175 = load i32, i32* %15, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %169
  %178 = load i32, i32* %15, align 4
  br label %181

179:                                              ; preds = %169
  %180 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  br label %181

181:                                              ; preds = %179, %177
  %182 = phi i32 [ %178, %177 ], [ %180, %179 ]
  store i32 %182, i32* %14, align 4
  br label %283

183:                                              ; preds = %165
  %184 = load i32, i32* %15, align 4
  %185 = load i32*, i32** %17, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  store i32* %187, i32** %17, align 8
  %188 = load i32, i32* %15, align 4
  %189 = load i32, i32* %16, align 4
  %190 = sub nsw i32 %189, %188
  store i32 %190, i32* %16, align 4
  %191 = load i32, i32* %21, align 4
  %192 = load i32*, i32** %18, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  store i32 %191, i32* %193, align 4
  store i32 %191, i32* %22, align 4
  store i32 1, i32* %15, align 4
  br label %194

194:                                              ; preds = %264, %183
  %195 = load i32, i32* %14, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %194
  %198 = load i32, i32* %15, align 4
  %199 = load i32*, i32** %13, align 8
  %200 = load i32, i32* %199, align 4
  %201 = sub nsw i32 %200, 1
  %202 = icmp slt i32 %198, %201
  br label %203

203:                                              ; preds = %197, %194
  %204 = phi i1 [ false, %194 ], [ %202, %197 ]
  br i1 %204, label %205, label %267

205:                                              ; preds = %203
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %207 = load i32*, i32** %17, align 8
  %208 = load i32, i32* %16, align 4
  %209 = call i32 @matroska_ebmlnum_sint(%struct.TYPE_5__* %206, i32* %207, i32 %208, i32* %23)
  store i32 %209, i32* %24, align 4
  %210 = load i32, i32* %24, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %223, label %212

212:                                              ; preds = %205
  %213 = load i32*, i32** %18, align 8
  %214 = load i32, i32* %15, align 4
  %215 = sub nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %23, align 4
  %220 = add nsw i32 %218, %219
  %221 = load i32, i32* @INT_MAX, align 4
  %222 = icmp sgt i32 %220, %221
  br i1 %222, label %223, label %237

223:                                              ; preds = %212, %205
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @AV_LOG_INFO, align 4
  %228 = call i32 @av_log(i32 %226, i32 %227, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %229 = load i32, i32* %24, align 4
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %223
  %232 = load i32, i32* %24, align 4
  br label %235

233:                                              ; preds = %223
  %234 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  br label %235

235:                                              ; preds = %233, %231
  %236 = phi i32 [ %232, %231 ], [ %234, %233 ]
  store i32 %236, i32* %14, align 4
  br label %267

237:                                              ; preds = %212
  %238 = load i32, i32* %24, align 4
  %239 = load i32*, i32** %17, align 8
  %240 = sext i32 %238 to i64
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  store i32* %241, i32** %17, align 8
  %242 = load i32, i32* %24, align 4
  %243 = load i32, i32* %16, align 4
  %244 = sub nsw i32 %243, %242
  store i32 %244, i32* %16, align 4
  %245 = load i32*, i32** %18, align 8
  %246 = load i32, i32* %15, align 4
  %247 = sub nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %23, align 4
  %252 = add nsw i32 %250, %251
  %253 = load i32*, i32** %18, align 8
  %254 = load i32, i32* %15, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  store i32 %252, i32* %256, align 4
  %257 = load i32*, i32** %18, align 8
  %258 = load i32, i32* %15, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %22, align 4
  %263 = add nsw i32 %262, %261
  store i32 %263, i32* %22, align 4
  br label %264

264:                                              ; preds = %237
  %265 = load i32, i32* %15, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %15, align 4
  br label %194

267:                                              ; preds = %235, %203
  %268 = load i32, i32* %16, align 4
  %269 = load i32, i32* %22, align 4
  %270 = icmp sle i32 %268, %269
  br i1 %270, label %271, label %273

271:                                              ; preds = %267
  %272 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %272, i32* %14, align 4
  br label %283

273:                                              ; preds = %267
  %274 = load i32, i32* %16, align 4
  %275 = load i32, i32* %22, align 4
  %276 = sub nsw i32 %274, %275
  %277 = load i32*, i32** %18, align 8
  %278 = load i32*, i32** %13, align 8
  %279 = load i32, i32* %278, align 4
  %280 = sub nsw i32 %279, 1
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %277, i64 %281
  store i32 %276, i32* %282, align 4
  br label %283

283:                                              ; preds = %67, %273, %271, %181, %157, %137, %123, %121
  %284 = load i32*, i32** %17, align 8
  %285 = load i32**, i32*** %9, align 8
  store i32* %284, i32** %285, align 8
  %286 = load i32*, i32** %18, align 8
  %287 = load i32**, i32*** %12, align 8
  store i32* %286, i32** %287, align 8
  %288 = load i32, i32* %16, align 4
  %289 = load i32*, i32** %10, align 8
  store i32 %288, i32* %289, align 4
  %290 = load i32, i32* %14, align 4
  store i32 %290, i32* %7, align 4
  br label %291

291:                                              ; preds = %283, %64, %41, %38
  %292 = load i32, i32* %7, align 4
  ret i32 %292
}

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32* @av_malloc_array(i32, i32) #1

declare dso_local i32 @matroska_ebmlnum_uint(%struct.TYPE_5__*, i32*, i32, i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @matroska_ebmlnum_sint(%struct.TYPE_5__*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
