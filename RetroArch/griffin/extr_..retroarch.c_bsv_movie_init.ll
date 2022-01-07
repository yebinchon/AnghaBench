; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_bsv_movie_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_bsv_movie_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@bsv_movie_state = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@RARCH_MOVIE_PLAYBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s: \22%s\22.\0A\00", align 1
@MSG_FAILED_TO_LOAD_MOVIE_FILE = common dso_local global i32 0, align 4
@MSG_STARTING_MOVIE_PLAYBACK = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s.\0A\00", align 1
@RARCH_MOVIE_RECORD = common dso_local global i32 0, align 4
@MSG_FAILED_TO_START_MOVIE_RECORD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"%s \22%s\22.\00", align 1
@MSG_STARTING_MOVIE_RECORD_TO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"%s \22%s\22.\0A\00", align 1
@configuration_settings = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @bsv_movie_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsv_movie_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [8192 x i8], align 16
  %4 = alloca %struct.TYPE_7__*, align 8
  store i32 0, i32* %2, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bsv_movie_state, i32 0, i32 3), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %0
  %8 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bsv_movie_state, i32 0, i32 0), align 8
  %9 = load i32, i32* @RARCH_MOVIE_PLAYBACK, align 4
  %10 = call i32 @bsv_movie_init_handle(i8* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load i32, i32* @MSG_FAILED_TO_LOAD_MOVIE_FILE, align 4
  %14 = call i8* @msg_hash_to_str(i32 %13)
  %15 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bsv_movie_state, i32 0, i32 0), align 8
  %16 = call i32 (i8*, i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %15)
  store i32 0, i32* %1, align 4
  br label %70

17:                                               ; preds = %7
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bsv_movie_state, i32 0, i32 1), align 8
  %18 = load i32, i32* @MSG_STARTING_MOVIE_PLAYBACK, align 4
  %19 = call i8* @msg_hash_to_str(i32 %18)
  %20 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %21 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %22 = call i32 @runloop_msg_queue_push(i8* %19, i32 2, i32 180, i32 0, i32* null, i32 %20, i32 %21)
  %23 = load i32, i32* @MSG_STARTING_MOVIE_PLAYBACK, align 4
  %24 = call i8* @msg_hash_to_str(i32 %23)
  %25 = call i32 (i8*, i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  store i32 1, i32* %2, align 4
  br label %58

26:                                               ; preds = %0
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bsv_movie_state, i32 0, i32 2), align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %26
  %30 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bsv_movie_state, i32 0, i32 0), align 8
  %31 = load i32, i32* @RARCH_MOVIE_RECORD, align 4
  %32 = call i32 @bsv_movie_init_handle(i8* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @MSG_FAILED_TO_START_MOVIE_RECORD, align 4
  %36 = call i8* @msg_hash_to_str(i32 %35)
  %37 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %38 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %39 = call i32 @runloop_msg_queue_push(i8* %36, i32 1, i32 180, i32 1, i32* null, i32 %37, i32 %38)
  %40 = load i32, i32* @MSG_FAILED_TO_START_MOVIE_RECORD, align 4
  %41 = call i8* @msg_hash_to_str(i32 %40)
  %42 = call i32 (i8*, i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  store i32 0, i32* %1, align 4
  br label %70

43:                                               ; preds = %29
  %44 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %45 = load i32, i32* @MSG_STARTING_MOVIE_RECORD_TO, align 4
  %46 = call i8* @msg_hash_to_str(i32 %45)
  %47 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bsv_movie_state, i32 0, i32 0), align 8
  %48 = call i32 @snprintf(i8* %44, i32 8192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %46, i8* %47)
  %49 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %50 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %51 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %52 = call i32 @runloop_msg_queue_push(i8* %49, i32 1, i32 180, i32 1, i32* null, i32 %50, i32 %51)
  %53 = load i32, i32* @MSG_STARTING_MOVIE_RECORD_TO, align 4
  %54 = call i8* @msg_hash_to_str(i32 %53)
  %55 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bsv_movie_state, i32 0, i32 0), align 8
  %56 = call i32 (i8*, i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %54, i8* %55)
  store i32 1, i32* %2, align 4
  br label %57

57:                                               ; preds = %43, %26
  br label %58

58:                                               ; preds = %57, %17
  %59 = load i32, i32* %2, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** @configuration_settings, align 8
  store %struct.TYPE_7__* %62, %struct.TYPE_7__** %4, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @configuration_set_uint(%struct.TYPE_7__* %63, i32 %67, i32 1)
  br label %69

69:                                               ; preds = %61, %58
  store i32 1, i32* %1, align 4
  br label %70

70:                                               ; preds = %69, %34, %12
  %71 = load i32, i32* %1, align 4
  ret i32 %71
}

declare dso_local i32 @bsv_movie_init_handle(i8*, i32) #1

declare dso_local i32 @RARCH_ERR(i8*, i8*, ...) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @runloop_msg_queue_push(i8*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @configuration_set_uint(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
