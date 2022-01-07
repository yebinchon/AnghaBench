; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_host_notify.c_host_request_notification.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_host_notify.c_host_request_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }

@HOST_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KERN_INVALID_CAPABILITY = common dso_local global i32 0, align 4
@HOST_NOTIFY_TYPE_MAX = common dso_local global i64 0, align 8
@host_notify_zone = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@host_notify_lock = common dso_local global i32 0, align 4
@IKOT_NONE = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4
@IKOT_HOST_NOTIFY = common dso_local global i32 0, align 4
@host_notify_queue = common dso_local global i32* null, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @host_request_notification(i64 %0, i64 %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @HOST_NULL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %13, i32* %4, align 4
  br label %81

14:                                               ; preds = %3
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %16 = call i32 @IP_VALID(%struct.TYPE_11__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @KERN_INVALID_CAPABILITY, align 4
  store i32 %19, i32* %4, align 4
  br label %81

20:                                               ; preds = %14
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @HOST_NOTIFY_TYPE_MAX, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %6, align 8
  %26 = icmp ult i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %20
  %28 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %28, i32* %4, align 4
  br label %81

29:                                               ; preds = %24
  %30 = load i32, i32* @host_notify_zone, align 4
  %31 = call i64 @zalloc(i32 %30)
  %32 = inttoptr i64 %31 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %8, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %34 = icmp eq %struct.TYPE_12__* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %36, i32* %4, align 4
  br label %81

37:                                               ; preds = %29
  %38 = call i32 @lck_mtx_lock(i32* @host_notify_lock)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %40 = call i32 @ip_lock(%struct.TYPE_11__* %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = call i32 @ip_active(%struct.TYPE_11__* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = call i64 @ip_kotype(%struct.TYPE_11__* %50)
  %52 = load i64, i64* @IKOT_NONE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %49, %44, %37
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %56 = call i32 @ip_unlock(%struct.TYPE_11__* %55)
  %57 = call i32 @lck_mtx_unlock(i32* @host_notify_lock)
  %58 = load i32, i32* @host_notify_zone, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %60 = call i32 @zfree(i32 %58, %struct.TYPE_12__* %59)
  %61 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %61, i32* %4, align 4
  br label %81

62:                                               ; preds = %49
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store %struct.TYPE_11__* %63, %struct.TYPE_11__** %65, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %68 = ptrtoint %struct.TYPE_12__* %67 to i32
  %69 = load i32, i32* @IKOT_HOST_NOTIFY, align 4
  %70 = call i32 @ipc_kobject_set_atomically(%struct.TYPE_11__* %66, i32 %68, i32 %69)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %72 = call i32 @ip_unlock(%struct.TYPE_11__* %71)
  %73 = load i32*, i32** @host_notify_queue, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %77 = ptrtoint %struct.TYPE_12__* %76 to i32
  %78 = call i32 @enqueue_tail(i32* %75, i32 %77)
  %79 = call i32 @lck_mtx_unlock(i32* @host_notify_lock)
  %80 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %62, %54, %35, %27, %18, %12
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @IP_VALID(%struct.TYPE_11__*) #1

declare dso_local i64 @zalloc(i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @ip_lock(%struct.TYPE_11__*) #1

declare dso_local i32 @ip_active(%struct.TYPE_11__*) #1

declare dso_local i64 @ip_kotype(%struct.TYPE_11__*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_11__*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @zfree(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @ipc_kobject_set_atomically(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @enqueue_tail(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
