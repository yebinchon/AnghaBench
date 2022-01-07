; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_icecast.c_icecast_write.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_icecast.c_icecast_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@icecast_write.oggs = internal constant [4 x i32] [i32 79, i32 103, i32 103, i32 83], align 16
@icecast_write.webm = internal constant [4 x i32] [i32 26, i32 69, i32 223, i32 163], align 16
@icecast_write.opus = internal constant [8 x i32] [i32 79, i32 112, i32 117, i32 115, i32 72, i32 101, i32 97, i32 100], align 16
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Streaming Ogg but appropriate content type NOT set!\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Set it with -content_type application/ogg\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Streaming Opus but appropriate content type NOT set!\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Set it with -content_type audio/ogg\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Streaming WebM but appropriate content type NOT set!\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Set it with -content_type video/webm\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"It seems you are streaming an unsupported format.\0A\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"It might work, but is not officially supported in Icecast!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32)* @icecast_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icecast_write(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %69, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %68, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  %24 = icmp sge i32 %23, 8
  br i1 %24, label %25, label %68

25:                                               ; preds = %22
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @memcmp(i32* %26, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @icecast_write.oggs, i64 0, i64 0), i32 16)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = load i32, i32* @AV_LOG_WARNING, align 4
  %32 = call i32 @av_log(%struct.TYPE_5__* %30, i32 %31, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = load i32, i32* @AV_LOG_WARNING, align 4
  %35 = call i32 @av_log(%struct.TYPE_5__* %33, i32 %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %67

36:                                               ; preds = %25
  %37 = load i32*, i32** %5, align 8
  %38 = call i64 @memcmp(i32* %37, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @icecast_write.opus, i64 0, i64 0), i32 32)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = load i32, i32* @AV_LOG_WARNING, align 4
  %43 = call i32 @av_log(%struct.TYPE_5__* %41, i32 %42, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = load i32, i32* @AV_LOG_WARNING, align 4
  %46 = call i32 @av_log(%struct.TYPE_5__* %44, i32 %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %66

47:                                               ; preds = %36
  %48 = load i32*, i32** %5, align 8
  %49 = call i64 @memcmp(i32* %48, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @icecast_write.webm, i64 0, i64 0), i32 16)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = load i32, i32* @AV_LOG_WARNING, align 4
  %54 = call i32 @av_log(%struct.TYPE_5__* %52, i32 %53, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = load i32, i32* @AV_LOG_WARNING, align 4
  %57 = call i32 @av_log(%struct.TYPE_5__* %55, i32 %56, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %65

58:                                               ; preds = %47
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = load i32, i32* @AV_LOG_WARNING, align 4
  %61 = call i32 @av_log(%struct.TYPE_5__* %59, i32 %60, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = load i32, i32* @AV_LOG_WARNING, align 4
  %64 = call i32 @av_log(%struct.TYPE_5__* %62, i32 %63, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  br label %65

65:                                               ; preds = %58, %51
  br label %66

66:                                               ; preds = %65, %40
  br label %67

67:                                               ; preds = %66, %29
  br label %68

68:                                               ; preds = %67, %22, %15
  br label %69

69:                                               ; preds = %68, %3
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @ffurl_write(i32 %72, i32* %73, i32 %74)
  ret i32 %75
}

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32 @ffurl_write(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
