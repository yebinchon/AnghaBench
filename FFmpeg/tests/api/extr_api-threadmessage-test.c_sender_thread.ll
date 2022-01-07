; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/api/extr_api-threadmessage-test.c_sender_thread.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/api/extr_api-threadmessage-test.c_sender_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sender_data = type { i32, i32, i32 }
%struct.message = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32* }

@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"sender #%d: workload=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"sender #%d: flushing the queue\0A\00", align 1
@MAGIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"frame %d/%d from sender %d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"sig\00", align 1
@AV_DICT_DONT_STRDUP_VAL = common dso_local global i32 0, align 4
@AV_PIX_FMT_RGBA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"sender #%d: sending my work (%d/%d frame:%p)\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"sender #%d: my work is done here (%s)\0A\00", align 1
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @sender_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sender_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sender_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.message, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.sender_data*
  store %struct.sender_data* %10, %struct.sender_data** %5, align 8
  %11 = load i32, i32* @AV_LOG_INFO, align 4
  %12 = load %struct.sender_data*, %struct.sender_data** %5, align 8
  %13 = getelementptr inbounds %struct.sender_data, %struct.sender_data* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sender_data*, %struct.sender_data** %5, align 8
  %16 = getelementptr inbounds %struct.sender_data, %struct.sender_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i32*, i32, i8*, i32, ...) @av_log(i32* null, i32 %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %130, %1
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.sender_data*, %struct.sender_data** %5, align 8
  %22 = getelementptr inbounds %struct.sender_data, %struct.sender_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %133

25:                                               ; preds = %19
  %26 = call i32 (...) @rand()
  %27 = load %struct.sender_data*, %struct.sender_data** %5, align 8
  %28 = getelementptr inbounds %struct.sender_data, %struct.sender_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = srem i32 %26, %29
  %31 = load %struct.sender_data*, %struct.sender_data** %5, align 8
  %32 = getelementptr inbounds %struct.sender_data, %struct.sender_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 10
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %25
  %37 = load i32, i32* @AV_LOG_INFO, align 4
  %38 = load %struct.sender_data*, %struct.sender_data** %5, align 8
  %39 = getelementptr inbounds %struct.sender_data, %struct.sender_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32*, i32, i8*, i32, ...) @av_log(i32* null, i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.sender_data*, %struct.sender_data** %5, align 8
  %43 = getelementptr inbounds %struct.sender_data, %struct.sender_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @av_thread_message_flush(i32 %44)
  br label %129

46:                                               ; preds = %25
  store i32* null, i32** %7, align 8
  %47 = getelementptr inbounds %struct.message, %struct.message* %8, i32 0, i32 0
  %48 = call %struct.TYPE_4__* (...) @av_frame_alloc()
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.message, %struct.message* %8, i32 0, i32 1
  %50 = load i32, i32* @MAGIC, align 4
  store i32 %50, i32* %49, align 8
  %51 = getelementptr inbounds %struct.message, %struct.message* %8, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = icmp ne %struct.TYPE_4__* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = call i32 @AVERROR(i32 %55)
  store i32 %56, i32* %4, align 4
  br label %133

57:                                               ; preds = %46
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  %60 = load %struct.sender_data*, %struct.sender_data** %5, align 8
  %61 = getelementptr inbounds %struct.sender_data, %struct.sender_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sender_data*, %struct.sender_data** %5, align 8
  %64 = getelementptr inbounds %struct.sender_data, %struct.sender_data* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @av_asprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %62, i32 %65)
  store i8* %66, i8** %6, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.message, %struct.message* %8, i32 0, i32 0
  %71 = call i32 @av_frame_free(%struct.TYPE_4__** %70)
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = call i32 @AVERROR(i32 %72)
  store i32 %73, i32* %4, align 4
  br label %133

