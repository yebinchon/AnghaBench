; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_encode_audio.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_encode_audio.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i64*, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Usage: %s <output file>\0A\00", align 1
@AV_CODEC_ID_MP2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Codec not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Could not allocate audio codec context\0A\00", align 1
@AV_SAMPLE_FMT_S16 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Encoder does not support sample format %s\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Could not open codec\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Could not open %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"could not allocate the packet\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Could not allocate audio frame\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Could not allocate audio data buffers\0A\00", align 1
@M_PI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp sle i32 %19, 1
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32, i32* @stderr, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %25)
  store i32 0, i32* %3, align 4
  br label %233

27:                                               ; preds = %2
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %6, align 8
  %31 = load i32, i32* @AV_CODEC_ID_MP2, align 4
  %32 = call i32* @avcodec_find_encoder(i32 %31)
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 @exit(i32 1) #3
  unreachable

39:                                               ; preds = %27
  %40 = load i32*, i32** %7, align 8
  %41 = call %struct.TYPE_13__* @avcodec_alloc_context3(i32* %40)
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %8, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %43 = icmp ne %struct.TYPE_13__* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i32 @exit(i32 1) #3
  unreachable

48:                                               ; preds = %39
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  store i32 64000, i32* %50, align 4
  %51 = load i32, i32* @AV_SAMPLE_FMT_S16, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @check_sample_fmt(i32* %54, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %48
  %61 = load i32, i32* @stderr, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @av_get_sample_fmt_name(i32 %64)
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %65)
  %67 = call i32 @exit(i32 1) #3
  unreachable

68:                                               ; preds = %48
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @select_sample_rate(i32* %69)
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @select_channel_layout(i32* %73)
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @av_get_channel_layout_nb_channels(i32 %79)
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = call i64 @avcodec_open2(%struct.TYPE_13__* %83, i32* %84, i32* null)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %68
  %88 = load i32, i32* @stderr, align 4
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %90 = call i32 @exit(i32 1) #3
  unreachable

91:                                               ; preds = %68
  %92 = load i8*, i8** %6, align 8
  %93 = call i32* @fopen(i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32* %93, i32** %15, align 8
  %94 = load i32*, i32** %15, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* @stderr, align 4
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %98)
  %100 = call i32 @exit(i32 1) #3
  unreachable

