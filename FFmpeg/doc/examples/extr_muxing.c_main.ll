; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_muxing.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_muxing.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_22__*, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i64, i64, i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__* }

@.str = private unnamed_addr constant [336 x i8] c"usage: %s output_file\0AAPI example program to output a media file with libavformat.\0AThis program generates a synthetic audio and video stream, encodes and\0Amuxes them into a file named output_file.\0AThe output format is automatically guessed according to the file extension.\0ARaw images can also be output by using '%%d' in the filename.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"-flags\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"-fflags\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"Could not deduce output format from file extension: using MPEG.\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mpeg\00", align 1
@AV_CODEC_ID_NONE = common dso_local global i64 0, align 8
@AVFMT_NOFILE = common dso_local global i32 0, align 4
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Could not open '%s': %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Error occurred when opening output file: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_23__, align 8
  %7 = alloca %struct.TYPE_23__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %20 = bitcast %struct.TYPE_23__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 16, i1 false)
  %21 = bitcast %struct.TYPE_23__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 16, i1 false)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32* null, i32** %18, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([336 x i8], [336 x i8]* @.str, i64 0, i64 0), i8* %27)
  store i32 1, i32* %3, align 4
  br label %234

29:                                               ; preds = %2
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %8, align 8
  store i32 2, i32* %19, align 4
  br label %33

33:                                               ; preds = %69, %29
  %34 = load i32, i32* %19, align 4
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %72

38:                                               ; preds = %33
  %39 = load i8**, i8*** %5, align 8
  %40 = load i32, i32* %19, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load i8**, i8*** %5, align 8
  %48 = load i32, i32* %19, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %46, %38
  %55 = load i8**, i8*** %5, align 8
  %56 = load i32, i32* %19, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8**, i8*** %5, align 8
  %62 = load i32, i32* %19, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %61, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @av_dict_set(i32** %18, i8* %60, i8* %66, i32 0)
  br label %68

68:                                               ; preds = %54, %46
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %19, align 4
  %71 = add nsw i32 %70, 2
  store i32 %71, i32* %19, align 4
  br label %33

72:                                               ; preds = %33
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @avformat_alloc_output_context2(%struct.TYPE_25__** %10, i32* null, i8* null, i8* %73)
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %76 = icmp ne %struct.TYPE_25__* %75, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @avformat_alloc_output_context2(%struct.TYPE_25__** %10, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %77, %72
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %83 = icmp ne %struct.TYPE_25__* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  store i32 1, i32* %3, align 4
  br label %234

85:                                               ; preds = %81
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %87, align 8
  store %struct.TYPE_24__* %88, %struct.TYPE_24__** %9, align 8
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %85
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @add_stream(%struct.TYPE_23__* %6, %struct.TYPE_25__* %95, i32** %12, i64 %98)
  store i32 1, i32* %14, align 4
  store i32 1, i32* %16, align 4
  br label %100

100:                                              ; preds = %94, %85
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @add_stream(%struct.TYPE_23__* %7, %struct.TYPE_25__* %107, i32** %11, i64 %110)
  store i32 1, i32* %15, align 4
  store i32 1, i32* %17, align 4
  br label %112

112:                                              ; preds = %106, %100
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %117 = load i32*, i32** %12, align 8
  %118 = load i32*, i32** %18, align 8
  %119 = call i32 @open_video(%struct.TYPE_25__* %116, i32* %117, %struct.TYPE_23__* %6, i32* %118)
  br label %120

120:                                              ; preds = %115, %112
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %125 = load i32*, i32** %11, align 8
  %126 = load i32*, i32** %18, align 8
  %127 = call i32 @open_audio(%struct.TYPE_25__* %124, i32* %125, %struct.TYPE_23__* %7, i32* %126)
  br label %128

128:                                              ; preds = %123, %120
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = call i32 @av_dump_format(%struct.TYPE_25__* %129, i32 0, i8* %130, i32 1)
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @AVFMT_NOFILE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %153, label %138

138:                                              ; preds = %128
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 0
  %141 = load i8*, i8** %8, align 8
  %142 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %143 = call i32 @avio_open(i32* %140, i8* %141, i32 %142)
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* %13, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %138
  %147 = load i32, i32* @stderr, align 4
  %148 = load i8*, i8** %8, align 8
  %149 = load i32, i32* %13, align 4
  %150 = call i8* @av_err2str(i32 %149)
  %151 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %147, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %148, i8* %150)
  store i32 1, i32* %3, align 4
  br label %234

