; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiTex.c_preview_worker.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiTex.c_preview_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, i32, %struct.TYPE_10__*, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s: port %p\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to send buffer to %s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Preview error. Exiting.\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Exiting preview worker\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @preview_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @preview_worker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %3, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %4, align 8
  %13 = load i32, i32* @VCOS_FUNCTION, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = call i32 (i8*, ...) @vcos_log_trace(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %13, %struct.TYPE_13__* %14)
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %18, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = call i32 %19(%struct.TYPE_12__* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %73

25:                                               ; preds = %1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %28, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = call i32 %29(%struct.TYPE_12__* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %73

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %71, %35
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %72

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %62, %41
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @mmal_queue_get(i32 %47)
  store i32* %48, i32** %5, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %42
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i64 @mmal_port_send_buffer(%struct.TYPE_13__* %51, i32* %52)
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @MMAL_SUCCESS, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %50
  br label %42

63:                                               ; preds = %42
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %65 = call i64 @preview_process_returned_bufs(%struct.TYPE_12__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %67, %63
  br label %36

72:                                               ; preds = %36
  br label %73

73:                                               ; preds = %72, %34, %24
  br label %74

74:                                               ; preds = %80, %73
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32* @mmal_queue_get(i32 %77)
  store i32* %78, i32** %5, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @mmal_buffer_header_release(i32* %81)
  br label %74

83:                                               ; preds = %74
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  %87 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %86, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %89 = call i32 %87(%struct.TYPE_12__* %88)
  %90 = call i32 (i8*, ...) @vcos_log_trace(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  ret i8* null
}

declare dso_local i32 @vcos_log_trace(i8*, ...) #1

declare dso_local i32* @mmal_queue_get(i32) #1

declare dso_local i64 @mmal_port_send_buffer(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @vcos_log_error(i8*, ...) #1

declare dso_local i64 @preview_process_returned_bufs(%struct.TYPE_12__*) #1

declare dso_local i32 @mmal_buffer_header_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
