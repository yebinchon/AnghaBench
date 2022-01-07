; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_command_event_load_auto_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_command_event_load_auto_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@configuration_settings = common dso_local global %struct.TYPE_9__* null, align 8
@g_extern = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c".auto\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: %s\0A%s \22%s\22 %s.\0A\00", align 1
@MSG_FOUND_AUTO_SAVESTATE_IN = common dso_local global i32 0, align 4
@MSG_AUTOLOADING_SAVESTATE_FROM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@RARCH_NETPLAY_CTL_IS_ENABLED = common dso_local global i32 0, align 4
@rcheevos_hardcore_active = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @command_event_load_auto_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @command_event_load_auto_state() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store i32 0, i32* %1, align 4
  store i8* null, i8** %2, align 8
  %6 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 1
  store i64 %8, i64* %3, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** @configuration_settings, align 8
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* @g_extern, %struct.TYPE_10__** %5, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = icmp ne %struct.TYPE_10__* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12, %0
  br label %52

19:                                               ; preds = %12
  %20 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %21 = call i64 @calloc(i32 %20, i32 1)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %2, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @fill_pathname_noext(i8* %23, i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @path_is_valid(i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %19
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 @free(i8* %34)
  br label %52

36:                                               ; preds = %19
  %37 = load i8*, i8** %2, align 8
  %38 = call i32 @content_load_state(i8* %37, i32 0, i32 1)
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* @MSG_FOUND_AUTO_SAVESTATE_IN, align 4
  %40 = call i32 @msg_hash_to_str(i32 %39)
  %41 = load i8*, i8** %2, align 8
  %42 = load i32, i32* @MSG_AUTOLOADING_SAVESTATE_FROM, align 4
  %43 = call i32 @msg_hash_to_str(i32 %42)
  %44 = load i8*, i8** %2, align 8
  %45 = load i32, i32* %1, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %49 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %40, i8* %41, i32 %43, i8* %44, i8* %48)
  %50 = load i8*, i8** %2, align 8
  %51 = call i32 @free(i8* %50)
  br label %52

52:                                               ; preds = %36, %33, %18
  ret void
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @fill_pathname_noext(i8*, i32, i8*, i64) #1

declare dso_local i32 @path_is_valid(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @content_load_state(i8*, i32, i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
