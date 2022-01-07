; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalplay/extr_playback.c_mmalplay_setup_video_scheduler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalplay/extr_playback.c_mmalplay_setup_video_scheduler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_10__**, %struct.TYPE_10__**, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@MMAL_EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"%s doesn't have input/output/clock ports\00", align 1
@MMAL_PARAMETER_ZERO_COPY = common dso_local global i32 0, align 4
@MMAL_TRUE = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@MMAL_ENOSYS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to set zero copy on %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, %struct.TYPE_8__*)* @mmalplay_setup_video_scheduler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmalplay_setup_video_scheduler(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %6 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16, %11, %2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %92

26:                                               ; preds = %16
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %83, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %35, i64 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = load i32, i32* @MMAL_PARAMETER_ZERO_COPY, align 4
  %39 = load i32, i32* @MMAL_TRUE, align 4
  %40 = call i64 @mmal_port_parameter_set_boolean(%struct.TYPE_10__* %37, i32 %38, i32 %39)
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @MMAL_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %32
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @MMAL_ENOSYS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %51, i64 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %92

57:                                               ; preds = %44, %32
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %60, i64 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = load i32, i32* @MMAL_PARAMETER_ZERO_COPY, align 4
  %64 = load i32, i32* @MMAL_TRUE, align 4
  %65 = call i64 @mmal_port_parameter_set_boolean(%struct.TYPE_10__* %62, i32 %63, i32 %64)
  store i64 %65, i64* %5, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* @MMAL_SUCCESS, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %57
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* @MMAL_ENOSYS, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %76, i64 0
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %92

82:                                               ; preds = %69, %57
  br label %83

83:                                               ; preds = %82, %26
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %91, i64* %5, align 8
  br label %92

92:                                               ; preds = %83, %73, %48, %21
  %93 = load i64, i64* %5, align 8
  ret i64 %93
}

declare dso_local i32 @LOG_ERROR(i8*, i32) #1

declare dso_local i64 @mmal_port_parameter_set_boolean(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
