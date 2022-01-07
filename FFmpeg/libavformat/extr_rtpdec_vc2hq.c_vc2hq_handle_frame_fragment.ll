; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_vc2hq.c_vc2hq_handle_frame_fragment.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_vc2hq.c_vc2hq_handle_frame_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Too short RTP/VC2hq packet, got %d bytes\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"Dropping buffered RTP/VC2hq packet fragments - non-continuous picture numbers\0A\00", align 1
@DIRAC_DATA_UNIT_HEADER_SIZE = common dso_local global i64 0, align 8
@DIRAC_PIC_NR_SIZE = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@RTP_FLAG_MARKER = common dso_local global i32 0, align 4
@DIRAC_PCODE_PICTURE_HQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_11__*, i64*, i32*, i32, i32)* @vc2hq_handle_frame_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc2hq_handle_frame_fragment(i32* %0, %struct.TYPE_9__* %1, %struct.TYPE_10__* %2, %struct.TYPE_11__* %3, i64* %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %13, align 8
  store i64* %4, i64** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %22 = load i32, i32* %16, align 4
  %23 = icmp slt i32 %22, 16
  br i1 %23, label %24, label %30

24:                                               ; preds = %8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* @AV_LOG_ERROR, align 4
  %27 = load i32, i32* %16, align 4
  %28 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %25, i32 %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %29, i32* %9, align 4
  br label %198

30:                                               ; preds = %8
  %31 = load i32*, i32** %15, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  %33 = call i64 @AV_RB32(i32* %32)
  store i64 %33, i64* %19, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 12
  %36 = call i64 @AV_RB16(i32* %35)
  store i64 %36, i64* %20, align 8
  %37 = load i32*, i32** %15, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 14
  %39 = call i64 @AV_RB16(i32* %38)
  store i64 %39, i64* %21, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %30
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %19, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* @AV_LOG_WARNING, align 4
  %53 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %51, i32 %52, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = call i32 @ffio_free_dyn_buf(i64* %55)
  br label %57

57:                                               ; preds = %50, %44, %30
  %58 = load i64, i64* %21, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %126

60:                                               ; preds = %57
  %61 = load i32, i32* %16, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %20, align 8
  %64 = add nsw i64 %63, 16
  %65 = icmp slt i64 %62, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* @AV_LOG_ERROR, align 4
  %69 = load i32, i32* %16, align 4
  %70 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %67, i32 %68, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %71, i32* %9, align 4
  br label %198

72:                                               ; preds = %60
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %111, label %77

77:                                               ; preds = %72
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  %80 = call i32 @avio_open_dyn_buf(i64* %79)
  store i32 %80, i32* %18, align 4
  %81 = load i32, i32* %18, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %18, align 4
  store i32 %84, i32* %9, align 4
  br label %198

85:                                               ; preds = %77
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @DIRAC_DATA_UNIT_HEADER_SIZE, align 8
  %90 = load i64, i64* @DIRAC_PIC_NR_SIZE, align 8
  %91 = add nsw i64 %89, %90
  %92 = load i32, i32* @SEEK_SET, align 4
  %93 = call i32 @avio_seek(i64 %88, i64 %91, i32 %92)
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %18, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %85
  %97 = load i32, i32* %18, align 4
  store i32 %97, i32* %9, align 4
  br label %198

98:                                               ; preds = %85
  %99 = load i64, i64* %19, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load i64*, i64** %14, align 8
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 3
  store i64 %103, i64* %105, align 8
  %106 = load i64, i64* @DIRAC_DATA_UNIT_HEADER_SIZE, align 8
  %107 = load i64, i64* @DIRAC_PIC_NR_SIZE, align 8
  %108 = add nsw i64 %106, %107
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %98, %72
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i32*, i32** %15, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 16
  %117 = load i64, i64* %20, align 8
  %118 = call i32 @avio_write(i64 %114, i32* %116, i64 %117)
  %119 = load i64, i64* %20, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, %119
  store i64 %123, i64* %121, align 8
  %124 = load i32, i32* @EAGAIN, align 4
  %125 = call i32 @AVERROR(i32 %124)
  store i32 %125, i32* %9, align 4
  br label %198

126:                                              ; preds = %57
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* %20, align 8
  %130 = add nsw i64 %129, 20
  %131 = icmp slt i64 %128, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %126
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* @AV_LOG_ERROR, align 4
  %135 = load i32, i32* %16, align 4
  %136 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %133, i32 %134, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %137, i32* %9, align 4
  br label %198

138:                                              ; preds = %126
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %144, i32* %9, align 4
  br label %198

145:                                              ; preds = %138
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load i32*, i32** %15, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 20
  %151 = load i64, i64* %20, align 8
  %152 = call i32 @avio_write(i64 %148, i32* %150, i64 %151)
  %153 = load i64, i64* %20, align 8
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, %153
  store i64 %157, i64* %155, align 8
  %158 = load i32, i32* %17, align 4
  %159 = load i32, i32* @RTP_FLAG_MARKER, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %145
  %163 = load i32, i32* @EAGAIN, align 4
  %164 = call i32 @AVERROR(i32 %163)
  store i32 %164, i32* %9, align 4
  br label %198

165:                                              ; preds = %145
  br label %166

166:                                              ; preds = %165
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @ff_rtp_finalize_packet(%struct.TYPE_11__* %167, i64* %169, i32 %172)
  store i32 %173, i32* %18, align 4
  %174 = load i32, i32* %18, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %166
  %177 = load i32, i32* %18, align 4
  store i32 %177, i32* %9, align 4
  br label %198

178:                                              ; preds = %166
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* @DIRAC_PCODE_PICTURE_HQ, align 4
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @fill_parse_info_header(%struct.TYPE_9__* %179, i32* %182, i32 %183, i64 %186)
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 13
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @AV_WB32(i32* %191, i64 %194)
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 1
  store i64 0, i64* %197, align 8
  store i32 0, i32* %9, align 4
  br label %198

198:                                              ; preds = %178, %176, %162, %143, %132, %111, %96, %83, %66, %24
  %199 = load i32, i32* %9, align 4
  ret i32 %199
}

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i64 @AV_RB32(i32*) #1

declare dso_local i64 @AV_RB16(i32*) #1

declare dso_local i32 @ffio_free_dyn_buf(i64*) #1

declare dso_local i32 @avio_open_dyn_buf(i64*) #1

declare dso_local i32 @avio_seek(i64, i64, i32) #1

declare dso_local i32 @avio_write(i64, i32*, i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_rtp_finalize_packet(%struct.TYPE_11__*, i64*, i32) #1

declare dso_local i32 @fill_parse_info_header(%struct.TYPE_9__*, i32*, i32, i64) #1

declare dso_local i32 @AV_WB32(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
