; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_scheduler.c_scheduler_event_process.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_scheduler.c_scheduler_event_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32 }

@MMAL_EINVAL = common dso_local global i64 0, align 8
@MMAL_EVENT_FORMAT_CHANGED = common dso_local global i64 0, align 8
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"format commit failed on port %s (%i)\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"forwarding unknown event %4.4s\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"unable to forward event %4.4s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, %struct.TYPE_16__*)* @scheduler_event_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scheduler_event_process(%struct.TYPE_14__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %7 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %7, i64* %5, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MMAL_EVENT_FORMAT_CHANGED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %47

13:                                               ; preds = %2
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = call %struct.TYPE_15__* @mmal_event_format_changed_get(%struct.TYPE_16__* %14)
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %6, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %17 = icmp ne %struct.TYPE_15__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %74

19:                                               ; preds = %13
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @mmal_format_full_copy(i32 %22, i32 %25)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @MMAL_SUCCESS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %32 = call i64 @mmal_port_format_commit(%struct.TYPE_14__* %31)
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %30, %19
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @MMAL_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = load i64, i64* %5, align 8
  %44 = call i32 (i8*, i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %42, i64 %43)
  br label %74

45:                                               ; preds = %33
  %46 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %46, i64* %5, align 8
  br label %73

47:                                               ; preds = %2
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = bitcast i64* %49 to i8*
  %51 = call i32 @LOG_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @mmal_event_forward(%struct.TYPE_16__* %52, i32 %62)
  store i64 %63, i64* %5, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* @MMAL_SUCCESS, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %47
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = bitcast i64* %69 to i8*
  %71 = call i32 (i8*, i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %70)
  br label %74

72:                                               ; preds = %47
  br label %73

73:                                               ; preds = %72, %45
  br label %74

74:                                               ; preds = %73, %67, %37, %18
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %79 = call i32 @mmal_port_buffer_header_callback(%struct.TYPE_14__* %77, %struct.TYPE_16__* %78)
  %80 = load i64, i64* %5, align 8
  ret i64 %80
}

declare dso_local %struct.TYPE_15__* @mmal_event_format_changed_get(%struct.TYPE_16__*) #1

declare dso_local i64 @mmal_format_full_copy(i32, i32) #1

declare dso_local i64 @mmal_port_format_commit(%struct.TYPE_14__*) #1

declare dso_local i32 @LOG_ERROR(i8*, i8*, ...) #1

declare dso_local i32 @LOG_DEBUG(i8*, i8*) #1

declare dso_local i64 @mmal_event_forward(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @mmal_port_buffer_header_callback(%struct.TYPE_14__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
