; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_pset.c_filt_machportdetach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_pset.c_filt_machportdetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.knote = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }

@TURNSTILE_NULL = common dso_local global %struct.turnstile* null, align 8
@KN_VANISHED = common dso_local global i32 0, align 4
@EV_EOF = common dso_local global i32 0, align 4
@IOT_PORT = common dso_local global i64 0, align 8
@TURNSTILE_INHERITOR_TURNSTILE = common dso_local global i32 0, align 4
@TURNSTILE_IMMEDIATE_UPDATE = common dso_local global i32 0, align 4
@IMQ_NULL = common dso_local global %struct.TYPE_10__* null, align 8
@TURNSTILE_INTERLOCK_NOT_HELD = common dso_local global i32 0, align 4
@IOT_PORT_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*)* @filt_machportdetach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filt_machportdetach(%struct.knote* %0) #0 {
  %2 = alloca %struct.knote*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.turnstile*, align 8
  %6 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %2, align 8
  %7 = load %struct.knote*, %struct.knote** %2, align 8
  %8 = getelementptr inbounds %struct.knote, %struct.knote* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %3, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = call i32 @mqueue_to_object(%struct.TYPE_10__* %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  store %struct.turnstile* %13, %struct.turnstile** %5, align 8
  %14 = load %struct.knote*, %struct.knote** %2, align 8
  %15 = call i32 @filt_machport_turnstile_complete(%struct.knote* %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = call i32 @imq_lock(%struct.TYPE_10__* %16)
  %18 = load %struct.knote*, %struct.knote** %2, align 8
  %19 = getelementptr inbounds %struct.knote, %struct.knote* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @KN_VANISHED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %1
  %25 = load %struct.knote*, %struct.knote** %2, align 8
  %26 = getelementptr inbounds %struct.knote, %struct.knote* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @EV_EOF, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24, %1
  br label %40

32:                                               ; preds = %24
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = call i32 @IMQ_KLIST_VALID(%struct.TYPE_10__* %33)
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load %struct.knote*, %struct.knote** %2, align 8
  %39 = call i32 @KNOTE_DETACH(i32* %37, %struct.knote* %38)
  br label %40

40:                                               ; preds = %32, %31
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @io_otype(i32 %41)
  %43 = load i64, i64* @IOT_PORT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = call i32 @ip_from_mq(%struct.TYPE_10__* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call %struct.turnstile* @port_send_turnstile(i32 %48)
  store %struct.turnstile* %49, %struct.turnstile** %5, align 8
  %50 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %51 = icmp ne %struct.turnstile* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  %53 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %54 = call i32 @turnstile_reference(%struct.turnstile* %53)
  %55 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @ipc_port_get_inheritor(i32 %56)
  %58 = load i32, i32* @TURNSTILE_INHERITOR_TURNSTILE, align 4
  %59 = load i32, i32* @TURNSTILE_IMMEDIATE_UPDATE, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @turnstile_update_inheritor(%struct.turnstile* %55, i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %52, %45
  br label %63

63:                                               ; preds = %62, %40
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** @IMQ_NULL, align 8
  %65 = load %struct.knote*, %struct.knote** %2, align 8
  %66 = getelementptr inbounds %struct.knote, %struct.knote* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %67, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = call i32 @imq_unlock(%struct.TYPE_10__* %68)
  %70 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %71 = icmp ne %struct.turnstile* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %63
  %73 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %74 = load i32, i32* @TURNSTILE_INTERLOCK_NOT_HELD, align 4
  %75 = call i32 @turnstile_update_inheritor_complete(%struct.turnstile* %73, i32 %74)
  %76 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %77 = call i32 @turnstile_deallocate(%struct.turnstile* %76)
  br label %78

78:                                               ; preds = %72, %63
  %79 = load i32, i32* %4, align 4
  %80 = call i64 @io_otype(i32 %79)
  %81 = load i64, i64* @IOT_PORT_SET, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.knote*, %struct.knote** %2, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = call i32 @knote_unlink_waitq(%struct.knote* %84, i32* %86)
  br label %88

88:                                               ; preds = %83, %78
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @io_release(i32 %89)
  ret void
}

declare dso_local i32 @mqueue_to_object(%struct.TYPE_10__*) #1

declare dso_local i32 @filt_machport_turnstile_complete(%struct.knote*) #1

declare dso_local i32 @imq_lock(%struct.TYPE_10__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IMQ_KLIST_VALID(%struct.TYPE_10__*) #1

declare dso_local i32 @KNOTE_DETACH(i32*, %struct.knote*) #1

declare dso_local i64 @io_otype(i32) #1

declare dso_local i32 @ip_from_mq(%struct.TYPE_10__*) #1

declare dso_local %struct.turnstile* @port_send_turnstile(i32) #1

declare dso_local i32 @turnstile_reference(%struct.turnstile*) #1

declare dso_local i32 @turnstile_update_inheritor(%struct.turnstile*, i32, i32) #1

declare dso_local i32 @ipc_port_get_inheritor(i32) #1

declare dso_local i32 @imq_unlock(%struct.TYPE_10__*) #1

declare dso_local i32 @turnstile_update_inheritor_complete(%struct.turnstile*, i32) #1

declare dso_local i32 @turnstile_deallocate(%struct.turnstile*) #1

declare dso_local i32 @knote_unlink_waitq(%struct.knote*, i32*) #1

declare dso_local i32 @io_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
