; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_commands.c_mmalomx_command_state_set.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_commands.c_mmalomx_command_state_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i64 }
%struct.TYPE_11__ = type { i64, i32, i32, %struct.TYPE_13__*, i64, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@OMX_EventError = common dso_local global i32 0, align 4
@OMX_ErrorSameState = common dso_local global i32 0, align 4
@OMX_ErrorNone = common dso_local global i32 0, align 4
@OMX_StateInvalid = common dso_local global i64 0, align 8
@OMX_ErrorInvalidState = common dso_local global i32 0, align 4
@OMX_ErrorIncorrectStateTransition = common dso_local global i32 0, align 4
@OMX_StateExecuting = common dso_local global i64 0, align 8
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"could not %s %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@state_transition_table = common dso_local global %struct.TYPE_12__* null, align 8
@OMX_StateIdle = common dso_local global i64 0, align 8
@OMX_StateLoaded = common dso_local global i64 0, align 8
@MMALOMX_ACTION_FLUSH = common dso_local global i32 0, align 4
@MMALOMX_ACTION_CHECK_FLUSHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmalomx_command_state_set(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %6, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = load i32, i32* @OMX_EventError, align 4
  %20 = load i32, i32* @OMX_ErrorSameState, align 4
  %21 = call i32 @mmalomx_callback_event_handler(%struct.TYPE_11__* %18, i32 %19, i32 %20, i32 0, i32* null)
  %22 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %22, i32* %3, align 4
  br label %200

23:                                               ; preds = %2
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @OMX_StateInvalid, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = load i32, i32* @OMX_EventError, align 4
  %33 = load i32, i32* @OMX_ErrorInvalidState, align 4
  %34 = call i32 @mmalomx_callback_event_handler(%struct.TYPE_11__* %31, i32 %32, i32 %33, i32 0, i32* null)
  %35 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %35, i32* %3, align 4
  br label %200

36:                                               ; preds = %23
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @vcos_assert(i32 %42)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @mmalomx_state_transition_get(i64 %46, i64 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %36
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = load i32, i32* @OMX_EventError, align 4
  %54 = load i32, i32* @OMX_ErrorIncorrectStateTransition, align 4
  %55 = call i32 @mmalomx_callback_event_handler(%struct.TYPE_11__* %52, i32 %53, i32 %54, i32 0, i32* null)
  %56 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %56, i32* %3, align 4
  br label %200

57:                                               ; preds = %36
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @OMX_StateExecuting, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @OMX_StateExecuting, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %102

67:                                               ; preds = %61, %57
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @OMX_StateExecuting, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @mmal_component_enable(i32 %74)
  store i64 %75, i64* %9, align 8
  br label %81

76:                                               ; preds = %67
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @mmal_component_disable(i32 %79)
  store i64 %80, i64* %9, align 8
  br label %81

81:                                               ; preds = %76, %71
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* @MMAL_SUCCESS, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %81
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* @OMX_StateExecuting, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %90, i32 %93)
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %96 = load i32, i32* @OMX_EventError, align 4
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @mmalil_error_to_omx(i64 %97)
  %99 = call i32 @mmalomx_callback_event_handler(%struct.TYPE_11__* %95, i32 %96, i32 %98, i32 0, i32* null)
  %100 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %100, i32* %3, align 4
  br label %200

101:                                              ; preds = %81
  br label %102

102:                                              ; preds = %101, %61
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %104 = call i32 @MMALOMX_LOCK(%struct.TYPE_11__* %103)
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %191, %102
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = icmp ult i32 %109, %112
  br i1 %113, label %114, label %194

114:                                              ; preds = %108
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %114
  br label %191

125:                                              ; preds = %114
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i64 %131
  %133 = call i32 @MMALOMX_LOCK_PORT(%struct.TYPE_11__* %126, %struct.TYPE_13__* %132)
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** @state_transition_table, align 8
  %135 = load i32, i32* %8, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 3
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  store i32 %139, i32* %146, align 4
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** @state_transition_table, align 8
  %148 = load i32, i32* %8, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @OMX_StateIdle, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %182

155:                                              ; preds = %125
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** @state_transition_table, align 8
  %157 = load i32, i32* %8, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @OMX_StateLoaded, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %182

164:                                              ; preds = %155
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %182

169:                                              ; preds = %164
  %170 = load i32, i32* @MMALOMX_ACTION_FLUSH, align 4
  %171 = load i32, i32* @MMALOMX_ACTION_CHECK_FLUSHED, align 4
  %172 = or i32 %170, %171
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 3
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %174, align 8
  %176 = load i32, i32* %7, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %172
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %169, %164, %155, %125
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 3
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i64 %188
  %190 = call i32 @MMALOMX_UNLOCK_PORT(%struct.TYPE_11__* %183, %struct.TYPE_13__* %189)
  br label %191

191:                                              ; preds = %182, %124
  %192 = load i32, i32* %7, align 4
  %193 = add i32 %192, 1
  store i32 %193, i32* %7, align 4
  br label %108

194:                                              ; preds = %108
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %196 = call i32 @MMALOMX_UNLOCK(%struct.TYPE_11__* %195)
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %198 = call i32 @mmalomx_commands_actions_check(%struct.TYPE_11__* %197)
  %199 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %199, i32* %3, align 4
  br label %200

200:                                              ; preds = %194, %85, %51, %27, %17
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i32 @mmalomx_callback_event_handler(%struct.TYPE_11__*, i32, i32, i32, i32*) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @mmalomx_state_transition_get(i64, i64) #1

declare dso_local i64 @mmal_component_enable(i32) #1

declare dso_local i64 @mmal_component_disable(i32) #1

declare dso_local i32 @LOG_ERROR(i8*, i8*, i32) #1

declare dso_local i32 @mmalil_error_to_omx(i64) #1

declare dso_local i32 @MMALOMX_LOCK(%struct.TYPE_11__*) #1

declare dso_local i32 @MMALOMX_LOCK_PORT(%struct.TYPE_11__*, %struct.TYPE_13__*) #1

declare dso_local i32 @MMALOMX_UNLOCK_PORT(%struct.TYPE_11__*, %struct.TYPE_13__*) #1

declare dso_local i32 @MMALOMX_UNLOCK(%struct.TYPE_11__*) #1

declare dso_local i32 @mmalomx_commands_actions_check(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
