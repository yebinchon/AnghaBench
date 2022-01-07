; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_port.c_ipc_port_send_turnstile_complete.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_port.c_ipc_port_send_turnstile_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@TURNSTILE_NULL = common dso_local global %struct.turnstile* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_port_send_turnstile_complete(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.turnstile*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  store %struct.turnstile* %4, %struct.turnstile** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = call i32 @imq_lock(i32* %6)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = call %struct.TYPE_7__* @port_send_turnstile(%struct.TYPE_6__* %8)
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* %10, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = call %struct.TYPE_7__* @port_send_turnstile(%struct.TYPE_6__* %13)
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = ptrtoint %struct.TYPE_6__* %19 to i64
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = call i32 @port_send_turnstile_address(%struct.TYPE_6__* %21)
  %23 = call i32 @turnstile_complete(i64 %20, i32 %22, %struct.turnstile** %3)
  %24 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %25 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  %26 = icmp ne %struct.turnstile* %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  br label %29

29:                                               ; preds = %18, %1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = call i32 @imq_unlock(i32* %31)
  %33 = call i32 (...) @turnstile_cleanup()
  %34 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %35 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  %36 = icmp ne %struct.turnstile* %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %39 = call i32 @turnstile_deallocate_safe(%struct.turnstile* %38)
  %40 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  store %struct.turnstile* %40, %struct.turnstile** %3, align 8
  br label %41

41:                                               ; preds = %37, %29
  ret void
}

declare dso_local i32 @imq_lock(i32*) #1

declare dso_local %struct.TYPE_7__* @port_send_turnstile(%struct.TYPE_6__*) #1

declare dso_local i32 @turnstile_complete(i64, i32, %struct.turnstile**) #1

declare dso_local i32 @port_send_turnstile_address(%struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @imq_unlock(i32*) #1

declare dso_local i32 @turnstile_cleanup(...) #1

declare dso_local i32 @turnstile_deallocate_safe(%struct.turnstile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
