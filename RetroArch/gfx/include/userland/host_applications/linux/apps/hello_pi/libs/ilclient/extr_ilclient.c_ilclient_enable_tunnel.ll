; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/ilclient/extr_ilclient.c_ilclient_enable_tunnel.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/ilclient/extr_ilclient.c_ilclient_enable_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"ilclient: enable tunnel from %x/%d to %x/%d\00", align 1
@OMX_CommandPortEnable = common dso_local global i32 0, align 4
@OMX_ErrorNone = common dso_local global i64 0, align 8
@OMX_StateLoaded = common dso_local global i64 0, align 8
@OMX_CommandStateSet = common dso_local global i32 0, align 4
@OMX_StateIdle = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"ilclient: could not change component state to IDLE\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"ilclient: could not change sink port %d to enabled\00", align 1
@OMX_EventCmdComplete = common dso_local global i32 0, align 4
@ILCLIENT_PORT_ENABLED = common dso_local global i32 0, align 4
@ILCLIENT_EVENT_ERROR = common dso_local global i32 0, align 4
@VCOS_EVENT_FLAGS_SUSPEND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"ilclient: could not change source port %d to enabled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ilclient_enable_tunnel(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i8*, ...) @ilclient_debug_output(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %9, i32 %12, %struct.TYPE_9__* %15, i32 %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @OMX_CommandPortEnable, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @OMX_SendCommand(i32 %24, i32 %25, i32 %28, i32* null)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @OMX_ErrorNone, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @vc_assert(i32 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @OMX_CommandPortEnable, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @OMX_SendCommand(i32 %39, i32 %40, i32 %43, i32* null)
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @OMX_ErrorNone, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @vc_assert(i32 %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @OMX_GetState(i32 %54, i64* %4)
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @OMX_ErrorNone, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @vc_assert(i32 %59)
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* @OMX_StateLoaded, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %125

64:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = load i32, i32* @OMX_CommandPortEnable, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @ilclient_wait_for_command_complete(%struct.TYPE_9__* %67, i32 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %96, label %74

74:                                               ; preds = %64
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @OMX_CommandStateSet, align 4
  %81 = load i32, i32* @OMX_StateIdle, align 4
  %82 = call i64 @OMX_SendCommand(i32 %79, i32 %80, i32 %81, i32* null)
  %83 = load i64, i64* @OMX_ErrorNone, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %96, label %85

85:                                               ; preds = %74
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = load i32, i32* @OMX_CommandStateSet, align 4
  %90 = load i32, i32* @OMX_StateIdle, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = call i32 @ilclient_wait_for_command_complete_dual(%struct.TYPE_9__* %88, i32 %89, i32 %90, %struct.TYPE_9__* %93)
  store i32 %94, i32* %6, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %124

96:                                               ; preds = %85, %74, %64
  %97 = load i32, i32* %6, align 4
  %98 = icmp eq i32 %97, -2
  br i1 %98, label %99, label %115

99:                                               ; preds = %96
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = load i32, i32* @OMX_CommandPortEnable, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @ilclient_wait_for_command_complete(%struct.TYPE_9__* %102, i32 %103, i32 %106)
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @ilclient_disable_port(%struct.TYPE_9__* %110, i32 %113)
  br label %115

115:                                              ; preds = %99, %96
  %116 = call i32 (i8*, ...) @ilclient_debug_output(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @ilclient_disable_port(%struct.TYPE_9__* %119, i32 %122)
  store i32 -1, i32* %2, align 4
  br label %184

124:                                              ; preds = %85
  br label %161

125:                                              ; preds = %1
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = load i32, i32* @OMX_CommandPortEnable, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @ilclient_wait_for_command_complete(%struct.TYPE_9__* %128, i32 %129, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %160

135:                                              ; preds = %125
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 (i8*, ...) @ilclient_debug_output(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 3
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @ilclient_disable_port(%struct.TYPE_9__* %142, i32 %145)
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = load i32, i32* @OMX_EventCmdComplete, align 4
  %151 = load i32, i32* @OMX_CommandPortEnable, align 4
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @ILCLIENT_PORT_ENABLED, align 4
  %156 = load i32, i32* @ILCLIENT_EVENT_ERROR, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @VCOS_EVENT_FLAGS_SUSPEND, align 4
  %159 = call i32 @ilclient_wait_for_event(%struct.TYPE_9__* %149, i32 %150, i32 %151, i32 0, i32 %154, i32 0, i32 %157, i32 %158)
  store i32 -1, i32* %2, align 4
  br label %184

160:                                              ; preds = %125
  br label %161

161:                                              ; preds = %160, %124
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %163, align 8
  %165 = load i32, i32* @OMX_CommandPortEnable, align 4
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = call i64 @ilclient_wait_for_command_complete(%struct.TYPE_9__* %164, i32 %165, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %183

171:                                              ; preds = %161
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i32 (i8*, ...) @ilclient_debug_output(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %174)
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @ilclient_disable_port(%struct.TYPE_9__* %178, i32 %181)
  store i32 -1, i32* %2, align 4
  br label %184

183:                                              ; preds = %161
  store i32 0, i32* %2, align 4
  br label %184

184:                                              ; preds = %183, %171, %135, %115
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i32 @ilclient_debug_output(i8*, ...) #1

declare dso_local i64 @OMX_SendCommand(i32, i32, i32, i32*) #1

declare dso_local i32 @vc_assert(i32) #1

declare dso_local i64 @OMX_GetState(i32, i64*) #1

declare dso_local i64 @ilclient_wait_for_command_complete(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @ilclient_wait_for_command_complete_dual(%struct.TYPE_9__*, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @ilclient_disable_port(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ilclient_wait_for_event(%struct.TYPE_9__*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
