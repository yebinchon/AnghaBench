; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/ilclient/extr_ilclient.c_ilclient_setup_tunnel.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/ilclient/extr_ilclient.c_ilclient_setup_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_15__*, %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@OMX_ErrorNone = common dso_local global i64 0, align 8
@OMX_StateLoaded = common dso_local global i64 0, align 8
@OMX_StateIdle = common dso_local global i32 0, align 4
@OMX_EventPortSettingsChanged = common dso_local global i32 0, align 4
@ILCLIENT_PARAMETER_CHANGED = common dso_local global i32 0, align 4
@ILCLIENT_EVENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"ilclient: timed out waiting for port settings changed on port %d\00", align 1
@OMX_VERSION = common dso_local global i32 0, align 4
@OMX_IndexParamNumAvailableStreams = common dso_local global i32 0, align 4
@OMX_IndexParamActiveStream = common dso_local global i32 0, align 4
@OMX_EventError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"ilclient: could not setup/enable tunnel (setup=0x%x,enable=%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ilclient_setup_tunnel(%struct.TYPE_13__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_14__, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @OMX_GetState(i32* %17, i64* %10)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @OMX_ErrorNone, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @vc_assert(i32 %22)
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @OMX_StateLoaded, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %3
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = load i32, i32* @OMX_StateIdle, align 4
  %32 = call i64 @ilclient_change_component_state(%struct.TYPE_15__* %30, i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 -2, i32* %4, align 4
  br label %180

35:                                               ; preds = %27, %3
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %35
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = load i32, i32* @OMX_EventPortSettingsChanged, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ILCLIENT_PARAMETER_CHANGED, align 4
  %47 = load i32, i32* @ILCLIENT_EVENT_ERROR, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @ilclient_wait_for_event(%struct.TYPE_15__* %41, i32 %42, i32 %45, i32 0, i32 -1, i32 1, i32 %48, i32 %49)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %38
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = call i32 (i8*, i64, ...) @ilclient_debug_output(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %57)
  %59 = load i64, i64* %11, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %4, align 4
  br label %180

61:                                               ; preds = %38
  br label %62

62:                                               ; preds = %61, %35
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = call i32 @ilclient_disable_tunnel(%struct.TYPE_13__* %63)
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  store i32 16, i32* %65, align 4
  %66 = load i32, i32* @OMX_VERSION, align 4
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  store i32 %71, i32* %72, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* @OMX_IndexParamNumAvailableStreams, align 4
  %79 = call i64 @OMX_GetParameter(i32* %77, i32 %78, %struct.TYPE_14__* %9)
  %80 = load i64, i64* @OMX_ErrorNone, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %108

82:                                               ; preds = %62
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 -3, i32* %4, align 4
  br label %180

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ule i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 -4, i32* %4, align 4
  br label %180

93:                                               ; preds = %87
  %94 = load i32, i32* %6, align 4
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  store i32 %94, i32* %95, align 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* @OMX_IndexParamActiveStream, align 4
  %102 = call i64 @OMX_SetParameter(i32* %100, i32 %101, %struct.TYPE_14__* %9)
  store i64 %102, i64* %8, align 8
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* @OMX_ErrorNone, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @vc_assert(i32 %106)
  br label %108

108:                                              ; preds = %93, %62
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @OMX_SetupTunnel(i32* %113, i32 %116, i32* %121, i32 %124)
  store i64 %125, i64* %8, align 8
  store i32 0, i32* %12, align 4
  %126 = load i64, i64* %8, align 8
  %127 = load i64, i64* @OMX_ErrorNone, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %133, label %129

129:                                              ; preds = %108
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %131 = call i32 @ilclient_enable_tunnel(%struct.TYPE_13__* %130)
  store i32 %131, i32* %12, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %179

133:                                              ; preds = %129, %108
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @OMX_SetupTunnel(i32* %138, i32 %141, i32* null, i32 0)
  store i64 %142, i64* %8, align 8
  %143 = load i64, i64* %8, align 8
  %144 = load i64, i64* @OMX_ErrorNone, align 8
  %145 = icmp eq i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @vc_assert(i32 %146)
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @OMX_SetupTunnel(i32* %152, i32 %155, i32* null, i32 0)
  store i64 %156, i64* %8, align 8
  %157 = load i64, i64* %8, align 8
  %158 = load i64, i64* @OMX_ErrorNone, align 8
  %159 = icmp eq i64 %157, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @vc_assert(i32 %160)
  %162 = load i32, i32* %12, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %133
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %166, align 8
  %168 = load i32, i32* @OMX_EventError, align 4
  %169 = call i32 @ilclient_remove_event(%struct.TYPE_15__* %167, i32 %168, i32 0, i32 1, i32 0, i32 1)
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %171, align 8
  %173 = load i32, i32* @OMX_EventError, align 4
  %174 = call i32 @ilclient_remove_event(%struct.TYPE_15__* %172, i32 %173, i32 0, i32 1, i32 0, i32 1)
  br label %175

175:                                              ; preds = %164, %133
  %176 = load i64, i64* %8, align 8
  %177 = load i32, i32* %12, align 4
  %178 = call i32 (i8*, i64, ...) @ilclient_debug_output(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i64 %176, i32 %177)
  store i32 -5, i32* %4, align 4
  br label %180

179:                                              ; preds = %129
  store i32 0, i32* %4, align 4
  br label %180

180:                                              ; preds = %179, %175, %92, %86, %53, %34
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i64 @OMX_GetState(i32*, i64*) #1

declare dso_local i32 @vc_assert(i32) #1

declare dso_local i64 @ilclient_change_component_state(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @ilclient_wait_for_event(%struct.TYPE_15__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ilclient_debug_output(i8*, i64, ...) #1

declare dso_local i32 @ilclient_disable_tunnel(%struct.TYPE_13__*) #1

declare dso_local i64 @OMX_GetParameter(i32*, i32, %struct.TYPE_14__*) #1

declare dso_local i64 @OMX_SetParameter(i32*, i32, %struct.TYPE_14__*) #1

declare dso_local i64 @OMX_SetupTunnel(i32*, i32, i32*, i32) #1

declare dso_local i32 @ilclient_enable_tunnel(%struct.TYPE_13__*) #1

declare dso_local i32 @ilclient_remove_event(%struct.TYPE_15__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
