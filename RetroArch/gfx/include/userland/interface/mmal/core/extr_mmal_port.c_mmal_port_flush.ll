; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_flush.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_18__*, %struct.TYPE_15__*, i32, i64, i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { {}*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_17__*, %struct.TYPE_17__** }
%struct.TYPE_17__ = type { %struct.TYPE_17__* }

@MMAL_EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"%s(%i:%i) port %p\00", align 1
@MMAL_ENOSYS = common dso_local global i64 0, align 8
@MMAL_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mmal_port_flush(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %8 = icmp ne %struct.TYPE_16__* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %13 = icmp ne %struct.TYPE_15__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9, %1
  %15 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %15, i64* %2, align 8
  br label %118

16:                                               ; preds = %9
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %31 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25, i32 %29, %struct.TYPE_16__* %30)
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to i64 (%struct.TYPE_16__*)**
  %37 = load i64 (%struct.TYPE_16__*)*, i64 (%struct.TYPE_16__*)** %36, align 8
  %38 = icmp ne i64 (%struct.TYPE_16__*)* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %16
  %40 = load i64, i64* @MMAL_ENOSYS, align 8
  store i64 %40, i64* %2, align 8
  br label %118

41:                                               ; preds = %16
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  %45 = call i32 @mmal_component_action_lock(%struct.TYPE_18__* %44)
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %47 = call i32 @LOCK_SENDING(%struct.TYPE_16__* %46)
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %41
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %54 = call i32 @UNLOCK_SENDING(%struct.TYPE_16__* %53)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %56, align 8
  %58 = call i32 @mmal_component_action_unlock(%struct.TYPE_18__* %57)
  %59 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %59, i64* %2, align 8
  br label %118

60:                                               ; preds = %41
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = bitcast {}** %64 to i64 (%struct.TYPE_16__*)**
  %66 = load i64 (%struct.TYPE_16__*)*, i64 (%struct.TYPE_16__*)** %65, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %68 = call i64 %66(%struct.TYPE_16__* %67)
  store i64 %68, i64* %5, align 8
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* @MMAL_SUCCESS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %98

72:                                               ; preds = %60
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %78, align 8
  store %struct.TYPE_17__* %79, %struct.TYPE_17__** %4, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %85, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  store %struct.TYPE_17__** %91, %struct.TYPE_17__*** %97, align 8
  br label %98

98:                                               ; preds = %72, %60
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %100 = call i32 @UNLOCK_SENDING(%struct.TYPE_16__* %99)
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = call i32 @mmal_component_action_unlock(%struct.TYPE_18__* %103)
  br label %105

105:                                              ; preds = %108, %98
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %107 = icmp ne %struct.TYPE_17__* %106, null
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %110, align 8
  store %struct.TYPE_17__* %111, %struct.TYPE_17__** %6, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %114 = call i32 @mmal_port_buffer_header_callback(%struct.TYPE_16__* %112, %struct.TYPE_17__* %113)
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %115, %struct.TYPE_17__** %4, align 8
  br label %105

116:                                              ; preds = %105
  %117 = load i64, i64* %5, align 8
  store i64 %117, i64* %2, align 8
  br label %118

118:                                              ; preds = %116, %52, %39, %14
  %119 = load i64, i64* %2, align 8
  ret i64 %119
}

declare dso_local i32 @LOG_TRACE(i8*, i32, i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @mmal_component_action_lock(%struct.TYPE_18__*) #1

declare dso_local i32 @LOCK_SENDING(%struct.TYPE_16__*) #1

declare dso_local i32 @UNLOCK_SENDING(%struct.TYPE_16__*) #1

declare dso_local i32 @mmal_component_action_unlock(%struct.TYPE_18__*) #1

declare dso_local i32 @mmal_port_buffer_header_callback(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
