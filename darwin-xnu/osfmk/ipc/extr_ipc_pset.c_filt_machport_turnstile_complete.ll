; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_pset.c_filt_machport_turnstile_complete.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_pset.c_filt_machport_turnstile_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32 }
%struct.knote = type { %struct.turnstile*, i64* }
%struct.TYPE_12__ = type { i64, %struct.knote*, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@TURNSTILE_NULL = common dso_local global %struct.turnstile* null, align 8
@PORT_SYNC_LINK_WORKLOOP_KNOTE = common dso_local global i64 0, align 8
@IPC_PORT_ADJUST_SR_NONE = common dso_local global i32 0, align 4
@IPC_PORT_ADJUST_SR_ENABLE_EVENT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TURNSTILE_INHERITOR_NULL = common dso_local global i32 0, align 4
@TURNSTILE_IMMEDIATE_UPDATE = common dso_local global i32 0, align 4
@TURNSTILE_INTERLOCK_NOT_HELD = common dso_local global i32 0, align 4
@TURNSTILE_INTERLOCK_HELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*)* @filt_machport_turnstile_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filt_machport_turnstile_complete(%struct.knote* %0) #0 {
  %2 = alloca %struct.knote*, align 8
  %3 = alloca %struct.turnstile*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.turnstile*, align 8
  store %struct.knote* %0, %struct.knote** %2, align 8
  %7 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  store %struct.turnstile* %7, %struct.turnstile** %3, align 8
  %8 = load %struct.knote*, %struct.knote** %2, align 8
  %9 = getelementptr inbounds %struct.knote, %struct.knote* %8, i32 0, i32 1
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %105

14:                                               ; preds = %1
  %15 = load %struct.knote*, %struct.knote** %2, align 8
  %16 = getelementptr inbounds %struct.knote, %struct.knote* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 3
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %4, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 3
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %5, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = call i32 @ip_lock(%struct.TYPE_12__* %23)
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %14
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PORT_SYNC_LINK_WORKLOOP_KNOTE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load %struct.knote*, %struct.knote** %37, align 8
  %39 = load %struct.knote*, %struct.knote** %2, align 8
  %40 = icmp eq %struct.knote* %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = load i32, i32* @IPC_PORT_ADJUST_SR_NONE, align 4
  %44 = load i32, i32* @IPC_PORT_ADJUST_SR_ENABLE_EVENT, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @FALSE, align 4
  %47 = call i32 @ipc_port_adjust_special_reply_port_locked(%struct.TYPE_12__* %42, i32* null, i32 %45, i32 %46)
  br label %51

48:                                               ; preds = %35, %29
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = call i32 @ip_unlock(%struct.TYPE_12__* %49)
  br label %51

51:                                               ; preds = %48, %41
  br label %98

