; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_work_interval.c_work_interval_port_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_work_interval.c_work_interval_port_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_interval = type { i64 }

@IP_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"failed to allocate work interval port\00", align 1
@IKOT_WORK_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.work_interval*)* @work_interval_port_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @work_interval_port_alloc(%struct.work_interval* %0) #0 {
  %2 = alloca %struct.work_interval*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.work_interval* %0, %struct.work_interval** %2, align 8
  %7 = call i64 (...) @ipc_port_alloc_kernel()
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @IP_NULL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %1
  %14 = load %struct.work_interval*, %struct.work_interval** %2, align 8
  %15 = getelementptr inbounds %struct.work_interval, %struct.work_interval* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IP_NULL, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @ip_lock(i64 %21)
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.work_interval*, %struct.work_interval** %2, align 8
  %25 = ptrtoint %struct.work_interval* %24 to i32
  %26 = load i32, i32* @IKOT_WORK_INTERVAL, align 4
  %27 = call i32 @ipc_kobject_set_atomically(i64 %23, i32 %25, i32 %26)
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @ipc_port_make_sonce_locked(i64 %28)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* @IP_NULL, align 8
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @ipc_port_nsrequest(i64 %31, i32 1, i64 %32, i64* %5)
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @IP_NULL, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i64, i64* %3, align 8
  %40 = call i64 @ipc_port_make_send(i64 %39)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @IP_VALID(i64 %41)
  %43 = call i32 @assert(i32 %42)
  %44 = load i64, i64* %3, align 8
  %45 = load %struct.work_interval*, %struct.work_interval** %2, align 8
  %46 = getelementptr inbounds %struct.work_interval, %struct.work_interval* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* %6, align 8
  ret i64 %47
}

declare dso_local i64 @ipc_port_alloc_kernel(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ip_lock(i64) #1

declare dso_local i32 @ipc_kobject_set_atomically(i64, i32, i32) #1

declare dso_local i64 @ipc_port_make_sonce_locked(i64) #1

declare dso_local i32 @ipc_port_nsrequest(i64, i32, i64, i64*) #1

declare dso_local i64 @ipc_port_make_send(i64) #1

declare dso_local i32 @IP_VALID(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
