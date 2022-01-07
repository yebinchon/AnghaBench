; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_core.c_mmalomx_ComponentFreeBuffer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_core.c_mmalomx_ComponentFreeBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_19__*, i32, i32 }
%struct.TYPE_19__ = type { i64 }

@OMX_ErrorNone = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"hComponent %p, nPortIndex %i, pBuffer %p\00", align 1
@OMX_ErrorInvalidComponent = common dso_local global i32 0, align 4
@OMX_ErrorBadParameter = common dso_local global i32 0, align 4
@OMX_ErrorBadPortIndex = common dso_local global i32 0, align 4
@MMAL_FALSE = common dso_local global i32 0, align 4
@MMALOMX_ACTION_CHECK_DEALLOCATED = common dso_local global i32 0, align 4
@MMAL_PARAMETER_ZERO_COPY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"freed %i/%i buffers\00", align 1
@OMX_EventError = common dso_local global i32 0, align 4
@OMX_ErrorPortUnpopulated = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.TYPE_16__*)* @mmalomx_ComponentFreeBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmalomx_ComponentFreeBuffer(i64 %0, i64 %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %8, align 8
  %16 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %21 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %17, i32 %19, %struct.TYPE_16__* %20)
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @OMX_ErrorInvalidComponent, align 4
  store i32 %25, i32* %4, align 4
  br label %142

26:                                               ; preds = %3
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %28 = icmp ne %struct.TYPE_16__* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @OMX_ErrorBadParameter, align 4
  store i32 %30, i32* %4, align 4
  br label %142

31:                                               ; preds = %26
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp uge i64 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @OMX_ErrorBadPortIndex, align 4
  store i32 %38, i32* %4, align 4
  br label %142

39:                                               ; preds = %31
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %41 = call i32 @mmalomx_commands_actions_check(%struct.TYPE_18__* %40)
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i64 %45
  store %struct.TYPE_17__* %46, %struct.TYPE_17__** %12, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %49 = call i32 @MMALOMX_LOCK_PORT(%struct.TYPE_18__* %47, %struct.TYPE_17__* %48)
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %39
  %55 = load i32, i32* @OMX_ErrorBadParameter, align 4
  store i32 %55, i32* %9, align 4
  br label %137

56:                                               ; preds = %39
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add i32 %59, -1
  store i32 %60, i32* %58, align 8
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* @MMAL_FALSE, align 4
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MMALOMX_ACTION_CHECK_DEALLOCATED, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %10, align 4
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %11, align 4
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %77 = call i32 @MMALOMX_UNLOCK_PORT(%struct.TYPE_18__* %75, %struct.TYPE_17__* %76)
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %56
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %82, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @mmal_port_payload_free(%struct.TYPE_19__* %83, i32 %86)
  br label %88

88:                                               ; preds = %80, %56
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %90 = call i32 @free(%struct.TYPE_16__* %89)
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %88
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %93
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %100, align 8
  %102 = load i32, i32* @MMAL_PARAMETER_ZERO_COPY, align 4
  %103 = load i32, i32* @MMAL_FALSE, align 4
  %104 = call i32 @mmal_port_parameter_set_boolean(%struct.TYPE_19__* %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %98, %93, %88
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = zext i32 %113 to i64
  %115 = sub nsw i64 %110, %114
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @LOG_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %115, i64 %120)
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %105
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %126 = load i32, i32* @OMX_EventError, align 4
  %127 = load i32, i32* @OMX_ErrorPortUnpopulated, align 4
  %128 = call i32 @mmalomx_callback_event_handler(%struct.TYPE_18__* %125, i32 %126, i32 %127, i32 0, i32* null)
  br label %129

129:                                              ; preds = %124, %105
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %134 = call i32 @mmalomx_commands_actions_signal(%struct.TYPE_18__* %133)
  br label %135

135:                                              ; preds = %132, %129
  %136 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %136, i32* %4, align 4
  br label %142

137:                                              ; preds = %54
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %140 = call i32 @MMALOMX_UNLOCK_PORT(%struct.TYPE_18__* %138, %struct.TYPE_17__* %139)
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %137, %135, %37, %29, %24
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @LOG_TRACE(i8*, i64, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @mmalomx_commands_actions_check(%struct.TYPE_18__*) #1

declare dso_local i32 @MMALOMX_LOCK_PORT(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @MMALOMX_UNLOCK_PORT(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @mmal_port_payload_free(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_16__*) #1

declare dso_local i32 @mmal_port_parameter_set_boolean(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @LOG_DEBUG(i8*, i64, i64) #1

declare dso_local i32 @mmalomx_callback_event_handler(%struct.TYPE_18__*, i32, i32, i32, i32*) #1

declare dso_local i32 @mmalomx_commands_actions_signal(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
