; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/api/extr_api-threadmessage-test.c_receiver_thread.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/api/extr_api-threadmessage-test.c_receiver_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.receiver_data = type { i32, i32, i32 }
%struct.message = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"receiver #%d: flushing the queue, discarding %d message(s)\0A\00", align 1
@MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"sig\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"got \22%s\22 (%p)\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"consumed enough (%d), stop\0A\00", align 1
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @receiver_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @receiver_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.receiver_data*, align 8
  %6 = alloca %struct.message, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.receiver_data*
  store %struct.receiver_data* %10, %struct.receiver_data** %5, align 8
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %73, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.receiver_data*, %struct.receiver_data** %5, align 8
  %14 = getelementptr inbounds %struct.receiver_data, %struct.receiver_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %76

17:                                               ; preds = %11
  %18 = call i32 (...) @rand()
  %19 = load %struct.receiver_data*, %struct.receiver_data** %5, align 8
  %20 = getelementptr inbounds %struct.receiver_data, %struct.receiver_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = srem i32 %18, %21
  %23 = load %struct.receiver_data*, %struct.receiver_data** %5, align 8
  %24 = getelementptr inbounds %struct.receiver_data, %struct.receiver_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %25, 10
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %17
  %29 = load i32, i32* @AV_LOG_INFO, align 4
  %30 = load %struct.receiver_data*, %struct.receiver_data** %5, align 8
  %31 = getelementptr inbounds %struct.receiver_data, %struct.receiver_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.receiver_data*, %struct.receiver_data** %5, align 8
  %34 = getelementptr inbounds %struct.receiver_data, %struct.receiver_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @av_thread_message_queue_nb_elems(i32 %35)
  %37 = call i32 (i32*, i32, i8*, i32, ...) @av_log(i32* null, i32 %29, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %36)
  %38 = load %struct.receiver_data*, %struct.receiver_data** %5, align 8
  %39 = getelementptr inbounds %struct.receiver_data, %struct.receiver_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @av_thread_message_flush(i32 %40)
  br label %72

42:                                               ; preds = %17
  %43 = load %struct.receiver_data*, %struct.receiver_data** %5, align 8
  %44 = getelementptr inbounds %struct.receiver_data, %struct.receiver_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @av_thread_message_queue_recv(i32 %45, %struct.message* %6, i32 0)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %76

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.message, %struct.message* %6, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MAGIC, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @av_assert0(i32 %55)
  %57 = getelementptr inbounds %struct.message, %struct.message* %6, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %7, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call %struct.TYPE_4__* @av_dict_get(i32* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** %8, align 8
  %63 = load i32, i32* @AV_LOG_INFO, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.message, %struct.message* %6, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = call i32 (i32*, i32, i8*, i32, ...) @av_log(i32* null, i32 %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %66, %struct.TYPE_5__* %68)
  %70 = getelementptr inbounds %struct.message, %struct.message* %6, i32 0, i32 1
  %71 = call i32 @av_frame_free(%struct.TYPE_5__** %70)
  br label %72

72:                                               ; preds = %50, %28
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %11

76:                                               ; preds = %49, %11
  %77 = load i32, i32* @AV_LOG_INFO, align 4
  %78 = load i32, i32* %3, align 4
  %79 = call i32 (i32*, i32, i8*, i32, ...) @av_log(i32* null, i32 %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load %struct.receiver_data*, %struct.receiver_data** %5, align 8
  %81 = getelementptr inbounds %struct.receiver_data, %struct.receiver_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* %4, align 4
  br label %89

87:                                               ; preds = %76
  %88 = load i32, i32* @AVERROR_EOF, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = call i32 @av_thread_message_queue_set_err_send(i32 %82, i32 %90)
  ret i8* null
}

declare dso_local i32 @rand(...) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32, ...) #1

declare dso_local i32 @av_thread_message_queue_nb_elems(i32) #1

declare dso_local i32 @av_thread_message_flush(i32) #1

declare dso_local i32 @av_thread_message_queue_recv(i32, %struct.message*, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local %struct.TYPE_4__* @av_dict_get(i32*, i8*, i32*, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_5__**) #1

declare dso_local i32 @av_thread_message_queue_set_err_send(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
