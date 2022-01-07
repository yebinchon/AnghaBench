; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ac3dec.c_ac3_eac3_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ac3dec.c_ac3_eac3_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@AV_CODEC_ID_AC3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\01\10\00", align 1
@AV_CRC_16_ANSI = common dso_local global i32 0, align 4
@AV_CODEC_ID_EAC3 = common dso_local global i32 0, align 4
@AVPROBE_SCORE_EXTENSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @ac3_eac3_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac3_eac3_probe(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [4096 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %18 = load i32, i32* @AV_CODEC_ID_AC3, align 4
  store i32 %18, i32* %12, align 4
  store i32 0, i32* %6, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  store i32* %27, i32** %11, align 8
  br label %28

28:                                               ; preds = %228, %2
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = icmp ult i32* %29, %30
  br i1 %31, label %32, label %231

32:                                               ; preds = %28
  %33 = load i32*, i32** %9, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ugt i32* %33, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %32
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 11
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 119
  br i1 %47, label %59, label %48

48:                                               ; preds = %43, %38
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 119
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 11
  br i1 %57, label %59, label %58

58:                                               ; preds = %53, %48
  br label %228

59:                                               ; preds = %53, %43, %32
  %60 = load i32*, i32** %9, align 8
  store i32* %60, i32** %10, align 8
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %213, %59
  %62 = load i32*, i32** %10, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = icmp ult i32* %62, %63
  br i1 %64, label %65, label %216

65:                                               ; preds = %61
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @memcmp(i32* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %65
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 16
  %72 = load i32*, i32** %11, align 8
  %73 = icmp ugt i32* %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %216

75:                                               ; preds = %69
  %76 = load i32*, i32** %10, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 16
  store i32* %77, i32** %10, align 8
  br label %78

78:                                               ; preds = %75, %65
  %79 = load i32*, i32** %9, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 119
  br i1 %82, label %83, label %117

83:                                               ; preds = %78
  %84 = load i32*, i32** %9, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 11
  br i1 %87, label %88, label %117

88:                                               ; preds = %83
  store i32 0, i32* %16, align 4
  br label %89

89:                                               ; preds = %111, %88
  %90 = load i32, i32* %16, align 4
  %91 = icmp slt i32 %90, 8
  br i1 %91, label %92, label %114

92:                                               ; preds = %89
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* %16, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [4096 x i32], [4096 x i32]* %13, i64 0, i64 %100
  store i32 %98, i32* %101, align 4
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %16, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [4096 x i32], [4096 x i32]* %13, i64 0, i64 %109
  store i32 %106, i32* %110, align 4
  br label %111

111:                                              ; preds = %92
  %112 = load i32, i32* %16, align 4
  %113 = add nsw i32 %112, 2
  store i32 %113, i32* %16, align 4
  br label %89

114:                                              ; preds = %89
  %115 = getelementptr inbounds [4096 x i32], [4096 x i32]* %13, i64 0, i64 0
  %116 = call i32 @av_ac3_parse_header(i32* %115, i32 8, i32* %14, i32* %15)
  store i32 %116, i32* %17, align 4
  br label %127

117:                                              ; preds = %83, %78
  %118 = load i32*, i32** %10, align 8
  %119 = load i32*, i32** %11, align 8
  %120 = load i32*, i32** %10, align 8
  %121 = ptrtoint i32* %119 to i64
  %122 = ptrtoint i32* %120 to i64
  %123 = sub i64 %121, %122
  %124 = sdiv exact i64 %123, 4
  %125 = trunc i64 %124 to i32
  %126 = call i32 @av_ac3_parse_header(i32* %118, i32 %125, i32* %14, i32* %15)
  store i32 %126, i32* %17, align 4
  br label %127

127:                                              ; preds = %117, %114
  %128 = load i32, i32* %17, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %216

131:                                              ; preds = %127
  %132 = load i32*, i32** %10, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32*, i32** %11, align 8
  %137 = icmp ugt i32* %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  br label %216

139:                                              ; preds = %131
  %140 = load i32*, i32** %9, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 119
  br i1 %143, label %144, label %192

144:                                              ; preds = %139
  %145 = load i32*, i32** %9, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 11
  br i1 %148, label %149, label %192

149:                                              ; preds = %144
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = icmp ule i64 %151, 16384
  %153 = zext i1 %152 to i32
  %154 = call i32 @av_assert0(i32 %153)
  store i32 8, i32* %16, align 4
  br label %155

155:                                              ; preds = %178, %149
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* %15, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %181

159:                                              ; preds = %155
  %160 = load i32*, i32** %10, align 8
  %161 = load i32, i32* %16, align 4
  %162 = add nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %16, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [4096 x i32], [4096 x i32]* %13, i64 0, i64 %167
  store i32 %165, i32* %168, align 4
  %169 = load i32*, i32** %10, align 8
  %170 = load i32, i32* %16, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %16, align 4
  %175 = add nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [4096 x i32], [4096 x i32]* %13, i64 0, i64 %176
  store i32 %173, i32* %177, align 4
  br label %178

178:                                              ; preds = %159
  %179 = load i32, i32* %16, align 4
  %180 = add nsw i32 %179, 2
  store i32 %180, i32* %16, align 4
  br label %155

181:                                              ; preds = %155
  %182 = load i32, i32* @AV_CRC_16_ANSI, align 4
  %183 = call i32 @av_crc_get_table(i32 %182)
  %184 = getelementptr inbounds [4096 x i32], [4096 x i32]* %13, i64 0, i64 0
  %185 = getelementptr inbounds i32, i32* %184, i64 2
  %186 = load i32, i32* %15, align 4
  %187 = sub nsw i32 %186, 2
  %188 = call i64 @av_crc(i32 %183, i32 0, i32* %185, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %181
  br label %216

191:                                              ; preds = %181
  br label %203

192:                                              ; preds = %144, %139
  %193 = load i32, i32* @AV_CRC_16_ANSI, align 4
  %194 = call i32 @av_crc_get_table(i32 %193)
  %195 = load i32*, i32** %10, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 2
  %197 = load i32, i32* %15, align 4
  %198 = sub nsw i32 %197, 2
  %199 = call i64 @av_crc(i32 %194, i32 0, i32* %196, i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %192
  br label %216

202:                                              ; preds = %192
  br label %203

203:                                              ; preds = %202, %191
  %204 = load i32, i32* %14, align 4
  %205 = icmp sgt i32 %204, 10
  br i1 %205, label %206, label %208

206:                                              ; preds = %203
  %207 = load i32, i32* @AV_CODEC_ID_EAC3, align 4
  store i32 %207, i32* %12, align 4
  br label %208

208:                                              ; preds = %206, %203
  %209 = load i32, i32* %15, align 4
  %210 = load i32*, i32** %10, align 8
  %211 = sext i32 %209 to i64
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  store i32* %212, i32** %10, align 8
  br label %213

213:                                              ; preds = %208
  %214 = load i32, i32* %8, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %8, align 4
  br label %61

216:                                              ; preds = %201, %190, %138, %130, %74, %61
  %217 = load i32, i32* %6, align 4
  %218 = load i32, i32* %8, align 4
  %219 = call i32 @FFMAX(i32 %217, i32 %218)
  store i32 %219, i32* %6, align 4
  %220 = load i32*, i32** %9, align 8
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = icmp eq i32* %220, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %216
  %226 = load i32, i32* %8, align 4
  store i32 %226, i32* %7, align 4
  br label %227

227:                                              ; preds = %225, %216
  br label %228

228:                                              ; preds = %227, %58
  %229 = load i32*, i32** %9, align 8
  %230 = getelementptr inbounds i32, i32* %229, i32 1
  store i32* %230, i32** %9, align 8
  br label %28

231:                                              ; preds = %28
  %232 = load i32, i32* %12, align 4
  %233 = load i32, i32* %5, align 4
  %234 = icmp ne i32 %232, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %231
  store i32 0, i32* %3, align 4
  br label %258

236:                                              ; preds = %231
  %237 = load i32, i32* %7, align 4
  %238 = icmp sge i32 %237, 7
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %3, align 4
  br label %258

242:                                              ; preds = %236
  %243 = load i32, i32* %6, align 4
  %244 = icmp sgt i32 %243, 200
  br i1 %244, label %245, label %247

245:                                              ; preds = %242
  %246 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  store i32 %246, i32* %3, align 4
  br label %258

247:                                              ; preds = %242
  %248 = load i32, i32* %6, align 4
  %249 = icmp sge i32 %248, 4
  br i1 %249, label %250, label %253

250:                                              ; preds = %247
  %251 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %252 = sdiv i32 %251, 2
  store i32 %252, i32* %3, align 4
  br label %258

253:                                              ; preds = %247
  %254 = load i32, i32* %6, align 4
  %255 = icmp sge i32 %254, 1
  br i1 %255, label %256, label %257

256:                                              ; preds = %253
  store i32 1, i32* %3, align 4
  br label %258

257:                                              ; preds = %253
  store i32 0, i32* %3, align 4
  br label %258

258:                                              ; preds = %257, %256, %250, %245, %239, %235
  %259 = load i32, i32* %3, align 4
  ret i32 %259
}

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @av_ac3_parse_header(i32*, i32, i32*, i32*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i64 @av_crc(i32, i32, i32*, i32) #1

declare dso_local i32 @av_crc_get_table(i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
