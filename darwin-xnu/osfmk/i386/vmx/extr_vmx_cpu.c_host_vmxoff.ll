; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/vmx/extr_vmx_cpu.c_host_vmxoff.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/vmx/extr_vmx_cpu.c_host_vmxoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vmx_lck_mtx = common dso_local global i32 0, align 4
@vmx_use_count = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@vmx_exclusive = common dso_local global i32 0, align 4
@CPUMASK_ALL = common dso_local global i32 0, align 4
@ASYNC = common dso_local global i32 0, align 4
@vmx_off = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"VMX use count: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @host_vmxoff() #0 {
  %1 = call i64 (...) @get_preemption_level()
  %2 = icmp eq i64 0, %1
  %3 = zext i1 %2 to i32
  %4 = call i32 @assert(i32 %3)
  %5 = load i32, i32* @vmx_lck_mtx, align 4
  %6 = call i32 @lck_mtx_lock(i32 %5)
  %7 = load i32, i32* @vmx_use_count, align 4
  %8 = icmp eq i32 1, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %0
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* @vmx_exclusive, align 4
  store i32 0, i32* @vmx_use_count, align 4
  %11 = load i32, i32* @CPUMASK_ALL, align 4
  %12 = load i32, i32* @ASYNC, align 4
  %13 = load i32, i32* @vmx_off, align 4
  %14 = call i32 @mp_cpus_call(i32 %11, i32 %12, i32 %13, i32* null)
  %15 = call i32 (...) @vmx_free_vmxon_regions()
  br label %19

16:                                               ; preds = %0
  %17 = load i32, i32* @vmx_use_count, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* @vmx_use_count, align 4
  br label %19

19:                                               ; preds = %16, %9
  %20 = load i32, i32* @vmx_lck_mtx, align 4
  %21 = call i32 @lck_mtx_unlock(i32 %20)
  %22 = load i32, i32* @vmx_use_count, align 4
  %23 = call i32 @VMX_KPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %22)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @get_preemption_level(...) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @mp_cpus_call(i32, i32, i32, i32*) #1

declare dso_local i32 @vmx_free_vmxon_regions(...) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @VMX_KPRINTF(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
