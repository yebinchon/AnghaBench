; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_msg.c_mach_msg_receive_results_complete.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_msg.c_mach_msg_receive_results_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

@IPC_PORT_NULL = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IOT_PORT = common dso_local global i64 0, align 8
@TURNSTILE_NULL = common dso_local global i64 0, align 8
@IPC_PORT_ADJUST_SR_ALLOW_SYNC_LINKAGE = common dso_local global i32 0, align 4
@MACH_RCV_TOO_LARGE = common dso_local global i64 0, align 8
@MACH_RCV_LARGE = common dso_local global i32 0, align 4
@MACH_RCV_INTERRUPTED = common dso_local global i64 0, align 8
@MACH_RCV_TIMED_OUT = common dso_local global i64 0, align 8
@MACH_RCV_PORT_CHANGED = common dso_local global i64 0, align 8
@MACH_PEEK_READY = common dso_local global i64 0, align 8
@IPC_PORT_ADJUST_SR_RECEIVED_MSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mach_msg_receive_results_complete(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = call %struct.TYPE_3__* (...) @current_thread()
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %3, align 8
  %8 = load i64, i64* @IPC_PORT_NULL, align 8
  store i64 %8, i64* %4, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @FALSE, align 4
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @TRUE, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %5, align 4
  %19 = load i64, i64* %2, align 8
  %20 = call i64 @io_otype(i64 %19)
  %21 = load i64, i64* @IOT_PORT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i64, i64* %2, align 8
  store i64 %24, i64* %4, align 8
  %25 = call i32 @__IGNORE_WCASTALIGN(i64 %24)
  br label %34

26:                                               ; preds = %17
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TURNSTILE_NULL, align 8
  %31 = icmp ne i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  br label %81

34:                                               ; preds = %23
  %35 = load i32, i32* @IPC_PORT_ADJUST_SR_ALLOW_SYNC_LINKAGE, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MACH_RCV_TOO_LARGE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @MACH_RCV_LARGE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %76, label %48

48:                                               ; preds = %41, %34
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MACH_RCV_INTERRUPTED, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %76, label %54

54:                                               ; preds = %48
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MACH_RCV_TIMED_OUT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %76, label %60

60:                                               ; preds = %54
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MACH_RCV_PORT_CHANGED, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %76, label %66

66:                                               ; preds = %60
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @MACH_PEEK_READY, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @IPC_PORT_ADJUST_SR_RECEIVED_MSG, align 4
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %72, %66, %60, %54, %48, %41
  %77 = load i64, i64* %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @ipc_port_adjust_special_reply_port(i64 %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %26
  ret void
}

declare dso_local %struct.TYPE_3__* @current_thread(...) #1

declare dso_local i64 @io_otype(i64) #1

declare dso_local i32 @__IGNORE_WCASTALIGN(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ipc_port_adjust_special_reply_port(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
