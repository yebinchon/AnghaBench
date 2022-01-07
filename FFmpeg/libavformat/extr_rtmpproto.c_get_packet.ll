; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_get_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_get_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i64, i64, i64, i32, i64, i64, i32*, i32*, i32, i32 }
%struct.TYPE_20__ = type { i64, i32, i64, i32 }

@STATE_STOPPED = common dso_local global i64 0, align 8
@AVERROR_EOF = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Sending bytes read report\0A\00", align 1
@STATE_SEEKING = common dso_local global i64 0, align 8
@STATE_PLAYING = common dso_local global i64 0, align 8
@STATE_PUBLISHING = common dso_local global i64 0, align 8
@STATE_SENDING = common dso_local global i64 0, align 8
@STATE_RECEIVING = common dso_local global i64 0, align 8
@RTMP_PT_VIDEO = common dso_local global i64 0, align 8
@RTMP_PT_AUDIO = common dso_local global i64 0, align 8
@RTMP_PT_NOTIFY = common dso_local global i64 0, align 8
@RTMP_PT_METADATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32)* @get_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_packet(%struct.TYPE_19__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_21__* %11, %struct.TYPE_21__** %6, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @STATE_STOPPED, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %18, i32* %3, align 4
  br label %204

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %202, %163, %98, %19
  %21 = bitcast %struct.TYPE_20__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 32, i1 false)
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 8
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 7
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = call i32 @ff_rtmp_packet_read(i32 %24, %struct.TYPE_20__* %8, i32 %27, i32* %31, i32* %35)
  store i32 %36, i32* %7, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %20
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @EAGAIN, align 4
  %43 = call i32 @AVERROR(i32 %42)
  store i32 %43, i32* %3, align 4
  br label %204

44:                                               ; preds = %38
  %45 = load i32, i32* @EIO, align 4
  %46 = call i32 @AVERROR(i32 %45)
  store i32 %46, i32* %3, align 4
  br label %204

47:                                               ; preds = %20
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 6
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %60, %63
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %64, %67
  br i1 %68, label %69, label %89

69:                                               ; preds = %47
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %71 = load i32, i32* @AV_LOG_DEBUG, align 4
  %72 = call i32 @av_log(%struct.TYPE_19__* %70, i32 %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  %78 = call i32 @gen_bytes_read(%struct.TYPE_19__* %73, %struct.TYPE_21__* %74, i64 %77)
  store i32 %78, i32* %7, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %69
  %81 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_20__* %8)
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %204

83:                                               ; preds = %69
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %83, %47
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %92 = call i32 @rtmp_parse_result(%struct.TYPE_19__* %90, %struct.TYPE_21__* %91, %struct.TYPE_20__* %8)
  store i32 %92, i32* %7, align 4
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @STATE_SEEKING, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_20__* %8)
  br label %20

100:                                              ; preds = %89
  %101 = load i32, i32* %7, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_20__* %8)
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %3, align 4
  br label %204

106:                                              ; preds = %100
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_20__* %8)
  store i32 0, i32* %3, align 4
  br label %204

116:                                              ; preds = %111, %106
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @STATE_STOPPED, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_20__* %8)
  %124 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %124, i32* %3, align 4
  br label %204

125:                                              ; preds = %116
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %154

128:                                              ; preds = %125
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @STATE_PLAYING, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %152, label %134

134:                                              ; preds = %128
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @STATE_PUBLISHING, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %152, label %140

140:                                              ; preds = %134
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @STATE_SENDING, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %152, label %146

146:                                              ; preds = %140
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @STATE_RECEIVING, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %146, %140, %134, %128
  %153 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_20__* %8)
  store i32 0, i32* %3, align 4
  br label %204

154:                                              ; preds = %146, %125
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %158, %154
  %164 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_20__* %8)
  br label %20

165:                                              ; preds = %158
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @RTMP_PT_VIDEO, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %175, label %170

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @RTMP_PT_AUDIO, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %170, %165
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %177 = call i32 @append_flv_data(%struct.TYPE_21__* %176, %struct.TYPE_20__* %8, i32 0)
  store i32 %177, i32* %7, align 4
  %178 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_20__* %8)
  %179 = load i32, i32* %7, align 4
  store i32 %179, i32* %3, align 4
  br label %204

180:                                              ; preds = %170
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @RTMP_PT_NOTIFY, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %180
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %187 = call i32 @handle_notify(%struct.TYPE_19__* %186, %struct.TYPE_20__* %8)
  store i32 %187, i32* %7, align 4
  %188 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_20__* %8)
  %189 = load i32, i32* %7, align 4
  store i32 %189, i32* %3, align 4
  br label %204

190:                                              ; preds = %180
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @RTMP_PT_METADATA, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %197 = call i32 @handle_metadata(%struct.TYPE_21__* %196, %struct.TYPE_20__* %8)
  store i32 %197, i32* %7, align 4
  %198 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_20__* %8)
  %199 = load i32, i32* %7, align 4
  store i32 %199, i32* %3, align 4
  br label %204

200:                                              ; preds = %190
  br label %201

201:                                              ; preds = %200
  br label %202

202:                                              ; preds = %201
  %203 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_20__* %8)
  br label %20

204:                                              ; preds = %195, %185, %175, %152, %122, %114, %103, %80, %44, %41, %17
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ff_rtmp_packet_read(i32, %struct.TYPE_20__*, i32, i32*, i32*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @av_log(%struct.TYPE_19__*, i32, i8*) #2

declare dso_local i32 @gen_bytes_read(%struct.TYPE_19__*, %struct.TYPE_21__*, i64) #2

declare dso_local i32 @ff_rtmp_packet_destroy(%struct.TYPE_20__*) #2

declare dso_local i32 @rtmp_parse_result(%struct.TYPE_19__*, %struct.TYPE_21__*, %struct.TYPE_20__*) #2

declare dso_local i32 @append_flv_data(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #2

declare dso_local i32 @handle_notify(%struct.TYPE_19__*, %struct.TYPE_20__*) #2

declare dso_local i32 @handle_metadata(%struct.TYPE_21__*, %struct.TYPE_20__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
