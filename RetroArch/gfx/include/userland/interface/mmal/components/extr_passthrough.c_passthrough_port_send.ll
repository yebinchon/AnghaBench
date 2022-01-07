; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_passthrough.c_passthrough_port_send.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_passthrough.c_passthrough_port_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i64, %struct.TYPE_21__*, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__**, %struct.TYPE_20__**, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i64 }

@MMAL_SUCCESS = common dso_local global i64 0, align 8
@MMAL_PORT_TYPE_INPUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"unable to send an error event buffer (%i)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*, %struct.TYPE_23__*)* @passthrough_port_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @passthrough_port_send(%struct.TYPE_20__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_20__**, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_23__**, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %6, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  store %struct.TYPE_22__* %22, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %12, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %13, align 8
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %2
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %36 = call i32 @mmal_queue_put(i32 %34, %struct.TYPE_23__* %35)
  %37 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %37, i64* %3, align 8
  br label %147

38:                                               ; preds = %2
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %42, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %43, i64 %46
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %47, align 8
  store %struct.TYPE_20__* %48, %struct.TYPE_20__** %9, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %52, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %53, i64 %56
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %57, align 8
  store %struct.TYPE_20__* %58, %struct.TYPE_20__** %10, align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @MMAL_PORT_TYPE_INPUT, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %38
  store %struct.TYPE_20__** %10, %struct.TYPE_20__*** %8, align 8
  store %struct.TYPE_23__** %13, %struct.TYPE_23__*** %11, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_23__* %65, %struct.TYPE_23__** %12, align 8
  br label %68

66:                                               ; preds = %38
  store %struct.TYPE_20__** %9, %struct.TYPE_20__*** %8, align 8
  store %struct.TYPE_23__** %12, %struct.TYPE_23__*** %11, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_23__* %67, %struct.TYPE_23__** %13, align 8
  br label %68

68:                                               ; preds = %66, %64
  %69 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.TYPE_23__* @mmal_queue_get(i32 %76)
  %78 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %11, align 8
  store %struct.TYPE_23__* %77, %struct.TYPE_23__** %78, align 8
  %79 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %11, align 8
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %79, align 8
  %81 = icmp ne %struct.TYPE_23__* %80, null
  br i1 %81, label %93, label %82

82:                                               ; preds = %68
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %91 = call i32 @mmal_queue_put(i32 %89, %struct.TYPE_23__* %90)
  %92 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %92, i64* %3, align 8
  br label %147

93:                                               ; preds = %68
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %96 = call i64 @mmal_buffer_header_replicate(%struct.TYPE_23__* %94, %struct.TYPE_23__* %95)
  store i64 %96, i64* %14, align 8
  %97 = load i64, i64* %14, align 8
  %98 = load i64, i64* @MMAL_SUCCESS, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %111

101:                                              ; preds = %93
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %106 = call i32 @mmal_port_buffer_header_callback(%struct.TYPE_20__* %104, %struct.TYPE_23__* %105)
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %109 = call i32 @mmal_port_buffer_header_callback(%struct.TYPE_20__* %107, %struct.TYPE_23__* %108)
  %110 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %110, i64* %3, align 8
  br label %147

111:                                              ; preds = %100
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %120 = call i32 @mmal_queue_put(i32 %118, %struct.TYPE_23__* %119)
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %129 = call i32 @mmal_queue_put(i32 %127, %struct.TYPE_23__* %128)
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %131, align 8
  %133 = load i64, i64* %14, align 8
  %134 = call i64 @mmal_event_error_send(%struct.TYPE_21__* %132, i64 %133)
  store i64 %134, i64* %14, align 8
  %135 = load i64, i64* %14, align 8
  %136 = load i64, i64* @MMAL_SUCCESS, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %111
  %139 = load i64, i64* %14, align 8
  %140 = trunc i64 %139 to i32
  %141 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %140)
  %142 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %142, i64* %3, align 8
  br label %147

143:                                              ; preds = %111
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 0
  store i32 1, i32* %145, align 4
  %146 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %146, i64* %3, align 8
  br label %147

147:                                              ; preds = %143, %138, %101, %82, %27
  %148 = load i64, i64* %3, align 8
  ret i64 %148
}

declare dso_local i32 @mmal_queue_put(i32, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @mmal_queue_get(i32) #1

declare dso_local i64 @mmal_buffer_header_replicate(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @mmal_port_buffer_header_callback(%struct.TYPE_20__*, %struct.TYPE_23__*) #1

declare dso_local i64 @mmal_event_error_send(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @LOG_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
