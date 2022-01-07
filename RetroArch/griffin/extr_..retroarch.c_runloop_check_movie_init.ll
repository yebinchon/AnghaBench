; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_runloop_check_movie_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_runloop_check_movie_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i8* }

@configuration_settings = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s%d.bsv\00", align 1
@bsv_movie_state = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c".bsv\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s \22%s\22.\00", align 1
@MSG_STARTING_MOVIE_RECORD_TO = common dso_local global i32 0, align 4
@RARCH_MOVIE_RECORD = common dso_local global i32 0, align 4
@bsv_movie_state_handle = common dso_local global i32 0, align 4
@MSG_FAILED_TO_START_MOVIE_RECORD = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%s \22%s\22.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @runloop_check_movie_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @runloop_check_movie_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [16384 x i8], align 16
  %3 = alloca [8192 x i8], align 16
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** @configuration_settings, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %4, align 8
  %6 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %6, align 16
  %7 = getelementptr inbounds [16384 x i8], [16384 x i8]* %2, i64 0, i64 0
  store i8 0, i8* %7, align 16
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @configuration_set_uint(%struct.TYPE_9__* %8, i32 %12, i32 1)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %0
  %20 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %21 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bsv_movie_state, i32 0, i32 0), align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @snprintf(i8* %20, i32 8192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %26)
  br label %34

28:                                               ; preds = %0
  %29 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %30 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bsv_movie_state, i32 0, i32 0), align 8
  %31 = call i32 @strlcpy(i8* %29, i8* %30, i32 8192)
  %32 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %33 = call i32 @strlcat(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 8192)
  br label %34

34:                                               ; preds = %28, %19
  %35 = getelementptr inbounds [16384 x i8], [16384 x i8]* %2, i64 0, i64 0
  %36 = load i32, i32* @MSG_STARTING_MOVIE_RECORD_TO, align 4
  %37 = call i8* @msg_hash_to_str(i32 %36)
  %38 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %39 = call i32 @snprintf(i8* %35, i32 16384, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %37, i8* %38)
  %40 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %41 = load i32, i32* @RARCH_MOVIE_RECORD, align 4
  %42 = call i32 @bsv_movie_init_handle(i8* %40, i32 %41)
  %43 = load i32, i32* @bsv_movie_state_handle, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* @MSG_FAILED_TO_START_MOVIE_RECORD, align 4
  %47 = call i8* @msg_hash_to_str(i32 %46)
  %48 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %49 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %50 = call i32 @runloop_msg_queue_push(i8* %47, i32 2, i32 180, i32 1, i32* null, i32 %48, i32 %49)
  %51 = load i32, i32* @MSG_FAILED_TO_START_MOVIE_RECORD, align 4
  %52 = call i8* @msg_hash_to_str(i32 %51)
  %53 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  store i32 0, i32* %1, align 4
  br label %63

54:                                               ; preds = %34
  %55 = getelementptr inbounds [16384 x i8], [16384 x i8]* %2, i64 0, i64 0
  %56 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %57 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %58 = call i32 @runloop_msg_queue_push(i8* %55, i32 2, i32 180, i32 1, i32* null, i32 %56, i32 %57)
  %59 = load i32, i32* @MSG_STARTING_MOVIE_RECORD_TO, align 4
  %60 = call i8* @msg_hash_to_str(i32 %59)
  %61 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %62 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %60, i8* %61)
  store i32 1, i32* %1, align 4
  br label %63

63:                                               ; preds = %54, %45
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

declare dso_local i32 @configuration_set_uint(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @bsv_movie_init_handle(i8*, i32) #1

declare dso_local i32 @runloop_msg_queue_push(i8*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @RARCH_ERR(i8*, i8*) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
