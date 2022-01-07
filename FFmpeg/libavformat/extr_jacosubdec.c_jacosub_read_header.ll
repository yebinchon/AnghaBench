; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_jacosubdec.c_jacosub_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_jacosubdec.c_jacosub_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__*, i32* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }

@JSS_MAX_LINESIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i32 0, align 4
@AV_CODEC_ID_JACOSUB = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"\\\0A\00", align 1
@cmds = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"#S %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"#T %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @jacosub_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jacosub_read_header(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_19__*, align 8
  %20 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %5, align 8
  %24 = load i32, i32* @JSS_MAX_LINESIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %6, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %7, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %32 = call %struct.TYPE_18__* @avformat_new_stream(%struct.TYPE_20__* %31, i32* null)
  store %struct.TYPE_18__* %32, %struct.TYPE_18__** %13, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %34 = icmp ne %struct.TYPE_18__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %1
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = call i32 @AVERROR(i32 %36)
  store i32 %37, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %229

38:                                               ; preds = %1
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %40 = call i32 @avpriv_set_pts_info(%struct.TYPE_18__* %39, i32 64, i32 1, i32 100)
  %41 = load i32, i32* @AVMEDIA_TYPE_SUBTITLE, align 4
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* @AV_CODEC_ID_JACOSUB, align 4
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  store i32 30, i32* %52, align 8
  %53 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %54 = add nsw i64 1024, %53
  %55 = call i32 @av_bprint_init(i32* %4, i64 %54, i32 4096)
  br label %56

