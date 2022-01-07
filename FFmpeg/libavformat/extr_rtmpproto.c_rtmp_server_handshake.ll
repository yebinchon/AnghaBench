; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_rtmp_server_handshake.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_rtmp_server_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@RTMP_HANDSHAKE_PACKET_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unable to read handshake\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"RTMP protocol version mismatch\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Unable to write answer - RTMP S0\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"RTMP Handshake C1 Error\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"RTMP Handshake S1 Error\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"RTMP Handshake S2 Error\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"RTMP Handshake C2 Error\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [60 x i8] c"Erroneous C2 Message epoch does not match up with C1 epoch\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"Erroneous C2 Message random does not match up\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @rtmp_server_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtmp_server_handshake(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %18 = load i32, i32* @RTMP_HANDSHAKE_PACKET_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  %22 = load i32, i32* @RTMP_HANDSHAKE_PACKET_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %25 = load i32, i32* @RTMP_HANDSHAKE_PACKET_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ffurl_read_complete(i32 %30, i32* %21, i32 1)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %2
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @AV_LOG_ERROR, align 4
  %37 = call i32 @av_log(i32* %35, i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EIO, align 4
  %39 = call i32 @AVERROR(i32 %38)
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %143

40:                                               ; preds = %2
  %41 = getelementptr inbounds i32, i32* %21, i64 0
  %42 = load i32, i32* %41, align 16
  %43 = icmp ne i32 %42, 3
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* @AV_LOG_ERROR, align 4
  %47 = call i32 @av_log(i32* %45, i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @EIO, align 4
  %49 = call i32 @AVERROR(i32 %48)
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %143

50:                                               ; preds = %40
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @ffurl_write(i32 %53, i32* %21, i32 1)
  %55 = icmp sle i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @AV_LOG_ERROR, align 4
  %59 = call i32 @av_log(i32* %57, i32 %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @EIO, align 4
  %61 = call i32 @AVERROR(i32 %60)
  store i32 %61, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %143

62:                                               ; preds = %50
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = load i32, i32* @RTMP_HANDSHAKE_PACKET_SIZE, align 4
  %65 = call i32 @rtmp_receive_hs_packet(%struct.TYPE_5__* %63, i64* %8, i64* %12, i32* %24, i32 %64)
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* @AV_LOG_ERROR, align 4
  %71 = call i32 @av_log(i32* %69, i32 %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32, i32* %16, align 4
  store i32 %72, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %143

73:                                               ; preds = %62
  %74 = load i64, i64* %8, align 8
  store i64 %74, i64* %9, align 8
  store i32 8, i32* %14, align 4
  br label %75

75:                                               ; preds = %85, %73
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @RTMP_HANDSHAKE_PACKET_SIZE, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %27, i64 %81
  %83 = call i32 (...) @av_get_random_seed()
  %84 = call i32 @AV_WB32(i32* %82, i32 %83)
  br label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 4
  store i32 %87, i32* %14, align 4
  br label %75

88:                                               ; preds = %75
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load i32, i32* @RTMP_HANDSHAKE_PACKET_SIZE, align 4
  %92 = call i32 @rtmp_send_hs_packet(%struct.TYPE_5__* %89, i64 %90, i32 0, i32* %27, i32 %91)
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %88
  %96 = load i32*, i32** %4, align 8
  %97 = load i32, i32* @AV_LOG_ERROR, align 4
  %98 = call i32 @av_log(i32* %96, i32 %97, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %143

100:                                              ; preds = %88
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load i32, i32* @RTMP_HANDSHAKE_PACKET_SIZE, align 4
  %104 = call i32 @rtmp_send_hs_packet(%struct.TYPE_5__* %101, i64 %102, i32 0, i32* %24, i32 %103)
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %16, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %100
  %108 = load i32*, i32** %4, align 8
  %109 = load i32, i32* @AV_LOG_ERROR, align 4
  %110 = call i32 @av_log(i32* %108, i32 %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %111 = load i32, i32* %16, align 4
  store i32 %111, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %143

112:                                              ; preds = %100
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %114 = load i32, i32* @RTMP_HANDSHAKE_PACKET_SIZE, align 4
  %115 = call i32 @rtmp_receive_hs_packet(%struct.TYPE_5__* %113, i64* %13, i64* %12, i32* %21, i32 %114)
  store i32 %115, i32* %16, align 4
  %116 = load i32, i32* %16, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load i32*, i32** %4, align 8
  %120 = load i32, i32* @AV_LOG_ERROR, align 4
  %121 = call i32 @av_log(i32* %119, i32 %120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %122 = load i32, i32* %16, align 4
  store i32 %122, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %143

123:                                              ; preds = %112
  %124 = load i64, i64* %13, align 8
  %125 = load i64, i64* %9, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i32*, i32** %4, align 8
  %129 = load i32, i32* @AV_LOG_WARNING, align 4
  %130 = call i32 @av_log(i32* %128, i32 %129, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  br label %131

131:                                              ; preds = %127, %123
  %132 = getelementptr inbounds i32, i32* %21, i64 8
  %133 = getelementptr inbounds i32, i32* %27, i64 8
  %134 = load i32, i32* @RTMP_HANDSHAKE_PACKET_SIZE, align 4
  %135 = sub nsw i32 %134, 8
  %136 = call i64 @memcmp(i32* %132, i32* %133, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %131
  %139 = load i32*, i32** %4, align 8
  %140 = load i32, i32* @AV_LOG_WARNING, align 4
  %141 = call i32 @av_log(i32* %139, i32 %140, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  br label %142

142:                                              ; preds = %138, %131
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %143

143:                                              ; preds = %142, %118, %107, %95, %68, %56, %44, %34
  %144 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %144)
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ffurl_read_complete(i32, i32*, i32) #2

declare dso_local i32 @av_log(i32*, i32, i8*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i64 @ffurl_write(i32, i32*, i32) #2

declare dso_local i32 @rtmp_receive_hs_packet(%struct.TYPE_5__*, i64*, i64*, i32*, i32) #2

declare dso_local i32 @AV_WB32(i32*, i32) #2

declare dso_local i32 @av_get_random_seed(...) #2

declare dso_local i32 @rtmp_send_hs_packet(%struct.TYPE_5__*, i64, i32, i32*, i32) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
