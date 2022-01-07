; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_avpacket.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_avpacket.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"failed to initialize variables\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"av_packet_clone failed to clone AVPacket\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"av_grow_packet failed\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [78 x i8] c"av_grow_packet failed to return error when \22grow_by\22 parameter is too large.\0A\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"av_new_packet failed to return error when \22size\22 parameter is too large.\0A\00", align 1
@.str.5 = private unnamed_addr constant [80 x i8] c"av_packet_from_data failed to return error when \22size\22 parameter is too large.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_10__, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = call i64 @initializations(%struct.TYPE_10__* %2)
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %51

9:                                                ; preds = %0
  %10 = call %struct.TYPE_10__* @av_packet_clone(%struct.TYPE_10__* %2)
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %3, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = icmp ne %struct.TYPE_10__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @AV_LOG_ERROR, align 4
  %15 = call i32 @av_log(i32* null, i32 %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %51

16:                                               ; preds = %9
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = call i64 @av_grow_packet(%struct.TYPE_10__* %17, i32 20)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @AV_LOG_ERROR, align 4
  %22 = call i32 @av_log(i32* null, i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %51

23:                                               ; preds = %16
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = load i32, i32* @INT_MAX, align 4
  %26 = call i64 @av_grow_packet(%struct.TYPE_10__* %24, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %30

30:                                               ; preds = %28, %23
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = load i32, i32* @INT_MAX, align 4
  %33 = call i64 @av_new_packet(%struct.TYPE_10__* %31, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %30
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @INT_MAX, align 4
  %43 = call i64 @av_packet_from_data(%struct.TYPE_10__* %38, i32 %41, i32 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = call i32 @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %37
  %48 = call i32 @av_packet_free(%struct.TYPE_10__** %3)
  %49 = call i32 @av_packet_unref(%struct.TYPE_10__* %2)
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %1, align 4
  br label %51

51:                                               ; preds = %47, %20, %13, %7
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i64 @initializations(%struct.TYPE_10__*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local %struct.TYPE_10__* @av_packet_clone(%struct.TYPE_10__*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i64 @av_grow_packet(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @av_new_packet(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @av_packet_from_data(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @av_packet_free(%struct.TYPE_10__**) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
