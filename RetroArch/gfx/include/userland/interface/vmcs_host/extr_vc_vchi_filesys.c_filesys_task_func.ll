; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_filesys.c_filesys_task_func.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_filesys.c_filesys_task_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@vc_filesys_client = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@VCHI_FLAGS_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @filesys_task_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @filesys_task_func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 (...) @vc_hostfs_init()
  br label %7

7:                                                ; preds = %1, %29
  %8 = call i64 @vcos_event_wait(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vc_filesys_client, i32 0, i32 3))
  %9 = load i64, i64* @VCOS_SUCCESS, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vc_filesys_client, i32 0, i32 0), align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %7
  br label %32

15:                                               ; preds = %11
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vc_filesys_client, i32 0, i32 1), align 8
  %17 = call i32 @vchi_service_use(i32 %16)
  br label %18

18:                                               ; preds = %15, %25
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vc_filesys_client, i32 0, i32 1), align 8
  %20 = load i32, i32* @VCHI_FLAGS_NONE, align 4
  %21 = call i64 @vchi_msg_dequeue(i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vc_filesys_client, i32 0, i32 2), i32 4, i32* %4, i32 %20)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %29

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @vc_fs_message_handler(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vc_filesys_client, i32 0, i32 2), i32 %26)
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  br label %18

29:                                               ; preds = %24
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vc_filesys_client, i32 0, i32 1), align 8
  %31 = call i32 @vchi_service_release(i32 %30)
  br label %7

32:                                               ; preds = %14
  ret i8* null
}

declare dso_local i32 @vc_hostfs_init(...) #1

declare dso_local i64 @vcos_event_wait(i32*) #1

declare dso_local i32 @vchi_service_use(i32) #1

declare dso_local i64 @vchi_msg_dequeue(i32, i32*, i32, i32*, i32) #1

declare dso_local i64 @vc_fs_message_handler(i32*, i32) #1

declare dso_local i32 @vchi_service_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