52:                                               ; preds = %14
  %53 = load %struct.knote*, %struct.knote** %2, align 8
  %54 = call i32 @knote_get_kq(%struct.knote* %53)
  %55 = call %struct.turnstile* @kqueue_turnstile(i32 %54)
  store %struct.turnstile* %55, %struct.turnstile** %6, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %57 = call i32 @imq_lock(%struct.TYPE_13__* %56)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %59 = call i32 @IMQ_KLIST_VALID(%struct.TYPE_13__* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %74, label %61

61:                                               ; preds = %52
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %63 = call %struct.turnstile* @IMQ_INHERITOR(%struct.TYPE_13__* %62)
  %64 = load %struct.turnstile*, %struct.turnstile** %6, align 8
  %65 = icmp eq %struct.turnstile* %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.turnstile*, %struct.turnstile** %6, align 8
  %68 = call i32 @turnstile_deallocate_safe(%struct.turnstile* %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = call i32 @klist_init(i32* %70)
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %73 = call %struct.turnstile* @port_send_turnstile(%struct.TYPE_12__* %72)
  store %struct.turnstile* %73, %struct.turnstile** %3, align 8
  br label %74

74:                                               ; preds = %66, %61, %52
  %75 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %76 = icmp ne %struct.turnstile* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %79 = load i32, i32* @TURNSTILE_INHERITOR_NULL, align 4
  %80 = load i32, i32* @TURNSTILE_IMMEDIATE_UPDATE, align 4
  %81 = call i32 @turnstile_update_inheritor(%struct.turnstile* %78, i32 %79, i32 %80)
  %82 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %83 = call i32 @turnstile_reference(%struct.turnstile* %82)
  br label %84

84:                                               ; preds = %77, %74
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %86 = call i32 @imq_unlock(%struct.TYPE_13__* %85)
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = call i32 @ip_unlock(%struct.TYPE_12__* %87)
  %89 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %90 = icmp ne %struct.turnstile* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %93 = load i32, i32* @TURNSTILE_INTERLOCK_NOT_HELD, align 4
  %94 = call i32 @turnstile_update_inheritor_complete(%struct.turnstile* %92, i32 %93)
  %95 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %96 = call i32 @turnstile_deallocate(%struct.turnstile* %95)
  br label %97

97:                                               ; preds = %91, %84
  br label %98

98:                                               ; preds = %97, %51
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %100 = call i32 @ip_release(%struct.TYPE_12__* %99)
  %101 = load %struct.knote*, %struct.knote** %2, align 8
  %102 = getelementptr inbounds %struct.knote, %struct.knote* %101, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 3
  store i64 0, i64* %104, align 8
  br label %105

105:                                              ; preds = %98, %1
  %106 = load %struct.knote*, %struct.knote** %2, align 8
  %107 = getelementptr inbounds %struct.knote, %struct.knote* %106, i32 0, i32 0
  %108 = load %struct.turnstile*, %struct.turnstile** %107, align 8
  %109 = icmp ne %struct.turnstile* %108, null
  br i1 %109, label %110, label %131

110:                                              ; preds = %105
  %111 = load %struct.knote*, %struct.knote** %2, align 8
  %112 = getelementptr inbounds %struct.knote, %struct.knote* %111, i32 0, i32 0
  %113 = load %struct.turnstile*, %struct.turnstile** %112, align 8
  store %struct.turnstile* %113, %struct.turnstile** %3, align 8
  %114 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %115 = load i32, i32* @TURNSTILE_INHERITOR_NULL, align 4
  %116 = load i32, i32* @TURNSTILE_IMMEDIATE_UPDATE, align 4
  %117 = call i32 @turnstile_update_inheritor(%struct.turnstile* %114, i32 %115, i32 %116)
  %118 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %119 = load i32, i32* @TURNSTILE_INTERLOCK_HELD, align 4
  %120 = call i32 @turnstile_update_inheritor_complete(%struct.turnstile* %118, i32 %119)
  %121 = load %struct.knote*, %struct.knote** %2, align 8
  %122 = ptrtoint %struct.knote* %121 to i64
  %123 = load %struct.knote*, %struct.knote** %2, align 8
  %124 = getelementptr inbounds %struct.knote, %struct.knote* %123, i32 0, i32 0
  %125 = call i32 @turnstile_complete(i64 %122, %struct.turnstile** %124, %struct.turnstile** %3)
  %126 = call i32 (...) @turnstile_cleanup()
  %127 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %128 = call i32 @assert(%struct.turnstile* %127)
  %129 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %130 = call i32 @turnstile_deallocate(%struct.turnstile* %129)
  br label %131

131:                                              ; preds = %110, %105
  ret void
}

declare dso_local i32 @ip_lock(%struct.TYPE_12__*) #1

declare dso_local i32 @ipc_port_adjust_special_reply_port_locked(%struct.TYPE_12__*, i32*, i32, i32) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_12__*) #1

declare dso_local %struct.turnstile* @kqueue_turnstile(i32) #1

declare dso_local i32 @knote_get_kq(%struct.knote*) #1

declare dso_local i32 @imq_lock(%struct.TYPE_13__*) #1

declare dso_local i32 @IMQ_KLIST_VALID(%struct.TYPE_13__*) #1

declare dso_local %struct.turnstile* @IMQ_INHERITOR(%struct.TYPE_13__*) #1

declare dso_local i32 @turnstile_deallocate_safe(%struct.turnstile*) #1

declare dso_local i32 @klist_init(i32*) #1

declare dso_local %struct.turnstile* @port_send_turnstile(%struct.TYPE_12__*) #1

declare dso_local i32 @turnstile_update_inheritor(%struct.turnstile*, i32, i32) #1

declare dso_local i32 @turnstile_reference(%struct.turnstile*) #1

declare dso_local i32 @imq_unlock(%struct.TYPE_13__*) #1

declare dso_local i32 @turnstile_update_inheritor_complete(%struct.turnstile*, i32) #1

declare dso_local i32 @turnstile_deallocate(%struct.turnstile*) #1

declare dso_local i32 @ip_release(%struct.TYPE_12__*) #1

declare dso_local i32 @turnstile_complete(i64, %struct.turnstile**, %struct.turnstile**) #1

declare dso_local i32 @turnstile_cleanup(...) #1

declare dso_local i32 @assert(%struct.turnstile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
