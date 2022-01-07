; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_command_event_save_auto_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_command_event_save_auto_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@configuration_settings = common dso_local global %struct.TYPE_9__* null, align 8
@g_extern = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@current_core_type = common dso_local global i64 0, align 8
@CORE_TYPE_DUMMY = common dso_local global i64 0, align 8
@RARCH_PATH_BASENAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c".auto\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%s \22%s\22 %s.\0A\00", align 1
@MSG_AUTO_SAVE_STATE_TO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@rcheevos_hardcore_active = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @command_event_save_auto_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_event_save_auto_state() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store i32 0, i32* %2, align 4
  store i8* null, i8** %3, align 8
  %7 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 1
  store i64 %9, i64* %4, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** @configuration_settings, align 8
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_10__* @g_extern, %struct.TYPE_10__** %6, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %12 = icmp ne %struct.TYPE_10__* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = icmp ne %struct.TYPE_9__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16, %13, %0
  store i32 0, i32* %1, align 4
  br label %58

23:                                               ; preds = %16
  %24 = load i64, i64* @current_core_type, align 8
  %25 = load i64, i64* @CORE_TYPE_DUMMY, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %1, align 4
  br label %58

28:                                               ; preds = %23
  %29 = load i32, i32* @RARCH_PATH_BASENAME, align 4
  %30 = call i32 @path_get(i32 %29)
  %31 = call i32 @path_basename(i32 %30)
  %32 = call i64 @string_is_empty(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %1, align 4
  br label %58

35:                                               ; preds = %28
  %36 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %37 = call i64 @calloc(i32 %36, i32 1)
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %3, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @fill_pathname_noext(i8* %39, i32 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @content_save_state(i8* %46, i32 1, i32 1)
  store i32 %47, i32* %2, align 4
  %48 = load i32, i32* @MSG_AUTO_SAVE_STATE_TO, align 4
  %49 = call i32 @msg_hash_to_str(i32 %48)
  %50 = load i8*, i8** %3, align 8
  %51 = load i32, i32* %2, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %55 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %49, i8* %50, i8* %54)
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 @free(i8* %56)
  store i32 1, i32* %1, align 4
  br label %58

58:                                               ; preds = %35, %34, %27, %22
  %59 = load i32, i32* %1, align 4
  ret i32 %59
}

declare dso_local i64 @string_is_empty(i32) #1

declare dso_local i32 @path_basename(i32) #1

declare dso_local i32 @path_get(i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @fill_pathname_noext(i8*, i32, i8*, i64) #1

declare dso_local i32 @content_save_state(i8*, i32, i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, i8*, i8*) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
