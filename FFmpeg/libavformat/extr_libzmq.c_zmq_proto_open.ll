; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_libzmq.c_zmq_proto_open.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_libzmq.c_zmq_proto_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32, i8*, i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Error occured during zmq_ctx_new()\0A\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"zmq:\00", align 1
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@ZMQ_PUB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Error occured during zmq_socket(): %s\0A\00", align 1
@ZMQ_STRERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Error occured during zmq_bind(): %s\0A\00", align 1
@AVIO_FLAG_READ = common dso_local global i32 0, align 4
@ZMQ_SUB = common dso_local global i32 0, align 4
@ZMQ_SUBSCRIBE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Error occured during zmq_connect(): %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i32)* @zmq_proto_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zmq_proto_open(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %9, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %21, %3
  %28 = call i32 (...) @zmq_ctx_new()
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %27
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = load i32, i32* @AV_LOG_ERROR, align 4
  %38 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %36, i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %39, i32* %4, align 4
  br label %152

40:                                               ; preds = %27
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @av_strstart(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %6)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %94

49:                                               ; preds = %40
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @ZMQ_PUB, align 4
  %54 = call i8* @zmq_socket(i32 %52, i32 %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %71, label %61

61:                                               ; preds = %49
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = load i32, i32* @AV_LOG_ERROR, align 4
  %64 = load i32, i32* @ZMQ_STRERROR, align 4
  %65 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %62, i32 %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @zmq_ctx_term(i32 %68)
  %70 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %70, i32* %4, align 4
  br label %152

71:                                               ; preds = %49
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @zmq_bind(i8* %74, i8* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %93

79:                                               ; preds = %71
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = load i32, i32* @AV_LOG_ERROR, align 4
  %82 = load i32, i32* @ZMQ_STRERROR, align 4
  %83 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %80, i32 %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @zmq_close(i8* %86)
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @zmq_ctx_term(i32 %90)
  %92 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %92, i32* %4, align 4
  br label %152

93:                                               ; preds = %71
  br label %94

94:                                               ; preds = %93, %40
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @AVIO_FLAG_READ, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %151

101:                                              ; preds = %94
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @ZMQ_SUB, align 4
  %106 = call i8* @zmq_socket(i32 %104, i32 %105)
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %123, label %113

113:                                              ; preds = %101
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %115 = load i32, i32* @AV_LOG_ERROR, align 4
  %116 = load i32, i32* @ZMQ_STRERROR, align 4
  %117 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %114, i32 %115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @zmq_ctx_term(i32 %120)
  %122 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %122, i32* %4, align 4
  br label %152

123:                                              ; preds = %101
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = load i32, i32* @ZMQ_SUBSCRIBE, align 4
  %128 = call i32 @zmq_setsockopt(i8* %126, i32 %127, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = call i32 @zmq_connect(i8* %131, i8* %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp eq i32 %134, -1
  br i1 %135, label %136, label %150

136:                                              ; preds = %123
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %138 = load i32, i32* @AV_LOG_ERROR, align 4
  %139 = load i32, i32* @ZMQ_STRERROR, align 4
  %140 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %137, i32 %138, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %139)
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @zmq_close(i8* %143)
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @zmq_ctx_term(i32 %147)
  %149 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %149, i32* %4, align 4
  br label %152

150:                                              ; preds = %123
  br label %151

151:                                              ; preds = %150, %94
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %151, %136, %113, %79, %61, %35
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32 @zmq_ctx_new(...) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, ...) #1

declare dso_local i32 @av_strstart(i8*, i8*, i8**) #1

declare dso_local i8* @zmq_socket(i32, i32) #1

declare dso_local i32 @zmq_ctx_term(i32) #1

declare dso_local i32 @zmq_bind(i8*, i8*) #1

declare dso_local i32 @zmq_close(i8*) #1

declare dso_local i32 @zmq_setsockopt(i8*, i32, i8*, i32) #1

declare dso_local i32 @zmq_connect(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
