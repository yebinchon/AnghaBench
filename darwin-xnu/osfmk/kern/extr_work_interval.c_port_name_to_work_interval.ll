; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_work_interval.c_port_name_to_work_interval.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_work_interval.c_port_name_to_work_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_interval = type { i32 }

@KERN_INVALID_NAME = common dso_local global i64 0, align 8
@IPC_PORT_NULL = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@KERN_INVALID_CAPABILITY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.work_interval**)* @port_name_to_work_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @port_name_to_work_interval(i32 %0, %struct.work_interval** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.work_interval**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.work_interval*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.work_interval** %1, %struct.work_interval*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @MACH_PORT_VALID(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* @KERN_INVALID_NAME, align 8
  store i64 %13, i64* %3, align 8
  br label %46

14:                                               ; preds = %2
  %15 = load i32, i32* @IPC_PORT_NULL, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %16, i64* %7, align 8
  %17 = call i32 (...) @current_space()
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @ipc_port_translate_send(i32 %17, i32 %18, i32* %6)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @KERN_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i64, i64* %7, align 8
  store i64 %24, i64* %3, align 8
  br label %46

25:                                               ; preds = %14
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @IP_VALID(i32 %26)
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.work_interval* @work_interval_port_convert_locked(i32 %29)
  store %struct.work_interval* %30, %struct.work_interval** %8, align 8
  %31 = load %struct.work_interval*, %struct.work_interval** %8, align 8
  %32 = icmp eq %struct.work_interval* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i64, i64* @KERN_INVALID_CAPABILITY, align 8
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %33, %25
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @ip_unlock(i32 %36)
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @KERN_SUCCESS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.work_interval*, %struct.work_interval** %8, align 8
  %43 = load %struct.work_interval**, %struct.work_interval*** %5, align 8
  store %struct.work_interval* %42, %struct.work_interval** %43, align 8
  br label %44

44:                                               ; preds = %41, %35
  %45 = load i64, i64* %7, align 8
  store i64 %45, i64* %3, align 8
  br label %46

46:                                               ; preds = %44, %23, %12
  %47 = load i64, i64* %3, align 8
  ret i64 %47
}

declare dso_local i32 @MACH_PORT_VALID(i32) #1

declare dso_local i64 @ipc_port_translate_send(i32, i32, i32*) #1

declare dso_local i32 @current_space(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IP_VALID(i32) #1

declare dso_local %struct.work_interval* @work_interval_port_convert_locked(i32) #1

declare dso_local i32 @ip_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
