; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_recording_driver_update_streaming_url.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_recording_driver_update_streaming_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@configuration_settings = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"rtmp://a.rtmp.youtube.com/live2/\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"rtmp://live.twitch.tv/app/\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"udp://%s:%u\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @recording_driver_update_streaming_url() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** @configuration_settings, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %1, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %6 = icmp ne %struct.TYPE_9__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %63

8:                                                ; preds = %0
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %62 [
    i32 129, label %13
    i32 128, label %32
    i32 130, label %51
    i32 131, label %61
  ]

13:                                               ; preds = %8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @string_is_empty(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %13
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @snprintf(i32 %24, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %25, i32 %29)
  br label %31

31:                                               ; preds = %20, %13
  br label %63

32:                                               ; preds = %8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @string_is_empty(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %32
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %2, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @snprintf(i32 %43, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %44, i32 %48)
  br label %50

50:                                               ; preds = %39, %32
  br label %63

51:                                               ; preds = %8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @snprintf(i32 %55, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  br label %63

61:                                               ; preds = %8
  br label %62

62:                                               ; preds = %8, %61
  br label %63

63:                                               ; preds = %7, %62, %51, %50, %31
  ret void
}

declare dso_local i32 @string_is_empty(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
