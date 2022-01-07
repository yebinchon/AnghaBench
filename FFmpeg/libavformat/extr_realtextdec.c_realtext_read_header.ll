; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_realtextdec.c_realtext_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_realtextdec.c_realtext_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64, i32, i32 }
%struct.TYPE_23__ = type { i32, i64 }
%struct.TYPE_21__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"60\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i32 0, align 4
@AV_CODEC_ID_REALTEXT = common dso_local global i32 0, align 4
@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"<window\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"duration\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"<time\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*)* @realtext_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @realtext_read_header(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_23__, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %4, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %22 = call %struct.TYPE_20__* @avformat_new_stream(%struct.TYPE_22__* %21, i32* null)
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %5, align 8
  store i8 0, i8* %7, align 1
  store i32 0, i32* %8, align 4
  %23 = call i32 @read_ts(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %9, align 4
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ff_text_init_avio(%struct.TYPE_22__* %24, i32* %10, i32 %27)
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %30 = icmp ne %struct.TYPE_20__* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = call i32 @AVERROR(i32 %32)
  store i32 %33, i32* %2, align 4
  br label %190

34:                                               ; preds = %1
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %36 = call i32 @avpriv_set_pts_info(%struct.TYPE_20__* %35, i32 64, i32 1, i32 100)
  %37 = load i32, i32* @AVMEDIA_TYPE_SUBTITLE, align 4
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 3
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* @AV_CODEC_ID_REALTEXT, align 4
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 2
  store i32 %42, i32* %46, align 8
  %47 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %48 = call i32 @av_bprint_init(%struct.TYPE_23__* %6, i32 0, i32 %47)
  br label %49

49:                                               ; preds = %173, %34
  %50 = call i32 @ff_text_eof(i32* %10)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br i1 %52, label %53, label %175

53:                                               ; preds = %49
  %54 = call i64 @ff_text_pos(i32* %10)
  %55 = load i8, i8* %7, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = sext i32 %58 to i64
  %60 = sub nsw i64 %54, %59
  store i64 %60, i64* %12, align 8
  %61 = call i32 @ff_smil_extract_next_text_chunk(i32* %10, %struct.TYPE_23__* %6, i8* %7)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %175

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @av_strncasecmp(i32 %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %113, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i8* @ff_smil_get_attr_ptr(i32 %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i8* %73, i8** %14, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %81, i32* %8, align 4
  br label %180

82:                                               ; preds = %70
  %83 = load i8*, i8** %14, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i8*, i8** %14, align 8
  %87 = call i32 @read_ts(i8* %86)
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %85, %82
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @av_strdup(i32 %90)
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 1
  store i64 %91, i64* %95, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %88
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = call i32 @AVERROR(i32 %103)
  store i32 %104, i32* %8, align 4
  br label %180

105:                                              ; preds = %88
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, 1
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  store i64 %108, i64* %112, align 8
  br label %173

113:                                              ; preds = %65
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @av_strncasecmp(i32 %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 0, i32 1
  store i32 %120, i32* %15, align 4
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %15, align 4
  %128 = call %struct.TYPE_21__* @ff_subtitles_queue_insert(i32* %122, i32 %124, i64 %126, i32 %127)
  store %struct.TYPE_21__* %128, %struct.TYPE_21__** %11, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %130 = icmp ne %struct.TYPE_21__* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %113
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = call i32 @AVERROR(i32 %132)
  store i32 %133, i32* %8, align 4
  br label %180

134:                                              ; preds = %113
  %135 = load i32, i32* %15, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %172, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i8* @ff_smil_get_attr_ptr(i32 %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i8* %140, i8** %16, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i8* @ff_smil_get_attr_ptr(i32 %142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i8* %143, i8** %17, align 8
  %144 = load i64, i64* %12, align 8
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 2
  store i64 %144, i64* %146, align 8
  %147 = load i8*, i8** %16, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %137
  %150 = load i8*, i8** %16, align 8
  %151 = call i32 @read_ts(i8* %150)
  br label %153

152:                                              ; preds = %137
  br label %153

153:                                              ; preds = %152, %149
  %154 = phi i32 [ %151, %149 ], [ 0, %152 ]
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load i8*, i8** %17, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %166

159:                                              ; preds = %153
  %160 = load i8*, i8** %17, align 8
  %161 = call i32 @read_ts(i8* %160)
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = sub nsw i32 %161, %164
  br label %168

166:                                              ; preds = %153
  %167 = load i32, i32* %9, align 4
  br label %168

168:                                              ; preds = %166, %159
  %169 = phi i32 [ %165, %159 ], [ %167, %166 ]
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  br label %172

172:                                              ; preds = %168, %134
  br label %173

173:                                              ; preds = %172, %105
  %174 = call i32 @av_bprint_clear(%struct.TYPE_23__* %6)
  br label %49

175:                                              ; preds = %64, %49
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 0
  %179 = call i32 @ff_subtitles_queue_finalize(%struct.TYPE_22__* %176, i32* %178)
  br label %180

180:                                              ; preds = %175, %131, %102, %80
  %181 = call i32 @av_bprint_finalize(%struct.TYPE_23__* %6, i32* null)
  %182 = load i32, i32* %8, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 0
  %187 = call i32 @ff_subtitles_queue_clean(i32* %186)
  br label %188

188:                                              ; preds = %184, %180
  %189 = load i32, i32* %8, align 4
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %188, %31
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.TYPE_20__* @avformat_new_stream(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @read_ts(i8*) #1

declare dso_local i32 @ff_text_init_avio(%struct.TYPE_22__*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @av_bprint_init(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @ff_text_eof(i32*) #1

declare dso_local i64 @ff_text_pos(i32*) #1

declare dso_local i32 @ff_smil_extract_next_text_chunk(i32*, %struct.TYPE_23__*, i8*) #1

declare dso_local i32 @av_strncasecmp(i32, i8*, i32) #1

declare dso_local i8* @ff_smil_get_attr_ptr(i32, i8*) #1

declare dso_local i64 @av_strdup(i32) #1

declare dso_local %struct.TYPE_21__* @ff_subtitles_queue_insert(i32*, i32, i64, i32) #1

declare dso_local i32 @av_bprint_clear(%struct.TYPE_23__*) #1

declare dso_local i32 @ff_subtitles_queue_finalize(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @av_bprint_finalize(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @ff_subtitles_queue_clean(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
