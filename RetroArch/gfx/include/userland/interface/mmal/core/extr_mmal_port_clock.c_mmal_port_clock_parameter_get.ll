; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port_clock.c_mmal_port_clock_parameter_get.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port_clock.c_mmal_port_clock_parameter_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }

@MMAL_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unsupported clock parameter 0x%x\00", align 1
@MMAL_ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_19__*)* @mmal_port_clock_parameter_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmal_port_clock_parameter_get(%struct.TYPE_15__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %6, align 8
  %21 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %95 [
    i32 132, label %25
    i32 135, label %33
    i32 130, label %42
    i32 129, label %51
    i32 128, label %60
    i32 134, label %69
    i32 131, label %78
    i32 133, label %87
  ]

25:                                               ; preds = %2
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %27 = bitcast %struct.TYPE_19__* %26 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %8, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %101

33:                                               ; preds = %2
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %35 = bitcast %struct.TYPE_19__* %34 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %9, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mmal_clock_is_active(i32 %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %101

42:                                               ; preds = %2
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %44 = bitcast %struct.TYPE_19__* %43 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %44, %struct.TYPE_17__** %10, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mmal_clock_scale_get(i32 %47)
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %101

51:                                               ; preds = %2
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %53 = bitcast %struct.TYPE_19__* %52 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %53, %struct.TYPE_18__** %11, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mmal_clock_media_time_get(i32 %56)
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %101

60:                                               ; preds = %2
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %62 = bitcast %struct.TYPE_19__* %61 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %62, %struct.TYPE_20__** %12, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = call i32 @mmal_clock_update_threshold_get(i32 %65, i32* %67)
  store i32 %68, i32* %7, align 4
  br label %101

69:                                               ; preds = %2
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %71 = bitcast %struct.TYPE_19__* %70 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %71, %struct.TYPE_22__** %13, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = call i32 @mmal_clock_discont_threshold_get(i32 %74, i32* %76)
  store i32 %77, i32* %7, align 4
  br label %101

78:                                               ; preds = %2
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %80 = bitcast %struct.TYPE_19__* %79 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %80, %struct.TYPE_21__** %14, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 0
  %86 = call i32 @mmal_clock_request_threshold_get(i32 %83, i32* %85)
  store i32 %86, i32* %7, align 4
  br label %101

87:                                               ; preds = %2
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %89 = bitcast %struct.TYPE_19__* %88 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %89, %struct.TYPE_13__** %15, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  br label %101

95:                                               ; preds = %2
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @MMAL_ENOSYS, align 4
  store i32 %100, i32* %3, align 4
  br label %103

101:                                              ; preds = %87, %78, %69, %60, %51, %42, %33, %25
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %95
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @mmal_clock_is_active(i32) #1

declare dso_local i32 @mmal_clock_scale_get(i32) #1

declare dso_local i32 @mmal_clock_media_time_get(i32) #1

declare dso_local i32 @mmal_clock_update_threshold_get(i32, i32*) #1

declare dso_local i32 @mmal_clock_discont_threshold_get(i32, i32*) #1

declare dso_local i32 @mmal_clock_request_threshold_get(i32, i32*) #1

declare dso_local i32 @LOG_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
