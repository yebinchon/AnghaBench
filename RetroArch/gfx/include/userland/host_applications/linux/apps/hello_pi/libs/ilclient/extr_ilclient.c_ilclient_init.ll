; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/ilclient/extr_ilclient.c_ilclient_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/ilclient/extr_ilclient.c_ilclient_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_8__* }

@.str = private unnamed_addr constant [9 x i8] c"ilclient\00", align 1
@VCOS_LOG_CATEGORY = common dso_local global i32 0, align 4
@VCOS_LOG_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"il:event\00", align 1
@VCOS_SUCCESS = common dso_local global i32 0, align 4
@NUM_EVENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @ilclient_init() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = call %struct.TYPE_9__* @vcos_malloc(i32 24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = icmp ne %struct.TYPE_9__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %1, align 8
  br label %65

8:                                                ; preds = %0
  %9 = load i32, i32* @VCOS_LOG_CATEGORY, align 4
  %10 = load i32, i32* @VCOS_LOG_WARN, align 4
  %11 = call i32 @vcos_log_set_level(i32 %9, i32 %10)
  %12 = load i32, i32* @VCOS_LOG_CATEGORY, align 4
  %13 = call i32 @vcos_log_register(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = call i32 @memset(%struct.TYPE_9__* %14, i32 0, i32 24)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %18 = call i32 @vcos_semaphore_create(i32* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @VCOS_SUCCESS, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @vc_assert(i32 %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %25 = call i32 @ilclient_lock_events(%struct.TYPE_9__* %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %27, align 8
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %58, %8
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @NUM_EVENTS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %28
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store i32 -1, i32* %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %49, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i64 %54
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %57, align 8
  br label %58

58:                                               ; preds = %32
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %28

61:                                               ; preds = %28
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %63 = call i32 @ilclient_unlock_events(%struct.TYPE_9__* %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %1, align 8
  br label %65

65:                                               ; preds = %61, %7
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  ret %struct.TYPE_9__* %66
}

declare dso_local %struct.TYPE_9__* @vcos_malloc(i32, i8*) #1

declare dso_local i32 @vcos_log_set_level(i32, i32) #1

declare dso_local i32 @vcos_log_register(i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @vcos_semaphore_create(i32*, i8*, i32) #1

declare dso_local i32 @vc_assert(i32) #1

declare dso_local i32 @ilclient_lock_events(%struct.TYPE_9__*) #1

declare dso_local i32 @ilclient_unlock_events(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
