; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_container_reader.c_container_port_enable.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_container_reader.c_container_port_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_17__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_19__*, i64 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { i32 }

@MMAL_EINVAL = common dso_local global i32 0, align 4
@VC_CONTAINER_CONTROL_TRACK_ADD = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"error adding track %4.4s (%i)\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"error 1 adding track %4.4s (%i/%i)\00", align 1
@MMAL_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32)* @container_port_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @container_port_enable(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %6, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %7, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %8, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @MMAL_PARAM_UNUSED(i32 %23)
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %28 = icmp ne %struct.TYPE_19__* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @MMAL_EINVAL, align 4
  store i32 %30, i32* %3, align 4
  br label %107

31:                                               ; preds = %2
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %68

36:                                               ; preds = %31
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %47 = load i32, i32* @VC_CONTAINER_CONTROL_TRACK_ADD, align 4
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @vc_container_control(%struct.TYPE_19__* %46, i32 %47, i32 %50)
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %36
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = bitcast i32* %59 to i8*
  %61 = load i64, i64* %9, align 8
  %62 = trunc i64 %61 to i32
  %63 = sext i32 %62 to i64
  %64 = call i32 (i8*, i8*, i64, ...) @LOG_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %60, i64 %63)
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @container_map_to_mmal_status(i64 %65)
  store i32 %66, i32* %3, align 4
  br label %107

67:                                               ; preds = %36
  br label %68

68:                                               ; preds = %67, %31
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp uge i64 %71, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %68
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = bitcast i32* %82 to i8*
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (i8*, i8*, i64, ...) @LOG_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %83, i64 %86, i64 %91)
  %93 = load i32, i32* @MMAL_EINVAL, align 4
  store i32 %93, i32* %3, align 4
  br label %107

94:                                               ; preds = %68
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %98, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %99, i64 %102
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  store i32 1, i32* %105, align 4
  %106 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %94, %78, %55, %29
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @MMAL_PARAM_UNUSED(i32) #1

declare dso_local i64 @vc_container_control(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @LOG_ERROR(i8*, i8*, i64, ...) #1

declare dso_local i32 @container_map_to_mmal_status(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
