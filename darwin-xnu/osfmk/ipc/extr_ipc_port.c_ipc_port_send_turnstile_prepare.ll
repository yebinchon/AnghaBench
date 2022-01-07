; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_port.c_ipc_port_send_turnstile_prepare.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_port.c_ipc_port_send_turnstile_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i64 }
%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_8__* }

@TURNSTILE_NULL = common dso_local global %struct.turnstile* null, align 8
@TURNSTILE_SYNC_IPC = common dso_local global i32 0, align 4
@MACH_PORT_NULL = common dso_local global i64 0, align 8
@IP_NULL = common dso_local global %struct.TYPE_8__* null, align 8
@TURNSTILE_INHERITOR_TURNSTILE = common dso_local global i32 0, align 4
@TURNSTILE_IMMEDIATE_UPDATE = common dso_local global i32 0, align 4
@TURNSTILE_INTERLOCK_NOT_HELD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_port_send_turnstile_prepare(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.turnstile*, align 8
  %4 = alloca %struct.turnstile*, align 8
  %5 = alloca %struct.turnstile*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %6 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  store %struct.turnstile* %6, %struct.turnstile** %3, align 8
  %7 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  store %struct.turnstile* %7, %struct.turnstile** %4, align 8
  %8 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  store %struct.turnstile* %8, %struct.turnstile** %5, align 8
  br label %9

9:                                                ; preds = %26, %1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = call i32 @imq_lock(i32* %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = call %struct.turnstile* @port_send_turnstile(%struct.TYPE_8__* %13)
  %15 = icmp eq %struct.turnstile* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %9
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = call %struct.turnstile* @port_send_turnstile(%struct.TYPE_8__* %17)
  %19 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %84

22:                                               ; preds = %16, %9
  %23 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %24 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  %25 = icmp eq %struct.turnstile* %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = call i32 @imq_unlock(i32* %28)
  %30 = call %struct.turnstile* (...) @turnstile_alloc()
  store %struct.turnstile* %30, %struct.turnstile** %3, align 8
  br label %9

31:                                               ; preds = %22
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = ptrtoint %struct.TYPE_8__* %32 to i64
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = call i32 @port_send_turnstile_address(%struct.TYPE_8__* %34)
  %36 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %37 = load i32, i32* @TURNSTILE_SYNC_IPC, align 4
  %38 = call %struct.turnstile* @turnstile_prepare(i64 %33, i32 %35, %struct.turnstile* %36, i32 %37)
  store %struct.turnstile* %38, %struct.turnstile** %5, align 8
  %39 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  store %struct.turnstile* %39, %struct.turnstile** %3, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %41 = call i64 @ip_active(%struct.TYPE_8__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %74

43:                                               ; preds = %31
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MACH_PORT_NULL, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %43
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** @IP_NULL, align 8
  %54 = icmp ne %struct.TYPE_8__* %52, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %49
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MACH_PORT_NULL, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** @IP_NULL, align 8
  %67 = icmp ne %struct.TYPE_8__* %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = call %struct.turnstile* @port_send_turnstile(%struct.TYPE_8__* %72)
  store %struct.turnstile* %73, %struct.turnstile** %4, align 8
  br label %77

74:                                               ; preds = %49, %43, %31
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %76 = call %struct.turnstile* @ipc_port_get_inheritor(%struct.TYPE_8__* %75)
  store %struct.turnstile* %76, %struct.turnstile** %4, align 8
  br label %77

77:                                               ; preds = %74, %55
  %78 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %79 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %80 = load i32, i32* @TURNSTILE_INHERITOR_TURNSTILE, align 4
  %81 = load i32, i32* @TURNSTILE_IMMEDIATE_UPDATE, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @turnstile_update_inheritor(%struct.turnstile* %78, %struct.turnstile* %79, i32 %82)
  br label %84

84:                                               ; preds = %77, %16
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %86 = call %struct.turnstile* @port_send_turnstile(%struct.TYPE_8__* %85)
  %87 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %87, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = call i32 @imq_unlock(i32* %91)
  %93 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %94 = icmp ne %struct.turnstile* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %84
  %96 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %97 = load i32, i32* @TURNSTILE_INTERLOCK_NOT_HELD, align 4
  %98 = call i32 @turnstile_update_inheritor_complete(%struct.turnstile* %96, i32 %97)
  br label %99

99:                                               ; preds = %95, %84
  %100 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %101 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  %102 = icmp ne %struct.turnstile* %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %105 = call i32 @turnstile_deallocate(%struct.turnstile* %104)
  br label %106

106:                                              ; preds = %103, %99
  ret void
}

declare dso_local i32 @imq_lock(i32*) #1

declare dso_local %struct.turnstile* @port_send_turnstile(%struct.TYPE_8__*) #1

declare dso_local i32 @imq_unlock(i32*) #1

declare dso_local %struct.turnstile* @turnstile_alloc(...) #1

declare dso_local %struct.turnstile* @turnstile_prepare(i64, i32, %struct.turnstile*, i32) #1

declare dso_local i32 @port_send_turnstile_address(%struct.TYPE_8__*) #1

declare dso_local i64 @ip_active(%struct.TYPE_8__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.turnstile* @ipc_port_get_inheritor(%struct.TYPE_8__*) #1

declare dso_local i32 @turnstile_update_inheritor(%struct.turnstile*, %struct.turnstile*, i32) #1

declare dso_local i32 @turnstile_update_inheritor_complete(%struct.turnstile*, i32) #1

declare dso_local i32 @turnstile_deallocate(%struct.turnstile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
