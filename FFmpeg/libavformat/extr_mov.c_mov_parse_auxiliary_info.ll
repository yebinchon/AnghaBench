; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_parse_auxiliary_info.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_parse_auxiliary_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_17__ = type { i64, i64, i32, i64*, i64, i64*, i32** }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Multiple auxiliary info chunks are not supported\0A\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"Failed to seek for auxiliary info, will only parse senc atoms for encryption info\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Hit EOF while reading auxiliary info\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_16__*, %struct.TYPE_19__*, %struct.TYPE_17__*)* @mov_parse_auxiliary_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_parse_auxiliary_info(%struct.TYPE_18__* %0, %struct.TYPE_16__* %1, %struct.TYPE_19__* %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %9, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %201

24:                                               ; preds = %4
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %13, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AV_LOG_ERROR, align 4
  %37 = call i32 @av_log(i32 %35, i32 %36, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %38, i32* %5, align 4
  br label %201

39:                                               ; preds = %24
  %40 = load i64, i64* %13, align 8
  %41 = load i32, i32* @INT_MAX, align 4
  %42 = sext i32 %41 to i64
  %43 = udiv i64 %42, 8
  %44 = icmp uge i64 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = call i32 @AVERROR(i32 %46)
  store i32 %47, i32* %5, align 4
  br label %201

48:                                               ; preds = %39
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %50 = call i64 @avio_tell(%struct.TYPE_19__* %49)
  store i64 %50, i64* %12, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %48
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 3
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @SEEK_SET, align 4
  %65 = call i64 @avio_seek(%struct.TYPE_19__* %58, i64 %63, i32 %64)
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 3
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %65, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %57, %48
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @AV_LOG_INFO, align 4
  %77 = call i32 @av_log(i32 %75, i32 %76, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0))
  br label %172

78:                                               ; preds = %57
  store i64 0, i64* %15, align 8
  br label %79

79:                                               ; preds = %152, %78
  %80 = load i64, i64* %15, align 8
  %81 = load i64, i64* %13, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  %88 = xor i1 %87, true
  br label %89

89:                                               ; preds = %83, %79
  %90 = phi i1 [ false, %79 ], [ %88, %83 ]
  br i1 %90, label %91, label %155

91:                                               ; preds = %89
  %92 = load i64, i64* %15, align 8
  %93 = add i64 %92, 1
  %94 = call i32 @FFMAX(i64 %93, i32 1048576)
  %95 = load i64, i64* %13, align 8
  %96 = call i32 @FFMIN(i32 %94, i64 %95)
  store i32 %96, i32* %18, align 4
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 6
  %99 = load i32**, i32*** %98, align 8
  %100 = load i32, i32* %18, align 4
  %101 = zext i32 %100 to i64
  %102 = mul i64 %101, 8
  %103 = trunc i64 %102 to i32
  %104 = call i32** @av_fast_realloc(i32** %99, i32* %17, i32 %103)
  store i32** %104, i32*** %11, align 8
  %105 = load i32**, i32*** %11, align 8
  %106 = icmp ne i32** %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %91
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = call i32 @AVERROR(i32 %108)
  store i32 %109, i32* %16, align 4
  br label %172

110:                                              ; preds = %91
  %111 = load i32**, i32*** %11, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 6
  store i32** %111, i32*** %113, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 6
  %116 = load i32**, i32*** %115, align 8
  %117 = load i64, i64* %15, align 8
  %118 = getelementptr inbounds i32*, i32** %116, i64 %117
  store i32** %118, i32*** %10, align 8
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %110
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  br label %134

127:                                              ; preds = %110
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 5
  %130 = load i64*, i64** %129, align 8
  %131 = load i64, i64* %15, align 8
  %132 = getelementptr inbounds i64, i64* %130, i64 %131
  %133 = load i64, i64* %132, align 8
  br label %134

134:                                              ; preds = %127, %123
  %135 = phi i64 [ %126, %123 ], [ %133, %127 ]
  store i64 %135, i64* %14, align 8
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %139 = load i32**, i32*** %10, align 8
  %140 = load i64, i64* %14, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ugt i64 %140, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @mov_read_sample_encryption_info(%struct.TYPE_18__* %136, %struct.TYPE_19__* %137, %struct.TYPE_16__* %138, i32** %139, i32 %146)
  store i32 %147, i32* %16, align 4
  %148 = load i32, i32* %16, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %134
  br label %172

151:                                              ; preds = %134
  br label %152

152:                                              ; preds = %151
  %153 = load i64, i64* %15, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %15, align 8
  br label %79

155:                                              ; preds = %89
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %155
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @AV_LOG_ERROR, align 4
  %165 = call i32 @av_log(i32 %163, i32 %164, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %166 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %166, i32* %16, align 4
  br label %171

167:                                              ; preds = %155
  %168 = load i64, i64* %13, align 8
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 0
  store i64 %168, i64* %170, align 8
  br label %171

171:                                              ; preds = %167, %160
  br label %172

172:                                              ; preds = %171, %150, %107, %72
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %174 = load i64, i64* %12, align 8
  %175 = load i32, i32* @SEEK_SET, align 4
  %176 = call i64 @avio_seek(%struct.TYPE_19__* %173, i64 %174, i32 %175)
  %177 = load i32, i32* %16, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %199

179:                                              ; preds = %172
  br label %180

180:                                              ; preds = %192, %179
  %181 = load i64, i64* %15, align 8
  %182 = icmp ugt i64 %181, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %180
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 6
  %186 = load i32**, i32*** %185, align 8
  %187 = load i64, i64* %15, align 8
  %188 = sub i64 %187, 1
  %189 = getelementptr inbounds i32*, i32** %186, i64 %188
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @av_encryption_info_free(i32* %190)
  br label %192

192:                                              ; preds = %183
  %193 = load i64, i64* %15, align 8
  %194 = add i64 %193, -1
  store i64 %194, i64* %15, align 8
  br label %180

195:                                              ; preds = %180
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 6
  %198 = call i32 @av_freep(i32*** %197)
  br label %199

199:                                              ; preds = %195, %172
  %200 = load i32, i32* %16, align 4
  store i32 %200, i32* %5, align 4
  br label %201

201:                                              ; preds = %199, %45, %32, %23
  %202 = load i32, i32* %5, align 4
  ret i32 %202
}

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @avio_tell(%struct.TYPE_19__*) #1

declare dso_local i64 @avio_seek(%struct.TYPE_19__*, i64, i32) #1

declare dso_local i32 @FFMIN(i32, i64) #1

declare dso_local i32 @FFMAX(i64, i32) #1

declare dso_local i32** @av_fast_realloc(i32**, i32*, i32) #1

declare dso_local i32 @mov_read_sample_encryption_info(%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_16__*, i32**, i32) #1

declare dso_local i32 @av_encryption_info_free(i32*) #1

declare dso_local i32 @av_freep(i32***) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
