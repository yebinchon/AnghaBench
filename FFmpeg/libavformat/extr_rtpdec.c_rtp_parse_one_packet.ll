; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec.c_rtp_parse_one_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec.c_rtp_parse_one_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_12__*, i32, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 (i32, i32, %struct.TYPE_12__*, i32*, i32*, i32*, i32, i32, i32)* }

@RTP_NOTS_VALUE = common dso_local global i32 0, align 4
@RTP_VERSION = common dso_local global i32 0, align 4
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"RTP: dropping old packet received too late\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"jitter buffer full\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i32**, i32)* @rtp_parse_one_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtp_parse_one_packet(%struct.TYPE_11__* %0, i32* %1, i32** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32**, i32*** %8, align 8
  %19 = icmp ne i32** %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32**, i32*** %8, align 8
  %22 = load i32*, i32** %21, align 8
  br label %24

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi i32* [ %22, %20 ], [ null, %23 ]
  store i32* %25, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %26 = load i32*, i32** %10, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %74, label %28

28:                                               ; preds = %24
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sle i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @rtp_parse_queued_packet(%struct.TYPE_11__* %34, i32* %35)
  store i32 %36, i32* %5, align 4
  br label %199

37:                                               ; preds = %28
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 9
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = icmp ne %struct.TYPE_10__* %40, null
  br i1 %41, label %42, label %73

42:                                               ; preds = %37
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 9
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32 (i32, i32, %struct.TYPE_12__*, i32*, i32*, i32*, i32, i32, i32)*, i32 (i32, i32, %struct.TYPE_12__*, i32*, i32*, i32*, i32, i32, i32)** %46, align 8
  %48 = icmp ne i32 (i32, i32, %struct.TYPE_12__*, i32*, i32*, i32*, i32, i32, i32)* %47, null
  br i1 %48, label %49, label %73

49:                                               ; preds = %42
  %50 = load i32, i32* @RTP_NOTS_VALUE, align 4
  store i32 %50, i32* %12, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 9
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32 (i32, i32, %struct.TYPE_12__*, i32*, i32*, i32*, i32, i32, i32)*, i32 (i32, i32, %struct.TYPE_12__*, i32*, i32*, i32*, i32, i32, i32)** %54, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 7
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 %55(i32 %58, i32 %61, %struct.TYPE_12__* %64, i32* %65, i32* %12, i32* null, i32 0, i32 0, i32 %66)
  store i32 %67, i32* %13, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @finalize_packet(%struct.TYPE_11__* %68, i32* %69, i32 %70)
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %5, align 4
  br label %199

73:                                               ; preds = %42, %37
  br label %74

74:                                               ; preds = %73, %24
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 12
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 -1, i32* %5, align 4
  br label %199

78:                                               ; preds = %74
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 192
  %83 = load i32, i32* @RTP_VERSION, align 4
  %84 = shl i32 %83, 6
  %85 = icmp ne i32 %82, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  store i32 -1, i32* %5, align 4
  br label %199

87:                                               ; preds = %78
  %88 = load i32*, i32** %10, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @RTP_PT_IS_RTCP(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @rtcp_parse_packet(%struct.TYPE_11__* %94, i32* %95, i32 %96)
  store i32 %97, i32* %5, align 4
  br label %199

98:                                               ; preds = %87
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 7
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = icmp ne %struct.TYPE_12__* %101, null
  br i1 %102, label %103, label %121

103:                                              ; preds = %98
  %104 = call i32 (...) @av_gettime_relative()
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 7
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @av_rescale_q(i32 %105, i32 %106, i32 %111)
  store i32 %112, i32* %15, align 4
  %113 = load i32*, i32** %10, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 4
  %115 = call i32 @AV_RB32(i32* %114)
  store i32 %115, i32* %12, align 4
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 6
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @rtcp_update_jitter(i32* %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %103, %98
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126, %121
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp sle i32 %134, 1
  br i1 %135, label %136, label %142

136:                                              ; preds = %131, %126
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %138 = load i32*, i32** %7, align 8
  %139 = load i32*, i32** %10, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @rtp_parse_packet_internal(%struct.TYPE_11__* %137, i32* %138, i32* %139, i32 %140)
  store i32 %141, i32* %5, align 4
  br label %199

142:                                              ; preds = %131
  %143 = load i32*, i32** %10, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  %145 = call i32 @AV_RB16(i32* %144)
  store i32 %145, i32* %16, align 4
  %146 = load i32, i32* %16, align 4
  %147 = sext i32 %146 to i64
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %147, %150
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %17, align 4
  %153 = load i32, i32* %17, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %142
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @AV_LOG_WARNING, align 4
  %160 = call i32 @av_log(i32 %158, i32 %159, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %199

161:                                              ; preds = %142
  %162 = load i32, i32* %17, align 4
  %163 = icmp sle i32 %162, 1
  br i1 %163, label %164, label %171

164:                                              ; preds = %161
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %166 = load i32*, i32** %7, align 8
  %167 = load i32*, i32** %10, align 8
  %168 = load i32, i32* %9, align 4
  %169 = call i32 @rtp_parse_packet_internal(%struct.TYPE_11__* %165, i32* %166, i32* %167, i32 %168)
  store i32 %169, i32* %13, align 4
  %170 = load i32, i32* %13, align 4
  store i32 %170, i32* %5, align 4
  br label %199

171:                                              ; preds = %161
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %173 = load i32*, i32** %10, align 8
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @enqueue_packet(%struct.TYPE_11__* %172, i32* %173, i32 %174)
  store i32 %175, i32* %13, align 4
  %176 = load i32, i32* %13, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %171
  %179 = load i32, i32* %13, align 4
  store i32 %179, i32* %5, align 4
  br label %199

180:                                              ; preds = %171
  %181 = load i32**, i32*** %8, align 8
  store i32* null, i32** %181, align 8
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = icmp sge i32 %184, %187
  br i1 %188, label %189, label %198

189:                                              ; preds = %180
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @AV_LOG_WARNING, align 4
  %194 = call i32 @av_log(i32 %192, i32 %193, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %196 = load i32*, i32** %7, align 8
  %197 = call i32 @rtp_parse_queued_packet(%struct.TYPE_11__* %195, i32* %196)
  store i32 %197, i32* %5, align 4
  br label %199

198:                                              ; preds = %180
  store i32 -1, i32* %5, align 4
  br label %199

199:                                              ; preds = %198, %189, %178, %164, %155, %136, %93, %86, %77, %49, %33
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i32 @rtp_parse_queued_packet(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @finalize_packet(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i64 @RTP_PT_IS_RTCP(i32) #1

declare dso_local i32 @rtcp_parse_packet(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @av_gettime_relative(...) #1

declare dso_local i32 @av_rescale_q(i32, i32, i32) #1

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i32 @rtcp_update_jitter(i32*, i32, i32) #1

declare dso_local i32 @rtp_parse_packet_internal(%struct.TYPE_11__*, i32*, i32*, i32) #1

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @enqueue_packet(%struct.TYPE_11__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
