; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_stackshot.c_stackshot_thread_wait_owner_info.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_stackshot.c_stackshot_thread_wait_owner_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_18__*)* @stackshot_thread_wait_owner_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stackshot_thread_wait_owner_info(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %5 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %6 = call i32 @thread_tid(%struct.TYPE_19__* %5)
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 4
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %89 [
    i32 141, label %17
    i32 132, label %26
    i32 131, label %35
    i32 130, label %44
    i32 129, label %53
    i32 140, label %62
    i32 138, label %62
    i32 139, label %62
    i32 135, label %71
    i32 134, label %71
    i32 133, label %71
    i32 136, label %71
    i32 128, label %75
    i32 137, label %82
  ]

17:                                               ; preds = %2
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %25 = call i32 @kdp_lck_mtx_find_owner(i32 %20, i32 %23, %struct.TYPE_18__* %24)
  br label %94

26:                                               ; preds = %2
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %34 = call i32 @kdp_mqueue_recv_find_owner(i32 %29, i32 %32, %struct.TYPE_18__* %33)
  br label %94

35:                                               ; preds = %2
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %43 = call i32 @kdp_mqueue_send_find_owner(i32 %38, i32 %41, %struct.TYPE_18__* %42)
  br label %94

44:                                               ; preds = %2
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %52 = call i32 @kdp_sema_find_owner(i32 %47, i32 %50, %struct.TYPE_18__* %51)
  br label %94

53:                                               ; preds = %2
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %61 = call i32 @kdp_ulock_find_owner(i32 %56, i32 %59, %struct.TYPE_18__* %60)
  br label %94

62:                                               ; preds = %2, %2, %2
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %70 = call i32 @kdp_rwlck_find_owner(i32 %65, i32 %68, %struct.TYPE_18__* %69)
  br label %94

71:                                               ; preds = %2, %2, %2, %2
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %74 = call i32 @kdp_pthread_find_owner(%struct.TYPE_19__* %72, %struct.TYPE_18__* %73)
  br label %94

75:                                               ; preds = %2
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %81 = call i32 @kdp_workloop_sync_wait_find_owner(%struct.TYPE_19__* %76, i32 %79, %struct.TYPE_18__* %80)
  br label %94

82:                                               ; preds = %2
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %88 = call i32 @kdp_wait4_find_process(%struct.TYPE_19__* %83, i32 %86, %struct.TYPE_18__* %87)
  br label %94

89:                                               ; preds = %2
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 2
  store i32 0, i32* %91, align 4
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  store i32 0, i32* %93, align 4
  br label %94

94:                                               ; preds = %89, %82, %75, %71, %62, %53, %44, %35, %26, %17
  ret void
}

declare dso_local i32 @thread_tid(%struct.TYPE_19__*) #1

declare dso_local i32 @kdp_lck_mtx_find_owner(i32, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @kdp_mqueue_recv_find_owner(i32, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @kdp_mqueue_send_find_owner(i32, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @kdp_sema_find_owner(i32, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @kdp_ulock_find_owner(i32, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @kdp_rwlck_find_owner(i32, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @kdp_pthread_find_owner(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @kdp_workloop_sync_wait_find_owner(%struct.TYPE_19__*, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @kdp_wait4_find_process(%struct.TYPE_19__*, i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
