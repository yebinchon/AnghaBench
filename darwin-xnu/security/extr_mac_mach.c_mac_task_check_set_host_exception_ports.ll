; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_mach.c_mac_task_check_set_host_exception_ports.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_mach.c_mac_task_check_set_host_exception_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task = type { i32 }
%struct.proc = type { i32 }

@ESRCH = common dso_local global i32 0, align 4
@FIRST_EXCEPTION = common dso_local global i32 0, align 4
@EXC_TYPES_COUNT = common dso_local global i32 0, align 4
@proc_check_set_host_exception_port = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_task_check_set_host_exception_ports(%struct.task* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.proc*, align 8
  %9 = alloca i32, align 4
  store %struct.task* %0, %struct.task** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.task*, %struct.task** %4, align 8
  %11 = call %struct.proc* @mac_task_get_proc(%struct.task* %10)
  store %struct.proc* %11, %struct.proc** %8, align 8
  %12 = load %struct.proc*, %struct.proc** %8, align 8
  %13 = icmp eq %struct.proc* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ESRCH, align 4
  store i32 %15, i32* %3, align 4
  br label %48

16:                                               ; preds = %2
  %17 = load %struct.proc*, %struct.proc** %8, align 8
  %18 = call i32 @kauth_cred_proc_ref(%struct.proc* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @FIRST_EXCEPTION, align 4
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %40, %16
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = shl i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load i32, i32* @proc_check_set_host_exception_port, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @MAC_CHECK(i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %43

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %24
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %20

43:                                               ; preds = %37, %20
  %44 = call i32 @kauth_cred_unref(i32* %9)
  %45 = load %struct.proc*, %struct.proc** %8, align 8
  %46 = call i32 @proc_rele(%struct.proc* %45)
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %43, %14
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.proc* @mac_task_get_proc(%struct.task*) #1

declare dso_local i32 @kauth_cred_proc_ref(%struct.proc*) #1

declare dso_local i32 @MAC_CHECK(i32, i32, i32) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

declare dso_local i32 @proc_rele(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
