; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_hb_init.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_hb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, i8*, i8*, %struct.TYPE_8__, i8*, i8*, %struct.TYPE_7__, i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i8* }

@hb_instance_counter = common dso_local global i32 0, align 4
@HB_STATE_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"hb_init: starting libhb thread\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"libhb\00", align 1
@thread_func = common dso_local global i32 0, align 4
@HB_NORMAL_PRIORITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @hb_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i8* @calloc(i32 80, i32 1)
  %5 = bitcast i8* %4 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @hb_log_level_set(%struct.TYPE_9__* %6, i32 %7)
  %9 = load i32, i32* @hb_instance_counter, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @hb_instance_counter, align 4
  %11 = sext i32 %9 to i64
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 10
  store i64 %11, i64* %13, align 8
  %14 = call i32 (...) @hb_system_sleep_opaque_init()
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 9
  store i32 %14, i32* %16, align 8
  %17 = call i8* (...) @hb_list_init()
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i8* %17, i8** %20, align 8
  %21 = call i8* (...) @hb_list_init()
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 7
  store i8* %21, i8** %23, align 8
  %24 = call i8* (...) @hb_lock_init()
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 6
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @HB_STATE_IDLE, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = call i8* (...) @hb_lock_init()
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i32 -1, i32* %35, align 8
  %36 = call i8* @calloc(i32 4, i32 1)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = call i32 @hb_log(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @thread_func, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = load i32, i32* @HB_NORMAL_PRIORITY, align 4
  %45 = call i32 @hb_thread_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %42, %struct.TYPE_9__* %43, i32 %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %48
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @hb_log_level_set(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @hb_system_sleep_opaque_init(...) #1

declare dso_local i8* @hb_list_init(...) #1

declare dso_local i8* @hb_lock_init(...) #1

declare dso_local i32 @hb_log(i8*) #1

declare dso_local i32 @hb_thread_init(i8*, i32, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