101:                                              ; preds = %91
  %102 = call i32* (...) @av_packet_alloc()
  store i32* %102, i32** %10, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* @stderr, align 4
  %107 = call i32 (i32, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %108 = call i32 @exit(i32 1) #3
  unreachable

109:                                              ; preds = %101
  %110 = call %struct.TYPE_12__* (...) @av_frame_alloc()
  store %struct.TYPE_12__* %110, %struct.TYPE_12__** %9, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %112 = icmp ne %struct.TYPE_12__* %111, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* @stderr, align 4
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %114, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %116 = call i32 @exit(i32 1) #3
  unreachable

117:                                              ; preds = %109
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %134 = call i32 @av_frame_get_buffer(%struct.TYPE_12__* %133, i32 0)
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %14, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %117
  %138 = load i32, i32* @stderr, align 4
  %139 = call i32 (i32, i8*, ...) @fprintf(i32 %138, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %140 = call i32 @exit(i32 1) #3
  unreachable

141:                                              ; preds = %117
  store float 0.000000e+00, float* %17, align 4
  %142 = load i32, i32* @M_PI, align 4
  %143 = mul nsw i32 2, %142
  %144 = sitofp i32 %143 to double
  %145 = fmul double %144, 4.400000e+02
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sitofp i32 %148 to double
  %150 = fdiv double %145, %149
  %151 = fptrunc double %150 to float
  store float %151, float* %18, align 4
  store i32 0, i32* %11, align 4
  br label %152

152:                                              ; preds = %220, %141
  %153 = load i32, i32* %11, align 4
  %154 = icmp slt i32 %153, 200
  br i1 %154, label %155, label %223

155:                                              ; preds = %152
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %157 = call i32 @av_frame_make_writable(%struct.TYPE_12__* %156)
  store i32 %157, i32* %14, align 4
  %158 = load i32, i32* %14, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = call i32 @exit(i32 1) #3
  unreachable

162:                                              ; preds = %155
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 1
  %165 = load i64*, i64** %164, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 0
  %167 = load i64, i64* %166, align 8
  %168 = inttoptr i64 %167 to i32*
  store i32* %168, i32** %16, align 8
  store i32 0, i32* %12, align 4
  br label %169

169:                                              ; preds = %211, %162
  %170 = load i32, i32* %12, align 4
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = icmp slt i32 %170, %173
  br i1 %174, label %175, label %214

175:                                              ; preds = %169
  %176 = load float, float* %17, align 4
  %177 = call i32 @sin(float %176)
  %178 = mul nsw i32 %177, 10000
  %179 = load i32*, i32** %16, align 8
  %180 = load i32, i32* %12, align 4
  %181 = mul nsw i32 2, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  store i32 %178, i32* %183, align 4
  store i32 1, i32* %13, align 4
  br label %184

184:                                              ; preds = %204, %175
  %185 = load i32, i32* %13, align 4
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = icmp slt i32 %185, %188
  br i1 %189, label %190, label %207

190:                                              ; preds = %184
  %191 = load i32*, i32** %16, align 8
  %192 = load i32, i32* %12, align 4
  %193 = mul nsw i32 2, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %16, align 8
  %198 = load i32, i32* %12, align 4
  %199 = mul nsw i32 2, %198
  %200 = load i32, i32* %13, align 4
  %201 = add nsw i32 %199, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %197, i64 %202
  store i32 %196, i32* %203, align 4
  br label %204

204:                                              ; preds = %190
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %13, align 4
  br label %184

207:                                              ; preds = %184
  %208 = load float, float* %18, align 4
  %209 = load float, float* %17, align 4
  %210 = fadd float %209, %208
  store float %210, float* %17, align 4
  br label %211

211:                                              ; preds = %207
  %212 = load i32, i32* %12, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %12, align 4
  br label %169

214:                                              ; preds = %169
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %217 = load i32*, i32** %10, align 8
  %218 = load i32*, i32** %15, align 8
  %219 = call i32 @encode(%struct.TYPE_13__* %215, %struct.TYPE_12__* %216, i32* %217, i32* %218)
  br label %220

220:                                              ; preds = %214
  %221 = load i32, i32* %11, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %11, align 4
  br label %152

223:                                              ; preds = %152
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %225 = load i32*, i32** %10, align 8
  %226 = load i32*, i32** %15, align 8
  %227 = call i32 @encode(%struct.TYPE_13__* %224, %struct.TYPE_12__* null, i32* %225, i32* %226)
  %228 = load i32*, i32** %15, align 8
  %229 = call i32 @fclose(i32* %228)
  %230 = call i32 @av_frame_free(%struct.TYPE_12__** %9)
  %231 = call i32 @av_packet_free(i32** %10)
  %232 = call i32 @avcodec_free_context(%struct.TYPE_13__** %8)
  store i32 0, i32* %3, align 4
  br label %233

233:                                              ; preds = %223, %21
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @avcodec_find_encoder(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_13__* @avcodec_alloc_context3(i32*) #1

declare dso_local i32 @check_sample_fmt(i32*, i32) #1

declare dso_local i8* @av_get_sample_fmt_name(i32) #1

declare dso_local i32 @select_sample_rate(i32*) #1

declare dso_local i32 @select_channel_layout(i32*) #1

declare dso_local i32 @av_get_channel_layout_nb_channels(i32) #1

declare dso_local i64 @avcodec_open2(%struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32* @av_packet_alloc(...) #1

declare dso_local %struct.TYPE_12__* @av_frame_alloc(...) #1

declare dso_local i32 @av_frame_get_buffer(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @av_frame_make_writable(%struct.TYPE_12__*) #1

declare dso_local i32 @sin(float) #1

declare dso_local i32 @encode(%struct.TYPE_13__*, %struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_12__**) #1

declare dso_local i32 @av_packet_free(i32**) #1

declare dso_local i32 @avcodec_free_context(%struct.TYPE_13__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