56:                                               ; preds = %183, %118, %108, %100, %38
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @avio_feof(i32* %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br i1 %60, label %61, label %184

61:                                               ; preds = %56
  store i8* %27, i8** %16, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @avio_tell(i32* %62)
  store i32 %63, i32* %17, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = trunc i64 %25 to i32
  %66 = call i32 @ff_get_line(i32* %64, i8* %27, i32 %65)
  store i32 %66, i32* %18, align 4
  %67 = load i8*, i8** %16, align 8
  %68 = call i8* @jss_skip_whitespace(i8* %67)
  store i8* %68, i8** %16, align 8
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %61
  %72 = load i8*, i8** %16, align 8
  %73 = call i64 @timed_line(i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %103

75:                                               ; preds = %71, %61
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call %struct.TYPE_19__* @ff_subtitles_queue_insert(%struct.TYPE_21__* %77, i8* %27, i32 %78, i32 %79)
  store %struct.TYPE_19__* %80, %struct.TYPE_19__** %19, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %82 = icmp ne %struct.TYPE_19__* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %75
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = call i32 @AVERROR(i32 %84)
  store i32 %85, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %229

86:                                               ; preds = %75
  %87 = load i32, i32* %17, align 4
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %18, align 4
  %91 = icmp sgt i32 %90, 1
  br i1 %91, label %92, label %100

92:                                               ; preds = %86
  %93 = load i32, i32* %18, align 4
  %94 = sub nsw i32 %93, 2
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %27, i64 %95
  %97 = call i32 @strcmp(i8* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  br label %100

100:                                              ; preds = %92, %86
  %101 = phi i1 [ false, %86 ], [ %99, %92 ]
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %10, align 4
  br label %56

103:                                              ; preds = %71
  %104 = load i8*, i8** %16, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 35
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %56

109:                                              ; preds = %103
  %110 = load i8*, i8** %16, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %16, align 8
  %112 = load i8*, i8** %16, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = call i32 @get_jss_cmd(i8 signext %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  br label %56

119:                                              ; preds = %109
  %120 = load i32**, i32*** @cmds, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %120, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @strlen(i32* %124)
  store i32 %125, i32* %15, align 4
  %126 = load i8*, i8** %16, align 8
  %127 = load i32**, i32*** @cmds, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %127, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %15, align 4
  %133 = call i64 @av_strncasecmp(i8* %126, i32* %131, i32 %132)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %119
  %136 = load i32, i32* %15, align 4
  %137 = load i8*, i8** %16, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  store i8* %139, i8** %16, align 8
  br label %143

140:                                              ; preds = %119
  %141 = load i8*, i8** %16, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %16, align 8
  br label %143

143:                                              ; preds = %140, %135
  %144 = load i8*, i8** %16, align 8
  %145 = call i8* @jss_skip_whitespace(i8* %144)
  store i8* %145, i8** %16, align 8
  %146 = load i32**, i32*** @cmds, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  switch i32 %152, label %183 [
    i32 83, label %153
    i32 84, label %167
  ]

153:                                              ; preds = %143
  %154 = load i32, i32* %9, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %153
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i8*, i8** %16, align 8
  %161 = call i32 @get_shift(i32 %159, i8* %160)
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  store i32 1, i32* %9, align 4
  br label %164

164:                                              ; preds = %156, %153
  %165 = load i8*, i8** %16, align 8
  %166 = call i32 @av_bprintf(i32* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %165)
  br label %183

167:                                              ; preds = %143
  %168 = load i8*, i8** %16, align 8
  %169 = call i32 @strtol(i8* %168, i32* null, i32 10)
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %167
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 0
  store i32 30, i32* %178, align 8
  br label %182

179:                                              ; preds = %167
  %180 = load i8*, i8** %16, align 8
  %181 = call i32 @av_bprintf(i32* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %180)
  br label %182

182:                                              ; preds = %179, %176
  br label %183

183:                                              ; preds = %143, %182, %164
  br label %56

184:                                              ; preds = %56
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %186, align 8
  %188 = call i32 @ff_bprint_to_codecpar_extradata(%struct.TYPE_16__* %187, i32* %4)
  store i32 %188, i32* %12, align 4
  %189 = load i32, i32* %12, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %184
  br label %225

192:                                              ; preds = %184
  store i32 0, i32* %11, align 4
  br label %193

193:                                              ; preds = %217, %192
  %194 = load i32, i32* %11, align 4
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp slt i32 %194, %198
  br i1 %199, label %200, label %220

200:                                              ; preds = %193
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %203, align 8
  %205 = load i32, i32* %11, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i64 %206
  store %struct.TYPE_19__* %207, %struct.TYPE_19__** %20, align 8
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 0
  %216 = call i32 @read_ts(%struct.TYPE_17__* %208, i32 %211, i32* %213, i32* %215)
  br label %217

217:                                              ; preds = %200
  %218 = load i32, i32* %11, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %11, align 4
  br label %193

220:                                              ; preds = %193
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 1
  %224 = call i32 @ff_subtitles_queue_finalize(%struct.TYPE_20__* %221, %struct.TYPE_21__* %223)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %229

225:                                              ; preds = %191
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %227 = call i32 @jacosub_read_close(%struct.TYPE_20__* %226)
  %228 = load i32, i32* %12, align 4
  store i32 %228, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %229

229:                                              ; preds = %225, %220, %83, %35
  %230 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %230)
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_18__* @avformat_new_stream(%struct.TYPE_20__*, i32*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_18__*, i32, i32, i32) #2

declare dso_local i32 @av_bprint_init(i32*, i64, i32) #2

declare dso_local i32 @avio_feof(i32*) #2

declare dso_local i32 @avio_tell(i32*) #2

declare dso_local i32 @ff_get_line(i32*, i8*, i32) #2

declare dso_local i8* @jss_skip_whitespace(i8*) #2

declare dso_local i64 @timed_line(i8*) #2

declare dso_local %struct.TYPE_19__* @ff_subtitles_queue_insert(%struct.TYPE_21__*, i8*, i32, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @get_jss_cmd(i8 signext) #2

declare dso_local i32 @strlen(i32*) #2

declare dso_local i64 @av_strncasecmp(i8*, i32*, i32) #2

declare dso_local i32 @get_shift(i32, i8*) #2

declare dso_local i32 @av_bprintf(i32*, i8*, i8*) #2

declare dso_local i32 @strtol(i8*, i32*, i32) #2

declare dso_local i32 @ff_bprint_to_codecpar_extradata(%struct.TYPE_16__*, i32*) #2

declare dso_local i32 @read_ts(%struct.TYPE_17__*, i32, i32*, i32*) #2

declare dso_local i32 @ff_subtitles_queue_finalize(%struct.TYPE_20__*, %struct.TYPE_21__*) #2

declare dso_local i32 @jacosub_read_close(%struct.TYPE_20__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
