; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_spdif.c_spdif_send_event_format_changed.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_spdif.c_spdif_send_event_format_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_32__ = type { %struct.TYPE_31__*, i32, i32, i32, %struct.TYPE_21__* }
%struct.TYPE_31__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_33__ = type { i32, i32, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }

@MMAL_EVENT_FORMAT_CHANGED = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"unable to get an event buffer\00", align 1
@MMAL_ENCODING_PCM_SIGNED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_22__*, %struct.TYPE_32__*, %struct.TYPE_21__*)* @spdif_send_event_format_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @spdif_send_event_format_changed(%struct.TYPE_22__* %0, %struct.TYPE_32__* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %6, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %7, align 8
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  store %struct.TYPE_23__* %15, %struct.TYPE_23__** %8, align 8
  store i32* null, i32** %9, align 8
  %16 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %17 = load i32, i32* @MMAL_EVENT_FORMAT_CHANGED, align 4
  %18 = call i64 @mmal_port_event_get(%struct.TYPE_32__* %16, i32** %9, i32 %17)
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MMAL_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %4, align 8
  br label %99

31:                                               ; preds = %3
  %32 = load i32*, i32** %9, align 8
  %33 = call %struct.TYPE_33__* @mmal_event_format_changed_get(i32* %32)
  store %struct.TYPE_33__* %33, %struct.TYPE_33__** %10, align 8
  %34 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MMAL_ENCODING_PCM_SIGNED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %31
  %42 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %43, align 8
  %45 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %46, align 8
  %48 = call i32 @mmal_format_copy(%struct.TYPE_24__* %44, %struct.TYPE_21__* %47)
  br label %55

49:                                               ; preds = %31
  %50 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %51, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %54 = call i32 @mmal_format_copy(%struct.TYPE_24__* %52, %struct.TYPE_21__* %53)
  br label %55

55:                                               ; preds = %49, %41
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 0
  store i32 %61, i32* %68, align 4
  %69 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_31__*, %struct.TYPE_31__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_30__*, %struct.TYPE_30__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %93, i32 0, i32 0
  store i32 1, i32* %94, align 4
  %95 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = call i32 @mmal_port_event_send(%struct.TYPE_32__* %95, i32* %96)
  %98 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %98, i64* %4, align 8
  br label %99

99:                                               ; preds = %55, %26
  %100 = load i64, i64* %4, align 8
  ret i64 %100
}

declare dso_local i64 @mmal_port_event_get(%struct.TYPE_32__*, i32**, i32) #1

declare dso_local i32 @LOG_ERROR(i8*) #1

declare dso_local %struct.TYPE_33__* @mmal_event_format_changed_get(i32*) #1

declare dso_local i32 @mmal_format_copy(%struct.TYPE_24__*, %struct.TYPE_21__*) #1

declare dso_local i32 @mmal_port_event_send(%struct.TYPE_32__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
