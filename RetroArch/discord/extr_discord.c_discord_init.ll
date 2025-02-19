; ModuleID = '/home/carl/AnghaBench/RetroArch/discord/extr_discord.c_discord_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/discord/extr_discord.c_discord_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"[discord] initializing ..\0A\00", align 1
@start_time = common dso_local global i32 0, align 4
@handle_discord_ready = common dso_local global i32 0, align 4
@handle_discord_disconnected = common dso_local global i32 0, align 4
@handle_discord_error = common dso_local global i32 0, align 4
@handle_discord_join = common dso_local global i32 0, align 4
@handle_discord_spectate = common dso_local global i32 0, align 4
@handle_discord_join_request = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"sh -c %s\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"[discord] registering startup command: %s\0A\00", align 1
@discord_ready = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @discord_init() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__, align 4
  %6 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %1, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %2, align 8
  %10 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %11 = zext i32 %10 to i64
  %12 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %3, align 8
  %13 = call %struct.TYPE_8__* (...) @config_get_ptr()
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %4, align 8
  %14 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @time(i32 0)
  store i32 %15, i32* @start_time, align 4
  %16 = call i32 @memset(%struct.TYPE_9__* %5, i32 0, i32 24)
  %17 = load i32, i32* @handle_discord_ready, align 4
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 5
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @handle_discord_disconnected, align 4
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 4
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @handle_discord_error, align 4
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @handle_discord_join, align 4
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @handle_discord_spectate, align 4
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @handle_discord_join_request, align 4
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @Discord_Initialize(i32 %32, %struct.TYPE_9__* %5, i32 0, i32* null)
  %34 = trunc i64 %11 to i32
  %35 = call i8* (...) @get_retroarch_launch_arguments()
  %36 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %12, i32 %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @Discord_Register(i32 %41, i8* %12)
  store i32 1, i32* @discord_ready, align 4
  %43 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %43)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_8__* @config_get_ptr(...) #2

declare dso_local i32 @RARCH_LOG(i8*, ...) #2

declare dso_local i32 @time(i32) #2

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @Discord_Initialize(i32, %struct.TYPE_9__*, i32, i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i8* @get_retroarch_launch_arguments(...) #2

declare dso_local i32 @Discord_Register(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
