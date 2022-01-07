; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_disable_internal.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_disable_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_15__ = type { {}*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32*, %struct.TYPE_18__*, %struct.TYPE_18__**, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_18__* }

@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"port %p could not be disabled (%s)\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"%s waiting for %i buffers left in transit\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s has no buffers left in transit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_16__*)* @mmal_port_disable_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmal_port_disable_internal(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %3, align 8
  %12 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %12, i64* %4, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %14 = call i32 @LOCK_PORT(%struct.TYPE_16__* %13)
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %126

20:                                               ; preds = %1
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %22 = call i32 @LOCK_SENDING(%struct.TYPE_16__* %21)
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %26 = call i32 @UNLOCK_SENDING(%struct.TYPE_16__* %25)
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mmal_component_action_lock(i32 %29)
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %20
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @mmal_pool_callback_set(i64 %38, i32* null, i32* null)
  br label %40

40:                                               ; preds = %35, %20
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = bitcast {}** %44 to i64 (%struct.TYPE_16__*)**
  %46 = load i64 (%struct.TYPE_16__*)*, i64 (%struct.TYPE_16__*)** %45, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %48 = call i64 %46(%struct.TYPE_16__* %47)
  store i64 %48, i64* %4, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mmal_component_action_unlock(i32 %51)
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @MMAL_SUCCESS, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %40
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @mmal_status_to_string(i64 %60)
  %62 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %61)
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %64 = call i32 @LOCK_SENDING(%struct.TYPE_16__* %63)
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %68 = call i32 @UNLOCK_SENDING(%struct.TYPE_16__* %67)
  br label %126

69:                                               ; preds = %40
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %75, align 8
  store %struct.TYPE_18__* %76, %struct.TYPE_18__** %5, align 8
  br label %77

77:                                               ; preds = %80, %69
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %79 = icmp ne %struct.TYPE_18__* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %82, align 8
  store %struct.TYPE_18__* %83, %struct.TYPE_18__** %6, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %86 = call i32 @mmal_port_buffer_header_callback(%struct.TYPE_16__* %84, %struct.TYPE_18__* %85)
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %87, %struct.TYPE_18__** %5, align 8
  br label %77

88:                                               ; preds = %77
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 1
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %94, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 2
  store %struct.TYPE_18__** %100, %struct.TYPE_18__*** %106, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %111 = call i64 @IN_TRANSIT_COUNT(%struct.TYPE_16__* %110)
  %112 = trunc i64 %111 to i32
  %113 = call i32 (i8*, i32, ...) @LOG_DEBUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %109, i32 %112)
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %115 = call i32 @IN_TRANSIT_WAIT(%struct.TYPE_16__* %114)
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i8*, i32, ...) @LOG_DEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  store i32* null, i32** %125, align 8
  br label %126

126:                                              ; preds = %88, %56, %19
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %128 = call i32 @UNLOCK_PORT(%struct.TYPE_16__* %127)
  %129 = load i64, i64* %4, align 8
  ret i64 %129
}

declare dso_local i32 @LOCK_PORT(%struct.TYPE_16__*) #1

declare dso_local i32 @LOCK_SENDING(%struct.TYPE_16__*) #1

declare dso_local i32 @UNLOCK_SENDING(%struct.TYPE_16__*) #1

declare dso_local i32 @mmal_component_action_lock(i32) #1

declare dso_local i32 @mmal_pool_callback_set(i64, i32*, i32*) #1

declare dso_local i32 @mmal_component_action_unlock(i32) #1

declare dso_local i32 @LOG_ERROR(i8*, i32, i32) #1

declare dso_local i32 @mmal_status_to_string(i64) #1

declare dso_local i32 @mmal_port_buffer_header_callback(%struct.TYPE_16__*, %struct.TYPE_18__*) #1

declare dso_local i32 @LOG_DEBUG(i8*, i32, ...) #1

declare dso_local i64 @IN_TRANSIT_COUNT(%struct.TYPE_16__*) #1

declare dso_local i32 @IN_TRANSIT_WAIT(%struct.TYPE_16__*) #1

declare dso_local i32 @UNLOCK_PORT(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
