; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_filesys.c_vc_filesys_stop.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_filesys.c_vc_filesys_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i64, i32 }

@vc_filesys_client = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vc_filesys_stop() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = call i64 (...) @lock_obtain()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %23

6:                                                ; preds = %0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vc_filesys_client, i32 0, i32 6), align 8
  %8 = call i64 @vchi_service_close(i32 %7)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @vcos_assert(i32 %11)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vc_filesys_client, i32 0, i32 5), align 8
  %13 = call i32 @vcos_event_signal(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vc_filesys_client, i32 0, i32 3))
  %14 = call i32 @vcos_thread_join(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vc_filesys_client, i32 0, i32 4), i8** %2)
  %15 = call i32 @vcos_event_delete(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vc_filesys_client, i32 0, i32 3))
  %16 = call i32 @vcos_event_delete(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vc_filesys_client, i32 0, i32 2))
  %17 = call i32 @vcos_mutex_delete(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vc_filesys_client, i32 0, i32 1))
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vc_filesys_client, i32 0, i32 0), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vc_filesys_client, i32 0, i32 0), align 8
  %22 = call i32 @vcos_free(i64 %21)
  br label %23

23:                                               ; preds = %5, %20, %6
  ret void
}

declare dso_local i64 @lock_obtain(...) #1

declare dso_local i64 @vchi_service_close(i32) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @vcos_event_signal(i32*) #1

declare dso_local i32 @vcos_thread_join(i32*, i8**) #1

declare dso_local i32 @vcos_event_delete(i32*) #1

declare dso_local i32 @vcos_mutex_delete(i32*) #1

declare dso_local i32 @vcos_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
