; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpproto.c_rtp_write.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpproto.c_rtp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, %struct.sockaddr_storage, i32, %struct.sockaddr_storage, i64 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RTP_VERSION = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Data doesn't look like RTP packets, make sure the RTP muxer is used\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Unable to send packet to source, no packets received yet\0A\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [74 x i8] c"Not received any RTCP packets yet, inferring peer port from the RTP port\0A\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"Not received any RTP packets yet, inferring peer port from the RTCP port\0A\00", align 1
@AVIO_FLAG_NONBLOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Failed to send FEC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32)* @rtp_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtp_write(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockaddr_storage*, align 8
  %14 = alloca %struct.sockaddr_storage, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = call i32 @AVERROR(i32 %23)
  store i32 %24, i32* %4, align 4
  br label %206

25:                                               ; preds = %3
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 192
  %30 = load i32, i32* @RTP_VERSION, align 4
  %31 = shl i32 %30, 6
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = load i32, i32* @AV_LOG_WARNING, align 4
  %36 = call i32 @av_log(%struct.TYPE_6__* %34, i32 %35, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %33, %25
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 9
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %157

42:                                               ; preds = %37
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 8
  %45 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %48
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = load i32, i32* @AV_LOG_ERROR, align 4
  %57 = call i32 @av_log(%struct.TYPE_6__* %55, i32 %56, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %4, align 4
  br label %206

59:                                               ; preds = %48, %42
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @RTP_PT_IS_RTCP(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %12, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 6
  store %struct.sockaddr_storage* %70, %struct.sockaddr_storage** %13, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 5
  store i32* %72, i32** %15, align 8
  br label %81

73:                                               ; preds = %59
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %12, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 8
  store %struct.sockaddr_storage* %78, %struct.sockaddr_storage** %13, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 7
  store i32* %80, i32** %15, align 8
  br label %81

81:                                               ; preds = %73, %65
  %82 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %13, align 8
  %83 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %125, label %86

86:                                               ; preds = %81
  store %struct.sockaddr_storage* %14, %struct.sockaddr_storage** %13, align 8
  store i32* %16, i32** %15, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @RTP_PT_IS_RTCP(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %86
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 8
  %95 = bitcast %struct.sockaddr_storage* %14 to i8*
  %96 = bitcast %struct.sockaddr_storage* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 4 %96, i64 4, i1 false)
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %16, align 4
  %100 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %13, align 8
  %101 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %13, align 8
  %102 = call i64 @get_port(%struct.sockaddr_storage* %101)
  %103 = add nsw i64 %102, 1
  %104 = call i32 @set_port(%struct.sockaddr_storage* %100, i64 %103)
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %106 = load i32, i32* @AV_LOG_INFO, align 4
  %107 = call i32 @av_log(%struct.TYPE_6__* %105, i32 %106, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0))
  br label %124

108:                                              ; preds = %86
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 6
  %111 = bitcast %struct.sockaddr_storage* %14 to i8*
  %112 = bitcast %struct.sockaddr_storage* %110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %111, i8* align 4 %112, i64 4, i1 false)
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %16, align 4
  %116 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %13, align 8
  %117 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %13, align 8
  %118 = call i64 @get_port(%struct.sockaddr_storage* %117)
  %119 = sub nsw i64 %118, 1
  %120 = call i32 @set_port(%struct.sockaddr_storage* %116, i64 %119)
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %122 = load i32, i32* @AV_LOG_INFO, align 4
  %123 = call i32 @av_log(%struct.TYPE_6__* %121, i32 %122, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0))
  br label %124

124:                                              ; preds = %108, %92
  br label %125

125:                                              ; preds = %124, %81
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @AVIO_FLAG_NONBLOCK, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %125
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @ff_network_wait_fd(i32 %133, i32 1)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %4, align 4
  br label %206

139:                                              ; preds = %132
  br label %140

140:                                              ; preds = %139, %125
  %141 = load i32, i32* %12, align 4
  %142 = load i32*, i32** %6, align 8
  %143 = load i32, i32* %7, align 4
  %144 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %13, align 8
  %145 = bitcast %struct.sockaddr_storage* %144 to %struct.sockaddr*
  %146 = load i32*, i32** %15, align 8
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @sendto(i32 %141, i32* %142, i32 %143, i32 0, %struct.sockaddr* %145, i32 %147)
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %140
  %152 = call i32 (...) @ff_neterrno()
  br label %155

153:                                              ; preds = %140
  %154 = load i32, i32* %9, align 4
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi i32 [ %152, %151 ], [ %154, %153 ]
  store i32 %156, i32* %4, align 4
  br label %206

157:                                              ; preds = %37
  %158 = load i32*, i32** %6, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @RTP_PT_IS_RTCP(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %157
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 4
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  store %struct.TYPE_6__* %166, %struct.TYPE_6__** %11, align 8
  br label %171

167:                                              ; preds = %157
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 3
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  store %struct.TYPE_6__* %170, %struct.TYPE_6__** %11, align 8
  br label %171

171:                                              ; preds = %167, %163
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %173 = load i32*, i32** %6, align 8
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @ffurl_write(%struct.TYPE_6__* %172, i32* %173, i32 %174)
  store i32 %175, i32* %9, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %171
  %178 = load i32, i32* %9, align 4
  store i32 %178, i32* %4, align 4
  br label %206

179:                                              ; preds = %171
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = icmp ne %struct.TYPE_6__* %182, null
  br i1 %183, label %184, label %204

184:                                              ; preds = %179
  %185 = load i32*, i32** %6, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = call i64 @RTP_PT_IS_RTCP(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %204, label %190

190:                                              ; preds = %184
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = load i32*, i32** %6, align 8
  %195 = load i32, i32* %7, align 4
  %196 = call i32 @ffurl_write(%struct.TYPE_6__* %193, i32* %194, i32 %195)
  store i32 %196, i32* %10, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %190
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %200 = load i32, i32* @AV_LOG_ERROR, align 4
  %201 = call i32 @av_log(%struct.TYPE_6__* %199, i32 %200, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %202 = load i32, i32* %10, align 4
  store i32 %202, i32* %4, align 4
  br label %206

203:                                              ; preds = %190
  br label %204

204:                                              ; preds = %203, %184, %179
  %205 = load i32, i32* %9, align 4
  store i32 %205, i32* %4, align 4
  br label %206

206:                                              ; preds = %204, %198, %177, %155, %137, %54, %22
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i64 @RTP_PT_IS_RTCP(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_port(%struct.sockaddr_storage*, i64) #1

declare dso_local i64 @get_port(%struct.sockaddr_storage*) #1

declare dso_local i32 @ff_network_wait_fd(i32, i32) #1

declare dso_local i32 @sendto(i32, i32*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @ff_neterrno(...) #1

declare dso_local i32 @ffurl_write(%struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
