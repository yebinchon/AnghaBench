; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_splitter.c_splitter_port_send.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_splitter.c_splitter_port_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_21__*, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__**, %struct.TYPE_20__**, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i64 }

@MMAL_SUCCESS = common dso_local global i64 0, align 8
@MMAL_EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"unable to send an error event buffer (%i)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*, %struct.TYPE_23__*)* @splitter_port_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @splitter_port_send(%struct.TYPE_20__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  store %struct.TYPE_21__* %15, %struct.TYPE_21__** %6, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  store %struct.TYPE_22__* %20, %struct.TYPE_22__** %7, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %29 = call i32 @mmal_queue_put(i32 %27, %struct.TYPE_23__* %28)
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %35, i64* %3, align 8
  br label %154

36:                                               ; preds = %2
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %39, i64 0
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  store %struct.TYPE_20__* %41, %struct.TYPE_20__** %8, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.TYPE_23__* @mmal_queue_get(i32 %48)
  store %struct.TYPE_23__* %49, %struct.TYPE_23__** %10, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %51 = icmp ne %struct.TYPE_23__* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %36
  %53 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %53, i64* %3, align 8
  br label %154

54:                                               ; preds = %36
  store i32 0, i32* %12, align 4
  br label %55

55:                                               ; preds = %92, %54
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %61, label %95

61:                                               ; preds = %55
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %64, i64 %66
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %67, align 8
  store %struct.TYPE_20__* %68, %struct.TYPE_20__** %9, align 8
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %71 = call i64 @splitter_send_output(%struct.TYPE_23__* %69, %struct.TYPE_20__* %70)
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* @MMAL_SUCCESS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %61
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* @MMAL_EAGAIN, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %127

80:                                               ; preds = %75, %61
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* @MMAL_SUCCESS, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load i32, i32* %12, align 4
  %86 = shl i32 1, %85
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %84, %80
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %12, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %55

95:                                               ; preds = %55
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %98, %101
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %102, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %95
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %112 = call i32 @mmal_port_buffer_header_callback(%struct.TYPE_20__* %110, %struct.TYPE_23__* %111)
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 1
  store i32 0, i32* %114, align 4
  %115 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %115, i64* %3, align 8
  br label %154

116:                                              ; preds = %95
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %125 = call i32 @mmal_queue_put(i32 %123, %struct.TYPE_23__* %124)
  %126 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %126, i64* %3, align 8
  br label %154

127:                                              ; preds = %79
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %136 = call i32 @mmal_queue_put(i32 %134, %struct.TYPE_23__* %135)
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %138, align 8
  %140 = load i64, i64* %11, align 8
  %141 = call i64 @mmal_event_error_send(%struct.TYPE_21__* %139, i64 %140)
  store i64 %141, i64* %11, align 8
  %142 = load i64, i64* %11, align 8
  %143 = load i64, i64* @MMAL_SUCCESS, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %127
  %146 = load i64, i64* %11, align 8
  %147 = trunc i64 %146 to i32
  %148 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %147)
  %149 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %149, i64* %3, align 8
  br label %154

150:                                              ; preds = %127
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 0
  store i32 1, i32* %152, align 4
  %153 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %153, i64* %3, align 8
  br label %154

154:                                              ; preds = %150, %145, %116, %107, %52, %34
  %155 = load i64, i64* %3, align 8
  ret i64 %155
}

declare dso_local i32 @mmal_queue_put(i32, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @mmal_queue_get(i32) #1

declare dso_local i64 @splitter_send_output(%struct.TYPE_23__*, %struct.TYPE_20__*) #1

declare dso_local i32 @mmal_port_buffer_header_callback(%struct.TYPE_20__*, %struct.TYPE_23__*) #1

declare dso_local i64 @mmal_event_error_send(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @LOG_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
