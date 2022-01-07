; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_content.c_firmware_update_status.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_content.c_firmware_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_9__ = type { i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@RARCH_PATH_CONTENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Updating firmware status for: %s on %s\0A\00", align 1
@RARCH_CTL_UNSET_MISSING_BIOS = common dso_local global i32 0, align 4
@RARCH_CTL_SET_MISSING_BIOS = common dso_local global i32 0, align 4
@MSG_FIRMWARE = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Load content blocked. Reason: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @firmware_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @firmware_update_status(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 0, i32* %5, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  %9 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 1
  store i64 %11, i64* %7, align 8
  store i8* null, i8** %8, align 8
  %12 = call i32 @core_info_get_current_core(%struct.TYPE_9__** %6)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %84

16:                                               ; preds = %1
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @malloc(i64 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %8, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  store i32 %22, i32* %23, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @string_is_empty(i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %16
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  br label %46

35:                                               ; preds = %16
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* @RARCH_PATH_CONTENT, align 4
  %38 = call i32 @path_get(i32 %37)
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @strlcpy(i8* %36, i32 %38, i64 %39)
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @path_basedir_wrapper(i8* %41)
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %35, %29
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i8*, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %49, i8* %52)
  %54 = load i32, i32* @RARCH_CTL_UNSET_MISSING_BIOS, align 4
  %55 = call i32 @rarch_ctl(i32 %54, i32* null)
  %56 = call i32 @core_info_list_update_missing_firmware(%struct.TYPE_10__* %4, i32* %5)
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @free(i8* %57)
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %46
  %62 = load i32, i32* @RARCH_CTL_SET_MISSING_BIOS, align 4
  %63 = call i32 @rarch_ctl(i32 %62, i32* null)
  br label %64

64:                                               ; preds = %61, %46
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %64
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load i32, i32* @MSG_FIRMWARE, align 4
  %76 = call i32 @msg_hash_to_str(i32 %75)
  %77 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %78 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %79 = call i32 @runloop_msg_queue_push(i32 %76, i32 100, i32 500, i32 1, i32* null, i32 %77, i32 %78)
  %80 = load i32, i32* @MSG_FIRMWARE, align 4
  %81 = call i32 @msg_hash_to_str(i32 %80)
  %82 = call i32 (i8*, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  store i32 1, i32* %2, align 4
  br label %84

83:                                               ; preds = %69, %64
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %74, %15
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @core_info_get_current_core(%struct.TYPE_9__**) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @strlcpy(i8*, i32, i64) #1

declare dso_local i32 @path_get(i32) #1

declare dso_local i32 @path_basedir_wrapper(i8*) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, ...) #1

declare dso_local i32 @rarch_ctl(i32, i32*) #1

declare dso_local i32 @core_info_list_update_missing_firmware(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @runloop_msg_queue_push(i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
