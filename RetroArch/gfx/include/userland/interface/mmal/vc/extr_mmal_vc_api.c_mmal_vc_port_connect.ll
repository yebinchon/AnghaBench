; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_api.c_mmal_vc_port_connect.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_api.c_mmal_vc_port_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@MMAL_ENOSYS = common dso_local global i64 0, align 8
@MMAL_WORKER_PORT_ACTION_CONNECT = common dso_local global i32 0, align 4
@MMAL_WORKER_PORT_ACTION_DISCONNECT = common dso_local global i32 0, align 4
@MMAL_WORKER_PORT_ACTION = common dso_local global i32 0, align 4
@MMAL_FALSE = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"failed to connect ports: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_16__*, %struct.TYPE_16__*)* @mmal_vc_port_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmal_vc_port_connect(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__, align 8
  %9 = alloca %struct.TYPE_15__, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %6, align 8
  store i64 8, i64* %10, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = icmp ne %struct.TYPE_16__* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %2
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %23, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i64, i64* @MMAL_ENOSYS, align 8
  store i64 %31, i64* %3, align 8
  br label %131

32:                                               ; preds = %18, %2
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 4
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = icmp ne %struct.TYPE_16__* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @MMAL_WORKER_PORT_ACTION_CONNECT, align 4
  br label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @MMAL_WORKER_PORT_ACTION_DISCONNECT, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 3
  store i32 %44, i32* %45, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 2
  store i32 %48, i32* %49, align 4
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %51 = icmp ne %struct.TYPE_16__* %50, null
  br i1 %51, label %52, label %73

52:                                               ; preds = %43
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  br label %73

73:                                               ; preds = %52, %43
  %74 = call i32 (...) @mmal_vc_get_client()
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %76 = load i32, i32* @MMAL_WORKER_PORT_ACTION, align 4
  %77 = load i32, i32* @MMAL_FALSE, align 4
  %78 = call i64 @mmal_vc_sendwait_message(i32 %74, i32* %75, i32 24, i32 %76, %struct.TYPE_14__* %8, i64* %10, i32 %77)
  store i64 %78, i64* %7, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* @MMAL_SUCCESS, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %73
  %83 = load i64, i64* %10, align 8
  %84 = icmp eq i64 %83, 8
  %85 = zext i1 %84 to i32
  %86 = call i32 @vcos_assert(i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %7, align 8
  br label %89

89:                                               ; preds = %82, %73
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* @MMAL_SUCCESS, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @mmal_status_to_string(i64 %94)
  %96 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load i64, i64* %7, align 8
  store i64 %97, i64* %3, align 8
  br label %131

98:                                               ; preds = %89
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %100 = icmp ne %struct.TYPE_16__* %99, null
  br i1 %100, label %101, label %112

101:                                              ; preds = %98
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  store %struct.TYPE_16__* %102, %struct.TYPE_16__** %104, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  store %struct.TYPE_16__* %105, %struct.TYPE_16__** %111, align 8
  br label %129

112:                                              ; preds = %98
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  %116 = icmp ne %struct.TYPE_16__* %115, null
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %125, align 8
  br label %126

126:                                              ; preds = %117, %112
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %128, align 8
  br label %129

129:                                              ; preds = %126, %101
  %130 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %130, i64* %3, align 8
  br label %131

131:                                              ; preds = %129, %93, %30
  %132 = load i64, i64* %3, align 8
  ret i64 %132
}

declare dso_local i64 @mmal_vc_sendwait_message(i32, i32*, i32, i32, %struct.TYPE_14__*, i64*, i32) #1

declare dso_local i32 @mmal_vc_get_client(...) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @LOG_ERROR(i8*, i32) #1

declare dso_local i32 @mmal_status_to_string(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
