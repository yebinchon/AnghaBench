; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspdec.c_ff_rtsp_tcp_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspdec.c_ff_rtsp_tcp_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, i32, %struct.TYPE_8__**, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"tcp_read_packet:\0A\00", align 1
@RTSP_STATE_STREAMING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"id=%d len=%d\0A\00", align 1
@RTSP_TRANSPORT_RDT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_rtsp_tcp_read_packet(%struct.TYPE_10__* %0, %struct.TYPE_8__** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_8__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %10, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = load i32, i32* @AV_LOG_TRACE, align 4
  %22 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %20, i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %125, %70, %4
  br label %24

24:                                               ; preds = %42, %23
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = call i32 @ff_rtsp_read_reply(%struct.TYPE_10__* %25, i32* %16, i32* null, i32 1, i32* null)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %5, align 4
  br label %130

31:                                               ; preds = %24
  %32 = load i32, i32* %14, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %43

35:                                               ; preds = %31
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RTSP_STATE_STREAMING, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %130

42:                                               ; preds = %35
  br label %24

43:                                               ; preds = %34
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @ffurl_read_complete(i32 %46, i32* %47, i32 3)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 3
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 -1, i32* %5, align 4
  br label %130

52:                                               ; preds = %43
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %11, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = call i32 @AV_RB16(i32* %57)
  store i32 %58, i32* %12, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = load i32, i32* @AV_LOG_TRACE, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %59, i32 %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %70, label %67

67:                                               ; preds = %52
  %68 = load i32, i32* %12, align 4
  %69 = icmp slt i32 %68, 8
  br i1 %69, label %70, label %71

70:                                               ; preds = %67, %52
  br label %23

71:                                               ; preds = %67
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @ffurl_read_complete(i32 %74, i32* %75, i32 %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  store i32 -1, i32* %5, align 4
  br label %130

82:                                               ; preds = %71
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @RTSP_TRANSPORT_RDT, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %12, align 4
  %91 = call i64 @ff_rdt_parse_header(i32* %89, i32 %90, i32* %11, i32* null, i32* null, i32* null, i32* null)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 -1, i32* %5, align 4
  br label %130

94:                                               ; preds = %88, %82
  store i32 0, i32* %13, align 4
  br label %95

95:                                               ; preds = %122, %94
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %125

101:                                              ; preds = %95
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %104, i64 %106
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  store %struct.TYPE_8__* %108, %struct.TYPE_8__** %15, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp sge i32 %109, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %101
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp sle i32 %115, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %126

121:                                              ; preds = %114, %101
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %13, align 4
  br label %95

125:                                              ; preds = %95
  br label %23

126:                                              ; preds = %120
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %128 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_8__* %127, %struct.TYPE_8__** %128, align 8
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %126, %93, %81, %51, %41, %29
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i32 @ff_rtsp_read_reply(%struct.TYPE_10__*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @ffurl_read_complete(i32, i32*, i32) #1

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i64 @ff_rdt_parse_header(i32*, i32, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
