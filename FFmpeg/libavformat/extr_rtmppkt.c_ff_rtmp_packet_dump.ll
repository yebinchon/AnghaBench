; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmppkt.c_ff_rtmp_packet_dump.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmppkt.c_ff_rtmp_packet_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32*, i32, i32, i32 }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"RTMP packet type '%s'(%d) for channel %d, timestamp %d, extra field %d size %d\0A\00", align 1
@RTMP_PT_INVOKE = common dso_local global i64 0, align 8
@RTMP_PT_NOTIFY = common dso_local global i64 0, align 8
@RTMP_PT_WINDOW_ACK_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Window acknowledgement size = %d\0A\00", align 1
@RTMP_PT_SET_PEER_BW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"Set Peer BW = %d\0A\00", align 1
@RTMP_PT_AUDIO = common dso_local global i64 0, align 8
@RTMP_PT_VIDEO = common dso_local global i64 0, align 8
@RTMP_PT_METADATA = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c" %02X\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_rtmp_packet_dump(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @AV_LOG_DEBUG, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @rtmp_packet_type(i64 %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %9, i32 %10, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %17, i32 %20, i32 %23, i32 %26, i32 %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RTMP_PT_INVOKE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @RTMP_PT_NOTIFY, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %36, %2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %5, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  store i32* %53, i32** %6, align 8
  br label %54

54:                                               ; preds = %69, %42
  %55 = load i32*, i32** %5, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = icmp ult i32* %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %54
  %59 = load i8*, i8** %3, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @amf_tag_contents(i8* %59, i32* %60, i32* %61)
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @ff_amf_tag_size(i32* %63, i32* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %74

69:                                               ; preds = %58
  %70 = load i32, i32* %7, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32* %73, i32** %5, align 8
  br label %54

74:                                               ; preds = %68, %54
  br label %149

75:                                               ; preds = %36
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @RTMP_PT_WINDOW_ACK_SIZE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %75
  %82 = load i8*, i8** %3, align 8
  %83 = load i32, i32* @AV_LOG_DEBUG, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @AV_RB32(i32* %86)
  %88 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %82, i32 %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %148

89:                                               ; preds = %75
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @RTMP_PT_SET_PEER_BW, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load i8*, i8** %3, align 8
  %97 = load i32, i32* @AV_LOG_DEBUG, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @AV_RB32(i32* %100)
  %102 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %96, i32 %97, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %147

103:                                              ; preds = %89
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @RTMP_PT_AUDIO, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %146

109:                                              ; preds = %103
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @RTMP_PT_VIDEO, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %146

115:                                              ; preds = %109
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @RTMP_PT_METADATA, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %146

121:                                              ; preds = %115
  store i32 0, i32* %8, align 4
  br label %122

122:                                              ; preds = %139, %121
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %142

128:                                              ; preds = %122
  %129 = load i8*, i8** %3, align 8
  %130 = load i32, i32* @AV_LOG_DEBUG, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %129, i32 %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %128
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %8, align 4
  br label %122

142:                                              ; preds = %122
  %143 = load i8*, i8** %3, align 8
  %144 = load i32, i32* @AV_LOG_DEBUG, align 4
  %145 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %143, i32 %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %146

146:                                              ; preds = %142, %115, %109, %103
  br label %147

147:                                              ; preds = %146, %95
  br label %148

148:                                              ; preds = %147, %81
  br label %149

149:                                              ; preds = %148, %74
  ret void
}

declare dso_local i32 @av_log(i8*, i32, i8*, ...) #1

declare dso_local i32 @rtmp_packet_type(i64) #1

declare dso_local i32 @amf_tag_contents(i8*, i32*, i32*) #1

declare dso_local i32 @ff_amf_tag_size(i32*, i32*) #1

declare dso_local i32 @AV_RB32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
