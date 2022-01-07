; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_buffer.c_mmalomx_buffer_return.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_buffer.c_mmalomx_buffer_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64, i32, i32, i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 (i32, i32, %struct.TYPE_27__*)*, i32 (i32, i32, %struct.TYPE_27__*)* }
%struct.TYPE_27__ = type { i64, i32 }
%struct.TYPE_28__ = type { i64, i64, i64 }

@OMX_ErrorNone = common dso_local global i32 0, align 4
@ENABLE_MMAL_EXTRA_LOGGING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"hComponent %p, port %i, pBuffer %p\00", align 1
@OMX_BUFFERFLAG_EOS = common dso_local global i32 0, align 4
@OMX_DirOutput = common dso_local global i64 0, align 8
@OMX_EventBufferFlag = common dso_local global i32 0, align 4
@OMX_DirInput = common dso_local global i64 0, align 8
@MMALOMX_ACTION_CHECK_FLUSHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmalomx_buffer_return(%struct.TYPE_29__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  %9 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  store %struct.TYPE_30__* %11, %struct.TYPE_30__** %6, align 8
  %12 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %15, %struct.TYPE_27__** %7, align 8
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %23 = call i32 @mmalomx_buffer_event(%struct.TYPE_29__* %21, %struct.TYPE_28__* %22)
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %25 = call i32 @mmal_buffer_header_release(%struct.TYPE_28__* %24)
  %26 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %26, i32* %3, align 4
  br label %133

27:                                               ; preds = %2
  %28 = load i64, i64* @ENABLE_MMAL_EXTRA_LOGGING, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %32 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %36 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.TYPE_30__* %31, i32 %34, %struct.TYPE_27__* %35)
  br label %37

37:                                               ; preds = %30, %27
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @vcos_assert(i32 %45)
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %49 = call i32 @mmalil_buffer_header_to_omx(%struct.TYPE_27__* %47, %struct.TYPE_28__* %48)
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %51 = call i32 @mmal_buffer_header_release(%struct.TYPE_28__* %50)
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @OMX_BUFFERFLAG_EOS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %37
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @OMX_DirOutput, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %66 = load i32, i32* @OMX_EventBufferFlag, align 4
  %67 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @mmalomx_callback_event_handler(%struct.TYPE_30__* %65, i32 %66, i32 %69, i32 %72, i32* null)
  br label %74

74:                                               ; preds = %64, %58, %37
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %78 = call i32 @mmalomx_mark_process_outgoing(%struct.TYPE_30__* %75, %struct.TYPE_29__* %76, %struct.TYPE_27__* %77)
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @OMX_DirInput, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %74
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 1
  %88 = load i32 (i32, i32, %struct.TYPE_27__*)*, i32 (i32, i32, %struct.TYPE_27__*)** %87, align 8
  %89 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %89, i32 0, i32 1
  %91 = ptrtoint i32* %90 to i32
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %96 = call i32 %88(i32 %91, i32 %94, %struct.TYPE_27__* %95)
  br label %110

97:                                               ; preds = %74
  %98 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 0
  %101 = load i32 (i32, i32, %struct.TYPE_27__*)*, i32 (i32, i32, %struct.TYPE_27__*)** %100, align 8
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %102, i32 0, i32 1
  %104 = ptrtoint i32* %103 to i32
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %109 = call i32 %101(i32 %104, i32 %107, %struct.TYPE_27__* %108)
  br label %110

110:                                              ; preds = %97, %84
  %111 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %113 = call i32 @MMALOMX_LOCK_PORT(%struct.TYPE_30__* %111, %struct.TYPE_29__* %112)
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @MMALOMX_ACTION_CHECK_FLUSHED, align 4
  %118 = and i32 %116, %117
  store i32 %118, i32* %8, align 4
  %119 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %120, align 4
  %123 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %125 = call i32 @MMALOMX_UNLOCK_PORT(%struct.TYPE_30__* %123, %struct.TYPE_29__* %124)
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %110
  %129 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %130 = call i32 @mmalomx_commands_actions_signal(%struct.TYPE_30__* %129)
  br label %131

131:                                              ; preds = %128, %110
  %132 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %131, %20
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @mmalomx_buffer_event(%struct.TYPE_29__*, %struct.TYPE_28__*) #1

declare dso_local i32 @mmal_buffer_header_release(%struct.TYPE_28__*) #1

declare dso_local i32 @LOG_TRACE(i8*, %struct.TYPE_30__*, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @mmalil_buffer_header_to_omx(%struct.TYPE_27__*, %struct.TYPE_28__*) #1

declare dso_local i32 @mmalomx_callback_event_handler(%struct.TYPE_30__*, i32, i32, i32, i32*) #1

declare dso_local i32 @mmalomx_mark_process_outgoing(%struct.TYPE_30__*, %struct.TYPE_29__*, %struct.TYPE_27__*) #1

declare dso_local i32 @MMALOMX_LOCK_PORT(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i32 @MMALOMX_UNLOCK_PORT(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i32 @mmalomx_commands_actions_signal(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
