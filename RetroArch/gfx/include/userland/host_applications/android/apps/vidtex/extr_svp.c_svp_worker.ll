; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/android/apps/vidtex/extr_svp.c_svp_worker.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/android/apps/vidtex/extr_svp.c_svp_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_10__, %struct.TYPE_11__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 (i32, i64)* }
%struct.TYPE_11__ = type { i32 }

@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Failed to send buffer to %s\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Worker thread exiting: stop=0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @svp_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @svp_worker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %3, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %4, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %5, align 8
  br label %16

16:                                               ; preds = %42, %1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = call i64 @svp_get_stop(%struct.TYPE_9__* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %41, %20
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @mmal_queue_get(i32 %26)
  store i32* %27, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %21
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @mmal_port_send_buffer(%struct.TYPE_11__* %30, i32* %31)
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @MMAL_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %36, %29
  br label %21

42:                                               ; preds = %21
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = call i32 @svp_process_returned_bufs(%struct.TYPE_9__* %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = call i32 @vcos_semaphore_wait(i32* %46)
  br label %16

48:                                               ; preds = %16
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = call i32 @svp_process_returned_bufs(%struct.TYPE_9__* %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = call i64 @svp_get_stop(%struct.TYPE_9__* %51)
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i32 (i32, i64)*, i32 (i32, i64)** %57, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 %58(i32 %61, i64 %62)
  ret i8* null
}

declare dso_local i64 @svp_get_stop(%struct.TYPE_9__*) #1

declare dso_local i32* @mmal_queue_get(i32) #1

declare dso_local i64 @mmal_port_send_buffer(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @LOG_ERROR(i8*, i32) #1

declare dso_local i32 @svp_process_returned_bufs(%struct.TYPE_9__*) #1

declare dso_local i32 @vcos_semaphore_wait(i32*) #1

declare dso_local i32 @LOG_TRACE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
