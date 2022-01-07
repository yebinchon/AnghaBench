; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_westwood_vqa.c_wsvqa_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_westwood_vqa.c_wsvqa_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_12__ = type { i8*, i8*, %struct.TYPE_14__*, i32, i64 }
%struct.TYPE_14__ = type { i8**, i8*, i8*, i64, i32, i32 }

@VQA_PREAMBLE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_WS_VQA = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@VQA_HEADER_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"invalid fps: %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AVFMTCTX_NOHEADER = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c" note: unknown chunk seen (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @wsvqa_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wsvqa_read_header(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %4, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %5, align 8
  %20 = load i32, i32* @VQA_PREAMBLE_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca i8*, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = call %struct.TYPE_12__* @avformat_new_stream(%struct.TYPE_13__* %24, i32* null)
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %6, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = icmp ne %struct.TYPE_12__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = call i32 @AVERROR(i32 %29)
  store i32 %30, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %170

31:                                               ; preds = %1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 5
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* @AV_CODEC_ID_WS_VQA, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 4
  store i32 %44, i32* %48, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @SEEK_SET, align 4
  %55 = call i32 @avio_seek(i32* %53, i32 20, i32 %54)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* @VQA_HEADER_SIZE, align 4
  %62 = call i64 @ff_get_extradata(%struct.TYPE_13__* %56, %struct.TYPE_14__* %59, i32* %60, i32 %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %31
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = call i32 @AVERROR(i32 %65)
  store i32 %66, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %170

67:                                               ; preds = %31
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i8**, i8*** %71, align 8
  store i8** %72, i8*** %7, align 8
  %73 = load i8**, i8*** %7, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 6
  %75 = call i8* @AV_RL16(i8** %74)
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 2
  store i8* %75, i8** %79, align 8
  %80 = load i8**, i8*** %7, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 8
  %82 = call i8* @AV_RL16(i8** %81)
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  store i8* %82, i8** %86, align 8
  %87 = load i8**, i8*** %7, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 12
  %89 = load i8*, i8** %88, align 8
  %90 = ptrtoint i8* %89 to i32
  store i32 %90, i32* %12, align 4
  %91 = load i8**, i8*** %7, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 4
  %93 = call i8* @AV_RL16(i8** %92)
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  store i8* %93, i8** %97, align 8
  %98 = load i32, i32* %12, align 4
  %99 = icmp slt i32 %98, 1
  br i1 %99, label %103, label %100

100:                                              ; preds = %67
  %101 = load i32, i32* %12, align 4
  %102 = icmp sgt i32 %101, 30
  br i1 %102, label %103, label %109

103:                                              ; preds = %100, %67
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %105 = load i32, i32* @AV_LOG_ERROR, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @av_log(%struct.TYPE_13__* %104, i32 %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %108, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %170

109:                                              ; preds = %100
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @avpriv_set_pts_info(%struct.TYPE_12__* %110, i32 64, i32 1, i32 %111)
  %113 = load i8**, i8*** %7, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 0
  %115 = call i8* @AV_RL16(i8** %114)
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 4
  store i8* %115, i8** %117, align 8
  %118 = load i8**, i8*** %7, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 24
  %120 = call i8* @AV_RL16(i8** %119)
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 3
  store i8* %120, i8** %122, align 8
  %123 = load i8**, i8*** %7, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 26
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 2
  store i8* %125, i8** %127, align 8
  %128 = load i8**, i8*** %7, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 27
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  store i32 -1, i32* %134, align 8
  %135 = load i32, i32* @AVFMTCTX_NOHEADER, align 4
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %166, %109
  %141 = load i32*, i32** %5, align 8
  %142 = load i32, i32* @VQA_PREAMBLE_SIZE, align 4
  %143 = call i32 @avio_read(i32* %141, i8** %23, i32 %142)
  %144 = load i32, i32* @VQA_PREAMBLE_SIZE, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load i32, i32* @EIO, align 4
  %148 = call i32 @AVERROR(i32 %147)
  store i32 %148, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %170

149:                                              ; preds = %140
  %150 = getelementptr inbounds i8*, i8** %23, i64 0
  %151 = call i32 @AV_RB32(i8** %150)
  store i32 %151, i32* %10, align 4
  %152 = getelementptr inbounds i8*, i8** %23, i64 4
  %153 = call i32 @AV_RB32(i8** %152)
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %10, align 4
  switch i32 %154, label %156 [
    i32 134, label %155
    i32 133, label %155
    i32 135, label %155
    i32 129, label %155
    i32 128, label %155
    i32 130, label %155
    i32 131, label %155
    i32 132, label %155
  ]

155:                                              ; preds = %149, %149, %149, %149, %149, %149, %149, %149
  br label %162

156:                                              ; preds = %149
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %158 = load i32, i32* @AV_LOG_ERROR, align 4
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @av_fourcc2str(i32 %159)
  %161 = call i32 @av_log(%struct.TYPE_13__* %157, i32 %158, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %160)
  br label %162

162:                                              ; preds = %156, %155
  %163 = load i32*, i32** %5, align 8
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @avio_skip(i32* %163, i32 %164)
  br label %166

166:                                              ; preds = %162
  %167 = load i32, i32* %10, align 4
  %168 = icmp ne i32 %167, 131
  br i1 %168, label %140, label %169

169:                                              ; preds = %166
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %170

170:                                              ; preds = %169, %146, %103, %64, %28
  %171 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %171)
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_12__* @avformat_new_stream(%struct.TYPE_13__*, i32*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @avio_seek(i32*, i32, i32) #2

declare dso_local i64 @ff_get_extradata(%struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i32) #2

declare dso_local i8* @AV_RL16(i8**) #2

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, i32) #2

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_12__*, i32, i32, i32) #2

declare dso_local i32 @avio_read(i32*, i8**, i32) #2

declare dso_local i32 @AV_RB32(i8**) #2

declare dso_local i32 @av_fourcc2str(i32) #2

declare dso_local i32 @avio_skip(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
