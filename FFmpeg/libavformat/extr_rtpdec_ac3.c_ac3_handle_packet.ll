; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_ac3.c_ac3_handle_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_ac3.c_ac3_handle_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }

@RTP_AC3_PAYLOAD_HEADER_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid %d bytes packet\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid AC3 packet data\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"Received packet without a start fragment; dropping.\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Invalid packet received\0A\00", align 1
@RTP_FLAG_MARKER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Missed %d packets\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Error occurred when getting fragment buffer.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32*, i32*, i32, i32, i32)* @ac3_handle_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac3_handle_packet(i32* %0, %struct.TYPE_9__* %1, %struct.TYPE_10__* %2, %struct.TYPE_11__* %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %23 = load i32, i32* %17, align 4
  %24 = load i32, i32* @RTP_AC3_PAYLOAD_HEADER_SIZE, align 4
  %25 = add nsw i32 %24, 1
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %9
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* @AV_LOG_ERROR, align 4
  %30 = load i32, i32* %17, align 4
  %31 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %28, i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %32, i32* %10, align 4
  br label %199

33:                                               ; preds = %9
  %34 = load i32*, i32** %16, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 3
  store i32 %37, i32* %20, align 4
  %38 = load i32*, i32** %16, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %21, align 4
  %41 = load i32, i32* @RTP_AC3_PAYLOAD_HEADER_SIZE, align 4
  %42 = load i32*, i32** %16, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32* %44, i32** %16, align 8
  %45 = load i32, i32* @RTP_AC3_PAYLOAD_HEADER_SIZE, align 4
  %46 = load i32, i32* %17, align 4
  %47 = sub nsw i32 %46, %45
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %20, align 4
  switch i32 %48, label %152 [
    i32 0, label %49
    i32 1, label %80
    i32 2, label %80
    i32 3, label %109
  ]

49:                                               ; preds = %33
  %50 = load i32, i32* %21, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* @AV_LOG_ERROR, align 4
  %55 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %53, i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %56, i32* %10, align 4
  br label %199

57:                                               ; preds = %49
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %59 = load i32, i32* %17, align 4
  %60 = call i32 @av_new_packet(%struct.TYPE_11__* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* @AV_LOG_ERROR, align 4
  %65 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %63, i32 %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = call i32 @AVERROR(i32 %66)
  store i32 %67, i32* %10, align 4
  br label %199

68:                                               ; preds = %57
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %16, align 8
  %78 = load i32, i32* %17, align 4
  %79 = call i32 @memcpy(i32 %76, i32* %77, i32 %78)
  store i32 0, i32* %10, align 4
  br label %199

80:                                               ; preds = %33, %33
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = call i32 @ffio_free_dyn_buf(i32* %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 4
  %86 = load i32, i32* %21, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = call i32 @avio_open_dyn_buf(i32* %90)
  store i32 %91, i32* %22, align 4
  %92 = load i32, i32* %22, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %80
  %95 = load i32, i32* %22, align 4
  store i32 %95, i32* %10, align 4
  br label %199

96:                                               ; preds = %80
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %16, align 8
  %101 = load i32, i32* %17, align 4
  %102 = call i32 @avio_write(i32 %99, i32* %100, i32 %101)
  %103 = load i32*, i32** %15, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @EAGAIN, align 4
  %108 = call i32 @AVERROR(i32 %107)
  store i32 %108, i32* %10, align 4
  br label %199

109:                                              ; preds = %33
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %109
  %115 = load i32*, i32** %11, align 8
  %116 = load i32, i32* @AV_LOG_WARNING, align 4
  %117 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %115, i32 %116, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %118 = load i32, i32* @EAGAIN, align 4
  %119 = call i32 @AVERROR(i32 %118)
  store i32 %119, i32* %10, align 4
  br label %199

120:                                              ; preds = %109
  %121 = load i32, i32* %21, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %121, %124
  br i1 %125, label %133, label %126

126:                                              ; preds = %120
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %15, align 8
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %129, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %126, %120
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  %136 = call i32 @ffio_free_dyn_buf(i32* %135)
  %137 = load i32*, i32** %11, align 8
  %138 = load i32, i32* @AV_LOG_ERROR, align 4
  %139 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %137, i32 %138, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %140 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %140, i32* %10, align 4
  br label %199

141:                                              ; preds = %126
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %16, align 8
  %146 = load i32, i32* %17, align 4
  %147 = call i32 @avio_write(i32 %144, i32* %145, i32 %146)
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %141, %33
  %153 = load i32, i32* %19, align 4
  %154 = load i32, i32* @RTP_FLAG_MARKER, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %152
  %158 = load i32, i32* @EAGAIN, align 4
  %159 = call i32 @AVERROR(i32 %158)
  store i32 %159, i32* %10, align 4
  br label %199

160:                                              ; preds = %152
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %163, %166
  br i1 %167, label %168, label %183

168:                                              ; preds = %160
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 2
  %171 = call i32 @ffio_free_dyn_buf(i32* %170)
  %172 = load i32*, i32** %11, align 8
  %173 = load i32, i32* @AV_LOG_ERROR, align 4
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = sub i32 %176, %179
  %181 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %172, i32 %173, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %182, i32* %10, align 4
  br label %199

183:                                              ; preds = %160
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @ff_rtp_finalize_packet(%struct.TYPE_11__* %184, i32* %186, i32 %189)
  store i32 %190, i32* %22, align 4
  %191 = load i32, i32* %22, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %183
  %194 = load i32*, i32** %11, align 8
  %195 = load i32, i32* @AV_LOG_ERROR, align 4
  %196 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %194, i32 %195, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  %197 = load i32, i32* %22, align 4
  store i32 %197, i32* %10, align 4
  br label %199

198:                                              ; preds = %183
  store i32 0, i32* %10, align 4
  br label %199

199:                                              ; preds = %198, %193, %168, %157, %133, %114, %96, %94, %68, %62, %52, %27
  %200 = load i32, i32* %10, align 4
  ret i32 %200
}

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @av_new_packet(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ffio_free_dyn_buf(i32*) #1

declare dso_local i32 @avio_open_dyn_buf(i32*) #1

declare dso_local i32 @avio_write(i32, i32*, i32) #1

declare dso_local i32 @ff_rtp_finalize_packet(%struct.TYPE_11__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
