; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_stts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_stts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_19__** }
%struct.TYPE_19__ = type { i32, i8*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64 }

@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"track[%u].stts.entries = %u\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Duplicated STTS atom\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"sample_count=%d, sample_duration=%d\0A\00", align 1
@INT64_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"reached eof, corrupted STTS atom\0A\00", align 1
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_20__*, i32)* @mov_read_stts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_read_stts(%struct.TYPE_18__* %0, %struct.TYPE_20__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %236

26:                                               ; preds = %3
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %30, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %31, i64 %38
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  store %struct.TYPE_19__* %40, %struct.TYPE_19__** %8, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %42, align 8
  store %struct.TYPE_17__* %43, %struct.TYPE_17__** %9, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %45 = call i32 @avio_r8(%struct.TYPE_20__* %44)
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %47 = call i32 @avio_rb24(%struct.TYPE_20__* %46)
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %49 = call i8* @avio_rb32(%struct.TYPE_20__* %48)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %11, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = load i32, i32* @AV_LOG_TRACE, align 4
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = load i32, i32* %11, align 4
  %62 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %53, i32 %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = icmp ne %struct.TYPE_16__* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %26
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = load i32, i32* @AV_LOG_WARNING, align 4
  %72 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %70, i32 %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %67, %26
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 4
  %76 = call i32 @av_freep(%struct.TYPE_16__** %75)
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  %79 = load i32, i32* %11, align 4
  %80 = zext i32 %79 to i64
  %81 = load i32, i32* @INT_MAX, align 4
  %82 = sext i32 %81 to i64
  %83 = udiv i64 %82, 8
  %84 = icmp uge i64 %80, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %73
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = call i32 @AVERROR(i32 %86)
  store i32 %87, i32* %4, align 4
  br label %236

88:                                               ; preds = %73
  store i32 0, i32* %10, align 4
  br label %89

89:                                               ; preds = %170, %88
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  %98 = xor i1 %97, true
  br label %99

99:                                               ; preds = %93, %89
  %100 = phi i1 [ false, %89 ], [ %98, %93 ]
  br i1 %100, label %101, label %173

101:                                              ; preds = %99
  %102 = load i32, i32* %10, align 4
  %103 = add i32 %102, 1
  %104 = call i8* @FFMAX(i32 %103, i32 1048576)
  %105 = load i32, i32* %11, align 4
  %106 = call i8* @FFMIN(i8* %104, i32 %105)
  %107 = ptrtoint i8* %106 to i32
  store i32 %107, i32* %17, align 4
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 4
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = load i32, i32* %17, align 4
  %112 = zext i32 %111 to i64
  %113 = mul i64 %112, 8
  %114 = trunc i64 %113 to i32
  %115 = call %struct.TYPE_16__* @av_fast_realloc(%struct.TYPE_16__* %110, i32* %12, i32 %114)
  store %struct.TYPE_16__* %115, %struct.TYPE_16__** %18, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %117 = icmp ne %struct.TYPE_16__* %116, null
  br i1 %117, label %126, label %118

118:                                              ; preds = %101
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 4
  %121 = call i32 @av_freep(%struct.TYPE_16__** %120)
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  store i32 0, i32* %123, align 8
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = call i32 @AVERROR(i32 %124)
  store i32 %125, i32* %4, align 4
  br label %236

126:                                              ; preds = %101
  %127 = load i32, i32* %17, align 4
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 4
  store %struct.TYPE_16__* %130, %struct.TYPE_16__** %132, align 8
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %134 = call i8* @avio_rb32(%struct.TYPE_20__* %133)
  %135 = ptrtoint i8* %134 to i32
  store i32 %135, i32* %16, align 4
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %137 = call i8* @avio_rb32(%struct.TYPE_20__* %136)
  %138 = ptrtoint i8* %137 to i32
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* %16, align 4
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 4
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  store i32 %139, i32* %146, align 4
  %147 = load i32, i32* %15, align 4
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 4
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  store i32 %147, i32* %154, align 4
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %156, align 8
  %158 = load i32, i32* @AV_LOG_TRACE, align 4
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* %15, align 4
  %161 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %157, i32 %158, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %159, i32 %160)
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* %16, align 4
  %164 = mul nsw i32 %162, %163
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* %16, align 4
  %168 = load i32, i32* %14, align 4
  %169 = add i32 %168, %167
  store i32 %169, i32* %14, align 4
  br label %170

170:                                              ; preds = %126
  %171 = load i32, i32* %10, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %10, align 4
  br label %89

173:                                              ; preds = %99
  %174 = load i32, i32* %10, align 4
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = load i32, i32* %13, align 4
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %206

179:                                              ; preds = %173
  %180 = load i32, i32* %13, align 4
  %181 = load i32, i32* @INT64_MAX, align 4
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = sub nsw i32 %181, %184
  %186 = icmp sle i32 %180, %185
  br i1 %186, label %187, label %206

187:                                              ; preds = %179
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* @INT_MAX, align 4
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = sub nsw i32 %189, %192
  %194 = icmp sle i32 %188, %193
  br i1 %194, label %195, label %206

195:                                              ; preds = %187
  %196 = load i32, i32* %13, align 4
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, %196
  store i32 %200, i32* %198, align 4
  %201 = load i32, i32* %14, align 4
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = add nsw i32 %204, %201
  store i32 %205, i32* %203, align 8
  br label %206

206:                                              ; preds = %195, %187, %179, %173
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %206
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %213, align 8
  %215 = load i32, i32* @AV_LOG_WARNING, align 4
  %216 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %214, i32 %215, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %217 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %217, i32* %4, align 4
  br label %236

218:                                              ; preds = %206
  %219 = load i32, i32* %14, align 4
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 8
  %222 = load i32, i32* %13, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %232

224:                                              ; preds = %218
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 1
  %227 = load i8*, i8** %226, align 8
  %228 = load i32, i32* %13, align 4
  %229 = call i8* @FFMIN(i8* %227, i32 %228)
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 1
  store i8* %229, i8** %231, align 8
  br label %232

232:                                              ; preds = %224, %218
  %233 = load i32, i32* %13, align 4
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 3
  store i32 %233, i32* %235, align 4
  store i32 0, i32* %4, align 4
  br label %236

236:                                              ; preds = %232, %211, %118, %85, %25
  %237 = load i32, i32* %4, align 4
  ret i32 %237
}

declare dso_local i32 @avio_r8(%struct.TYPE_20__*) #1

declare dso_local i32 @avio_rb24(%struct.TYPE_20__*) #1

declare dso_local i8* @avio_rb32(%struct.TYPE_20__*) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, ...) #1

declare dso_local i32 @av_freep(%struct.TYPE_16__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @FFMIN(i8*, i32) #1

declare dso_local i8* @FFMAX(i32, i32) #1

declare dso_local %struct.TYPE_16__* @av_fast_realloc(%struct.TYPE_16__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