152:                                              ; preds = %138
  br label %153

153:                                              ; preds = %152, %128
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %155 = call i32 @avformat_write_header(%struct.TYPE_25__* %154, i32** %18)
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* %13, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load i32, i32* @stderr, align 4
  %160 = load i32, i32* %13, align 4
  %161 = call i8* @av_err2str(i32 %160)
  %162 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %159, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i8* %161)
  store i32 1, i32* %3, align 4
  br label %234

163:                                              ; preds = %153
  br label %164

164:                                              ; preds = %205, %163
  %165 = load i32, i32* %16, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %17, align 4
  %169 = icmp ne i32 %168, 0
  br label %170

170:                                              ; preds = %167, %164
  %171 = phi i1 [ true, %164 ], [ %169, %167 ]
  br i1 %171, label %172, label %206

172:                                              ; preds = %170
  %173 = load i32, i32* %16, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %199

175:                                              ; preds = %172
  %176 = load i32, i32* %17, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %193

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 0
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i64 @av_compare_ts(i32 %180, i32 %184, i32 %186, i32 %190)
  %192 = icmp sle i64 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %178, %175
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %195 = call i32 @write_video_frame(%struct.TYPE_25__* %194, %struct.TYPE_23__* %6)
  %196 = icmp ne i32 %195, 0
  %197 = xor i1 %196, true
  %198 = zext i1 %197 to i32
  store i32 %198, i32* %16, align 4
  br label %205

199:                                              ; preds = %178, %172
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %201 = call i32 @write_audio_frame(%struct.TYPE_25__* %200, %struct.TYPE_23__* %7)
  %202 = icmp ne i32 %201, 0
  %203 = xor i1 %202, true
  %204 = zext i1 %203 to i32
  store i32 %204, i32* %17, align 4
  br label %205

205:                                              ; preds = %199, %193
  br label %164

206:                                              ; preds = %170
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %208 = call i32 @av_write_trailer(%struct.TYPE_25__* %207)
  %209 = load i32, i32* %14, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %206
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %213 = call i32 @close_stream(%struct.TYPE_25__* %212, %struct.TYPE_23__* %6)
  br label %214

214:                                              ; preds = %211, %206
  %215 = load i32, i32* %15, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %219 = call i32 @close_stream(%struct.TYPE_25__* %218, %struct.TYPE_23__* %7)
  br label %220

220:                                              ; preds = %217, %214
  %221 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @AVFMT_NOFILE, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %231, label %227

227:                                              ; preds = %220
  %228 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %228, i32 0, i32 0
  %230 = call i32 @avio_closep(i32* %229)
  br label %231

231:                                              ; preds = %227, %220
  %232 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %233 = call i32 @avformat_free_context(%struct.TYPE_25__* %232)
  store i32 0, i32* %3, align 4
  br label %234

234:                                              ; preds = %231, %158, %146, %84, %24
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #2

declare dso_local i32 @avformat_alloc_output_context2(%struct.TYPE_25__**, i32*, i8*, i8*) #2

declare dso_local i32 @add_stream(%struct.TYPE_23__*, %struct.TYPE_25__*, i32**, i64) #2

declare dso_local i32 @open_video(%struct.TYPE_25__*, i32*, %struct.TYPE_23__*, i32*) #2

declare dso_local i32 @open_audio(%struct.TYPE_25__*, i32*, %struct.TYPE_23__*, i32*) #2

declare dso_local i32 @av_dump_format(%struct.TYPE_25__*, i32, i8*, i32) #2

declare dso_local i32 @avio_open(i32*, i8*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #2

declare dso_local i8* @av_err2str(i32) #2

declare dso_local i32 @avformat_write_header(%struct.TYPE_25__*, i32**) #2

declare dso_local i64 @av_compare_ts(i32, i32, i32, i32) #2

declare dso_local i32 @write_video_frame(%struct.TYPE_25__*, %struct.TYPE_23__*) #2

declare dso_local i32 @write_audio_frame(%struct.TYPE_25__*, %struct.TYPE_23__*) #2

declare dso_local i32 @av_write_trailer(%struct.TYPE_25__*) #2

declare dso_local i32 @close_stream(%struct.TYPE_25__*, %struct.TYPE_23__*) #2

declare dso_local i32 @avio_closep(i32*) #2

declare dso_local i32 @avformat_free_context(%struct.TYPE_25__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
