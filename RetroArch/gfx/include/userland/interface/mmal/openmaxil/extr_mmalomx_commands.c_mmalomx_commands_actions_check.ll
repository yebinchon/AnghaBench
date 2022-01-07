; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_commands.c_mmalomx_commands_actions_check.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_commands.c_mmalomx_commands_actions_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@state_transition_table = common dso_local global %struct.TYPE_11__* null, align 8
@MMALOMX_ACTION_NOTIFY_STATE = common dso_local global i32 0, align 4
@OMX_EventCmdComplete = common dso_local global i32 0, align 4
@OMX_CommandStateSet = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmalomx_commands_actions_check(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %5
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i64 %17
  %19 = call i32 @mmalomx_commands_check_port_actions(%struct.TYPE_10__* %12, %struct.TYPE_12__* %18)
  br label %20

20:                                               ; preds = %11
  %21 = load i32, i32* %4, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %5

23:                                               ; preds = %5
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = call i32 @MMALOMX_LOCK(%struct.TYPE_10__* %24)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %43, %23
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %32
  %44 = load i32, i32* %4, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %26

46:                                               ; preds = %26
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %46
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** @state_transition_table, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* @MMALOMX_ACTION_NOTIFY_STATE, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %54, %49, %46
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %69 = call i32 @MMALOMX_UNLOCK(%struct.TYPE_10__* %68)
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @MMALOMX_ACTION_NOTIFY_STATE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %75 = load i32, i32* @OMX_EventCmdComplete, align 4
  %76 = load i32, i32* @OMX_CommandStateSet, align 4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @mmalomx_callback_event_handler(%struct.TYPE_10__* %74, i32 %75, i32 %76, i32 %79, i32* null)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %73, %67
  %82 = load i32, i32* %3, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %86 = call i32 @mmalomx_commands_actions_next(%struct.TYPE_10__* %85)
  br label %87

87:                                               ; preds = %84, %81
  ret void
}

declare dso_local i32 @mmalomx_commands_check_port_actions(%struct.TYPE_10__*, %struct.TYPE_12__*) #1

declare dso_local i32 @MMALOMX_LOCK(%struct.TYPE_10__*) #1

declare dso_local i32 @MMALOMX_UNLOCK(%struct.TYPE_10__*) #1

declare dso_local i32 @mmalomx_callback_event_handler(%struct.TYPE_10__*, i32, i32, i32, i32*) #1

declare dso_local i32 @mmalomx_commands_actions_next(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
