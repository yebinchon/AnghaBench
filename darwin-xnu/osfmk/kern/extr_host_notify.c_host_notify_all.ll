; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_host_notify.c_host_notify_all.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_host_notify.c_host_notify_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__*, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_20__ = type { %struct.TYPE_22__* }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_24__*, i32, i8*, i8*, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }

@host_notify_queue = common dso_local global %struct.TYPE_22__* null, align 8
@host_notify_lock = common dso_local global i32 0, align 4
@MACH_MSG_TYPE_MOVE_SEND_ONCE = common dso_local global i32 0, align 4
@MACH_PORT_NULL = common dso_local global i8* null, align 8
@host_notify_replyid = common dso_local global i32* null, align 8
@IP_NULL = common dso_local global %struct.TYPE_24__* null, align 8
@IKOT_HOST_NOTIFY = common dso_local global i64 0, align 8
@IKO_NULL = common dso_local global i32 0, align 4
@IKOT_NONE = common dso_local global i32 0, align 4
@host_notify_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.TYPE_23__*, i32)* @host_notify_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @host_notify_all(i64 %0, %struct.TYPE_23__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_22__, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** @host_notify_queue, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i64 %12
  store %struct.TYPE_22__* %13, %struct.TYPE_22__** %7, align 8
  %14 = call i32 @lck_mtx_lock(i32* @host_notify_lock)
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %16 = call i32 @queue_empty(%struct.TYPE_22__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %93, label %18

18:                                               ; preds = %3
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %20 = bitcast %struct.TYPE_22__* %8 to i8*
  %21 = bitcast %struct.TYPE_22__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %23 = call i32 @queue_init(%struct.TYPE_22__* %22)
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  store %struct.TYPE_22__* %8, %struct.TYPE_22__** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  store %struct.TYPE_22__* %8, %struct.TYPE_22__** %29, align 8
  %30 = load i32, i32* @MACH_MSG_TYPE_MOVE_SEND_ONCE, align 4
  %31 = call i32 @MACH_MSGH_BITS_SET(i32 %30, i32 0, i32 0, i32 0)
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** @MACH_PORT_NULL, align 8
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @MACH_PORT_NULL, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load i32*, i32** @host_notify_replyid, align 8
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %50, %18
  %47 = call i64 @dequeue(%struct.TYPE_22__* %8)
  %48 = inttoptr i64 %47 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %48, %struct.TYPE_25__** %9, align 8
  %49 = icmp ne %struct.TYPE_25__* %48, null
  br i1 %49, label %50, label %92

50:                                               ; preds = %46
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %52, align 8
  store %struct.TYPE_24__* %53, %struct.TYPE_24__** %10, align 8
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** @IP_NULL, align 8
  %56 = icmp ne %struct.TYPE_24__* %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %60 = call i32 @ip_lock(%struct.TYPE_24__* %59)
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %62 = call i64 @ip_kotype(%struct.TYPE_24__* %61)
  %63 = load i64, i64* @IKOT_HOST_NOTIFY, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %71 = ptrtoint %struct.TYPE_25__* %70 to i64
  %72 = icmp eq i64 %69, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %76 = load i32, i32* @IKO_NULL, align 4
  %77 = load i32, i32* @IKOT_NONE, align 4
  %78 = call i32 @ipc_kobject_set_atomically(%struct.TYPE_24__* %75, i32 %76, i32 %77)
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %80 = call i32 @ip_unlock(%struct.TYPE_24__* %79)
  %81 = call i32 @lck_mtx_unlock(i32* @host_notify_lock)
  %82 = load i32, i32* @host_notify_zone, align 4
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %84 = call i32 @zfree(i32 %82, %struct.TYPE_25__* %83)
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  store %struct.TYPE_24__* %85, %struct.TYPE_24__** %87, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @mach_msg_send_from_kernel_proper(%struct.TYPE_23__* %88, i32 %89)
  %91 = call i32 @lck_mtx_lock(i32* @host_notify_lock)
  br label %46

92:                                               ; preds = %46
  br label %93

93:                                               ; preds = %92, %3
  %94 = call i32 @lck_mtx_unlock(i32* @host_notify_lock)
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @queue_empty(%struct.TYPE_22__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @queue_init(%struct.TYPE_22__*) #1

declare dso_local i32 @MACH_MSGH_BITS_SET(i32, i32, i32, i32) #1

declare dso_local i64 @dequeue(%struct.TYPE_22__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ip_lock(%struct.TYPE_24__*) #1

declare dso_local i64 @ip_kotype(%struct.TYPE_24__*) #1

declare dso_local i32 @ipc_kobject_set_atomically(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_24__*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @zfree(i32, %struct.TYPE_25__*) #1

declare dso_local i32 @mach_msg_send_from_kernel_proper(%struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
