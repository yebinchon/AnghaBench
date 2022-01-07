; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_event_get.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_event_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i64, i64, i32, i64 }

@MMAL_EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s(%i:%i) port %p, event %4.4s\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"%s(%i:%i) port %p, no event buffer left for %4.4s\00", align 1
@MMAL_ENOSPC = common dso_local global i32 0, align 4
@MMAL_EVENT_FORMAT_CHANGED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [63 x i8] c"%s(%i:%i) port %p, event buffer for %4.4s is too small (%i/%i)\00", align 1
@MMAL_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmal_port_event_get(%struct.TYPE_15__* %0, %struct.TYPE_16__** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__** %1, %struct.TYPE_16__*** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %10 = icmp ne %struct.TYPE_15__* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  %18 = icmp ne %struct.TYPE_16__** %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16, %11, %3
  %20 = load i32, i32* @MMAL_EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %138

21:                                               ; preds = %16
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %36 = bitcast i64* %7 to i8*
  %37 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %30, i32 %34, %struct.TYPE_15__* %35, i8* %36)
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.TYPE_16__* @mmal_queue_get(i32 %46)
  %48 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  store %struct.TYPE_16__* %47, %struct.TYPE_16__** %48, align 8
  %49 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = icmp ne %struct.TYPE_16__* %50, null
  br i1 %51, label %70, label %52

52:                                               ; preds = %21
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %67 = bitcast i64* %7 to i8*
  %68 = call i32 (i8*, i32, i32, i32, %struct.TYPE_15__*, i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %61, i32 %65, %struct.TYPE_15__* %66, i8* %67)
  %69 = load i32, i32* @MMAL_ENOSPC, align 4
  store i32 %69, i32* %4, align 4
  br label %138

70:                                               ; preds = %21
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 3
  store i64 %71, i64* %74, align 8
  %75 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* @MMAL_EVENT_FORMAT_CHANGED, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %125

81:                                               ; preds = %70
  store i64 4, i64* %8, align 8
  %82 = load i64, i64* %8, align 8
  %83 = add i64 %82, 8
  store i64 %83, i64* %8, align 8
  %84 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %114

90:                                               ; preds = %81
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %105 = bitcast i64* %7 to i8*
  %106 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = load i64, i64* %8, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 (i8*, i32, i32, i32, %struct.TYPE_15__*, i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %95, i32 %99, i32 %103, %struct.TYPE_15__* %104, i8* %105, i32 %110, i32 %112)
  br label %127

114:                                              ; preds = %81
  %115 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i64, i64* %8, align 8
  %120 = call i32 @memset(i32 %118, i32 0, i64 %119)
  %121 = load i64, i64* %8, align 8
  %122 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  store i64 %121, i64* %124, align 8
  br label %125

125:                                              ; preds = %114, %70
  %126 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %126, i32* %4, align 4
  br label %138

127:                                              ; preds = %90
  %128 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = icmp ne %struct.TYPE_16__* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  %134 = call i32 @mmal_buffer_header_release(%struct.TYPE_16__* %133)
  br label %135

135:                                              ; preds = %131, %127
  %136 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %136, align 8
  %137 = load i32, i32* @MMAL_ENOSPC, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %135, %125, %52, %19
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @LOG_TRACE(i8*, i32, i32, i32, %struct.TYPE_15__*, i8*) #1

declare dso_local %struct.TYPE_16__* @mmal_queue_get(i32) #1

declare dso_local i32 @LOG_ERROR(i8*, i32, i32, i32, %struct.TYPE_15__*, i8*, ...) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @mmal_buffer_header_release(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
