; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_subtitles.c_ff_subtitles_queue_seek.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_subtitles.c_ff_subtitles_queue_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32, i64 }

@AVSEEK_FLAG_BYTE = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@AVSEEK_FLAG_FRAME = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_subtitles_queue_seek(%struct.TYPE_6__* %0, i32* %1, i32 %2, i64 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* @AVSEEK_FLAG_BYTE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %7
  %25 = load i32, i32* @ENOSYS, align 4
  %26 = call i32 @AVERROR(i32 %25)
  store i32 %26, i32* %8, align 4
  br label %257

27:                                               ; preds = %7
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* @AVSEEK_FLAG_FRAME, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %27
  %33 = load i64, i64* %13, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* %13, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35, %32
  %42 = load i32, i32* @ERANGE, align 4
  %43 = call i32 @AVERROR(i32 %42)
  store i32 %43, i32* %8, align 4
  br label %257

44:                                               ; preds = %35
  %45 = load i64, i64* %13, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  br label %255

49:                                               ; preds = %27
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %51 = load i64, i64* %13, align 8
  %52 = call i32 @search_sub_ts(%struct.TYPE_6__* %50, i64 %51)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %17, align 4
  store i32 %56, i32* %8, align 4
  br label %257

57:                                               ; preds = %49
  %58 = load i32, i32* %17, align 4
  store i32 %58, i32* %16, align 4
  br label %59

59:                                               ; preds = %96, %57
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %59
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load i32, i32* %16, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %12, align 8
  %76 = icmp slt i64 %74, %75
  br label %77

77:                                               ; preds = %66, %59
  %78 = phi i1 [ false, %59 ], [ %76, %66 ]
  br i1 %78, label %79, label %99

79:                                               ; preds = %77
  %80 = load i32, i32* %11, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %93, label %82

82:                                               ; preds = %79
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = load i32, i32* %16, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %82, %79
  %94 = load i32, i32* %16, align 4
  store i32 %94, i32* %17, align 4
  br label %95

95:                                               ; preds = %93, %82
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %16, align 4
  br label %59

99:                                               ; preds = %77
  %100 = load i32, i32* %17, align 4
  store i32 %100, i32* %16, align 4
  br label %101

101:                                              ; preds = %134, %99
  %102 = load i32, i32* %16, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %101
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = load i32, i32* %16, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %14, align 8
  %114 = icmp sgt i64 %112, %113
  br label %115

115:                                              ; preds = %104, %101
  %116 = phi i1 [ false, %101 ], [ %114, %104 ]
  br i1 %116, label %117, label %137

117:                                              ; preds = %115
  %118 = load i32, i32* %11, align 4
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %131, label %120

120:                                              ; preds = %117
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %120, %117
  %132 = load i32, i32* %16, align 4
  store i32 %132, i32* %17, align 4
  br label %133

133:                                              ; preds = %131, %120
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %16, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %16, align 4
  br label %101

137:                                              ; preds = %115
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = load i32, i32* %17, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %18, align 8
  %146 = load i64, i64* %18, align 8
  %147 = load i64, i64* %12, align 8
  %148 = icmp slt i64 %146, %147
  br i1 %148, label %153, label %149

149:                                              ; preds = %137
  %150 = load i64, i64* %18, align 8
  %151 = load i64, i64* %14, align 8
  %152 = icmp sgt i64 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %149, %137
  %154 = load i32, i32* @ERANGE, align 4
  %155 = call i32 @AVERROR(i32 %154)
  store i32 %155, i32* %8, align 4
  br label %257

156:                                              ; preds = %149
  %157 = load i32, i32* %17, align 4
  %158 = sub nsw i32 %157, 1
  store i32 %158, i32* %16, align 4
  br label %159

159:                                              ; preds = %216, %156
  %160 = load i32, i32* %16, align 4
  %161 = icmp sge i32 %160, 0
  br i1 %161, label %162, label %219

162:                                              ; preds = %159
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = load i32, i32* %16, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %19, align 8
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %172, align 8
  %174 = load i32, i32* %16, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp sle i64 %178, 0
  br i1 %179, label %194, label %180

180:                                              ; preds = %162
  %181 = load i32, i32* %11, align 4
  %182 = icmp ne i32 %181, -1
  br i1 %182, label %183, label %195

183:                                              ; preds = %180
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = load i32, i32* %16, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %11, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %183, %162
  br label %216

195:                                              ; preds = %183, %180
  %196 = load i64, i64* %19, align 8
  %197 = load i64, i64* %12, align 8
  %198 = icmp sge i64 %196, %197
  br i1 %198, label %199, label %214

199:                                              ; preds = %195
  %200 = load i64, i64* %19, align 8
  %201 = load i64, i64* %18, align 8
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 2
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %203, align 8
  %205 = load i32, i32* %16, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = sub nsw i64 %201, %209
  %211 = icmp sgt i64 %200, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %199
  %213 = load i32, i32* %16, align 4
  store i32 %213, i32* %17, align 4
  br label %215

214:                                              ; preds = %199, %195
  br label %219

215:                                              ; preds = %212
  br label %216

216:                                              ; preds = %215, %194
  %217 = load i32, i32* %16, align 4
  %218 = add nsw i32 %217, -1
  store i32 %218, i32* %16, align 4
  br label %159

219:                                              ; preds = %214, %159
  %220 = load i32, i32* %11, align 4
  %221 = icmp eq i32 %220, -1
  br i1 %221, label %222, label %251

222:                                              ; preds = %219
  br label %223

223:                                              ; preds = %247, %222
  %224 = load i32, i32* %17, align 4
  %225 = icmp sgt i32 %224, 0
  br i1 %225, label %226, label %245

226:                                              ; preds = %223
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %228, align 8
  %230 = load i32, i32* %17, align 4
  %231 = sub nsw i32 %230, 1
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 2
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %237, align 8
  %239 = load i32, i32* %17, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp eq i64 %235, %243
  br label %245

245:                                              ; preds = %226, %223
  %246 = phi i1 [ false, %223 ], [ %244, %226 ]
  br i1 %246, label %247, label %250

247:                                              ; preds = %245
  %248 = load i32, i32* %17, align 4
  %249 = add nsw i32 %248, -1
  store i32 %249, i32* %17, align 4
  br label %223

250:                                              ; preds = %245
  br label %251

251:                                              ; preds = %250, %219
  %252 = load i32, i32* %17, align 4
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 1
  store i32 %252, i32* %254, align 8
  br label %255

255:                                              ; preds = %251, %44
  br label %256

256:                                              ; preds = %255
  store i32 0, i32* %8, align 4
  br label %257

257:                                              ; preds = %256, %153, %55, %41, %24
  %258 = load i32, i32* %8, align 4
  ret i32 %258
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @search_sub_ts(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
