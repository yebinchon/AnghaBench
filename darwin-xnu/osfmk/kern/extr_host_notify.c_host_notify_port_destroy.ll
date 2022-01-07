; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_host_notify.c_host_notify_port_destroy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_host_notify.c_host_notify_port_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }

@host_notify_lock = common dso_local global i32 0, align 4
@IKOT_HOST_NOTIFY = common dso_local global i64 0, align 8
@IKO_NULL = common dso_local global i32 0, align 4
@IKOT_NONE = common dso_local global i32 0, align 4
@host_notify_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @host_notify_port_destroy(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = call i32 @lck_mtx_lock(i32* @host_notify_lock)
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = call i32 @ip_lock(%struct.TYPE_10__* %5)
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = call i64 @ip_kotype(%struct.TYPE_10__* %7)
  %9 = load i64, i64* @IKOT_HOST_NOTIFY, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %42

11:                                               ; preds = %1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %3, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = icmp ne %struct.TYPE_11__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = load i32, i32* @IKO_NULL, align 4
  %22 = load i32, i32* @IKOT_NONE, align 4
  %23 = call i32 @ipc_kobject_set_atomically(%struct.TYPE_10__* %20, i32 %21, i32 %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = call i32 @ip_unlock(%struct.TYPE_10__* %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %30 = icmp eq %struct.TYPE_10__* %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = ptrtoint %struct.TYPE_11__* %33 to i32
  %35 = call i32 @remqueue(i32 %34)
  %36 = call i32 @lck_mtx_unlock(i32* @host_notify_lock)
  %37 = load i32, i32* @host_notify_zone, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = call i32 @zfree(i32 %37, %struct.TYPE_11__* %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %41 = call i32 @ipc_port_release_sonce(%struct.TYPE_10__* %40)
  br label %46

42:                                               ; preds = %1
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %44 = call i32 @ip_unlock(%struct.TYPE_10__* %43)
  %45 = call i32 @lck_mtx_unlock(i32* @host_notify_lock)
  br label %46

46:                                               ; preds = %42, %11
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @ip_lock(%struct.TYPE_10__*) #1

declare dso_local i64 @ip_kotype(%struct.TYPE_10__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ipc_kobject_set_atomically(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_10__*) #1

declare dso_local i32 @remqueue(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @zfree(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @ipc_port_release_sonce(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