74:                                               ; preds = %57
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* @AV_DICT_DONT_STRDUP_VAL, align 4
  %77 = call i32 @av_dict_set(i32** %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %75, i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.message, %struct.message* %8, i32 0, i32 0
  %82 = call i32 @av_frame_free(%struct.TYPE_4__** %81)
  br label %133

83:                                               ; preds = %74
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds %struct.message, %struct.message* %8, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  store i32* %84, i32** %87, align 8
  %88 = load i32, i32* @AV_PIX_FMT_RGBA, align 4
  %89 = getelementptr inbounds %struct.message, %struct.message* %8, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  store i32 %88, i32* %91, align 8
  %92 = getelementptr inbounds %struct.message, %struct.message* %8, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i32 320, i32* %94, align 8
  %95 = getelementptr inbounds %struct.message, %struct.message* %8, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i32 240, i32* %97, align 4
  %98 = getelementptr inbounds %struct.message, %struct.message* %8, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = call i32 @av_frame_get_buffer(%struct.TYPE_4__* %99, i32 32)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %83
  %104 = getelementptr inbounds %struct.message, %struct.message* %8, i32 0, i32 0
  %105 = call i32 @av_frame_free(%struct.TYPE_4__** %104)
  br label %133

106:                                              ; preds = %83
  %107 = load i32, i32* @AV_LOG_INFO, align 4
  %108 = load %struct.sender_data*, %struct.sender_data** %5, align 8
  %109 = getelementptr inbounds %struct.sender_data, %struct.sender_data* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %3, align 4
  %112 = add nsw i32 %111, 1
  %113 = load %struct.sender_data*, %struct.sender_data** %5, align 8
  %114 = getelementptr inbounds %struct.sender_data, %struct.sender_data* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.message, %struct.message* %8, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = call i32 (i32*, i32, i8*, i32, ...) @av_log(i32* null, i32 %107, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %110, i32 %112, i32 %115, %struct.TYPE_4__* %117)
  %119 = load %struct.sender_data*, %struct.sender_data** %5, align 8
  %120 = getelementptr inbounds %struct.sender_data, %struct.sender_data* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @av_thread_message_queue_send(i32 %121, %struct.message* %8, i32 0)
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %106
  %126 = getelementptr inbounds %struct.message, %struct.message* %8, i32 0, i32 0
  %127 = call i32 @av_frame_free(%struct.TYPE_4__** %126)
  br label %133

128:                                              ; preds = %106
  br label %129

129:                                              ; preds = %128, %36
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %3, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %3, align 4
  br label %19

133:                                              ; preds = %125, %103, %80, %69, %54, %19
  %134 = load i32, i32* @AV_LOG_INFO, align 4
  %135 = load %struct.sender_data*, %struct.sender_data** %5, align 8
  %136 = getelementptr inbounds %struct.sender_data, %struct.sender_data* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @av_err2str(i32 %138)
  %140 = call i32 (i32*, i32, i8*, i32, ...) @av_log(i32* null, i32 %134, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %137, i32 %139)
  %141 = load %struct.sender_data*, %struct.sender_data** %5, align 8
  %142 = getelementptr inbounds %struct.sender_data, %struct.sender_data* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %4, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %133
  %147 = load i32, i32* %4, align 4
  br label %150

148:                                              ; preds = %133
  %149 = load i32, i32* @AVERROR_EOF, align 4
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i32 [ %147, %146 ], [ %149, %148 ]
  %152 = call i32 @av_thread_message_queue_set_err_recv(i32 %143, i32 %151)
  ret i8* null
}

declare dso_local i32 @av_log(i32*, i32, i8*, i32, ...) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @av_thread_message_flush(i32) #1

declare dso_local %struct.TYPE_4__* @av_frame_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_asprintf(i8*, i32, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_4__**) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i32 @av_frame_get_buffer(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @av_thread_message_queue_send(i32, %struct.message*, i32) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local i32 @av_thread_message_queue_set_err_recv(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
