; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_command_event_main_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_command_event_main_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i64 }

@g_extern = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@configuration_settings = common dso_local global %struct.TYPE_13__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@video_driver_frame_time_count = common dso_local global i32 0, align 4
@MSG_CORE_DOES_NOT_SUPPORT_SAVESTATES = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@RARCH_NETPLAY_CTL_LOAD_SAVESTATE = common dso_local global i32 0, align 4
@rcheevos_hardcore_active = common dso_local global i32 0, align 4
@rcheevos_state_loaded_flag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @command_event_main_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_event_main_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__, align 8
  %4 = alloca [128 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  store i32 %0, i32* %2, align 4
  store i64 16384, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @malloc(i64 %15)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %6, align 8
  store %struct.TYPE_15__* @g_extern, %struct.TYPE_15__** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %18, align 16
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %20, align 1
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %22 = icmp ne %struct.TYPE_15__* %21, null
  br i1 %22, label %23, label %57

23:                                               ; preds = %1
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** @configuration_settings, align 8
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %10, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %12, align 8
  %33 = load i32, i32* %11, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %23
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @snprintf(i8* %36, i64 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %38, i32 %39)
  br label %56

41:                                               ; preds = %23
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @fill_pathname_join_delim(i8* %45, i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8 signext 46, i64 %47)
  br label %55

49:                                               ; preds = %41
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load i64, i64* %5, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @strlcpy(i8* %50, i8* %51, i32 %53)
  br label %55

55:                                               ; preds = %49, %44
  br label %56

56:                                               ; preds = %55, %35
  br label %57

57:                                               ; preds = %56, %1
  %58 = call i32 @core_serialize_size(%struct.TYPE_14__* %3)
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %96

62:                                               ; preds = %57
  %63 = load i32, i32* %2, align 4
  switch i32 %63, label %95 [
    i32 130, label %64
    i32 131, label %75
    i32 129, label %89
    i32 128, label %92
  ]

64:                                               ; preds = %62
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @content_save_state(i8* %65, i32 1, i32 0)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** @configuration_settings, align 8
  store %struct.TYPE_13__* %67, %struct.TYPE_13__** %13, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  store i32 0, i32* @video_driver_frame_time_count, align 4
  br label %74

74:                                               ; preds = %73, %64
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %95

75:                                               ; preds = %62
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @content_load_state(i8* %76, i32 0, i32 0)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  store i32 1, i32* %8, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** @configuration_settings, align 8
  store %struct.TYPE_13__* %80, %struct.TYPE_13__** %14, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  store i32 0, i32* @video_driver_frame_time_count, align 4
  br label %87

87:                                               ; preds = %86, %79
  br label %88

88:                                               ; preds = %87, %75
  store i32 0, i32* %9, align 4
  br label %95

89:                                               ; preds = %62
  %90 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %91 = call i32 @command_event_undo_load_state(i8* %90, i32 128)
  store i32 1, i32* %8, align 4
  br label %95

92:                                               ; preds = %62
  %93 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %94 = call i32 @command_event_undo_save_state(i8* %93, i32 128)
  store i32 1, i32* %8, align 4
  br label %95

95:                                               ; preds = %62, %92, %89, %88, %74
  br label %101

96:                                               ; preds = %57
  %97 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %98 = load i32, i32* @MSG_CORE_DOES_NOT_SUPPORT_SAVESTATES, align 4
  %99 = call i8* @msg_hash_to_str(i32 %98)
  %100 = call i32 @strlcpy(i8* %97, i8* %99, i32 128)
  br label %101

101:                                              ; preds = %96, %95
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %106 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %107 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %108 = call i32 @runloop_msg_queue_push(i8* %105, i32 2, i32 180, i32 1, i32* null, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %101
  %110 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %111 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %110)
  %112 = load i8*, i8** %6, align 8
  %113 = call i32 @free(i8* %112)
  %114 = load i32, i32* %8, align 4
  ret i32 %114
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i32) #1

declare dso_local i32 @fill_pathname_join_delim(i8*, i8*, i8*, i8 signext, i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @core_serialize_size(%struct.TYPE_14__*) #1

declare dso_local i32 @content_save_state(i8*, i32, i32) #1

declare dso_local i32 @content_load_state(i8*, i32, i32) #1

declare dso_local i32 @command_event_undo_load_state(i8*, i32) #1

declare dso_local i32 @command_event_undo_save_state(i8*, i32) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @runloop_msg_queue_push(i8*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
