; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/vmx/extr_vmx_cpu.c_host_vmxon.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/vmx/extr_vmx_cpu.c_host_vmxon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VMX_UNSUPPORTED = common dso_local global i32 0, align 4
@vmx_lck_mtx = common dso_local global i32 0, align 4
@vmx_exclusive = common dso_local global i64 0, align 8
@vmx_use_count = common dso_local global i32 0, align 4
@VMX_INUSE = common dso_local global i32 0, align 4
@CPUMASK_ALL = common dso_local global i32 0, align 4
@ASYNC = common dso_local global i32 0, align 4
@vmx_on = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"VMX use count: %d\0A\00", align 1
@VMX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @host_vmxon(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = call i64 (...) @get_preemption_level()
  %6 = icmp eq i64 0, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = call i32 (...) @vmx_globally_available()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @VMX_UNSUPPORTED, align 4
  store i32 %12, i32* %2, align 4
  br label %47

13:                                               ; preds = %1
  %14 = load i32, i32* @vmx_lck_mtx, align 4
  %15 = call i32 @lck_mtx_lock(i32 %14)
  %16 = load i64, i64* @vmx_exclusive, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load i64, i64* %3, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* @vmx_use_count, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %13
  %25 = load i32, i32* @VMX_INUSE, align 4
  store i32 %25, i32* %4, align 4
  br label %43

26:                                               ; preds = %21, %18
  %27 = load i32, i32* @vmx_use_count, align 4
  %28 = icmp eq i32 0, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = call i32 (...) @vmx_allocate_vmxon_regions()
  %31 = load i64, i64* %3, align 8
  store i64 %31, i64* @vmx_exclusive, align 8
  store i32 1, i32* @vmx_use_count, align 4
  %32 = load i32, i32* @CPUMASK_ALL, align 4
  %33 = load i32, i32* @ASYNC, align 4
  %34 = load i32, i32* @vmx_on, align 4
  %35 = call i32 @mp_cpus_call(i32 %32, i32 %33, i32 %34, i32* null)
  br label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @vmx_use_count, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @vmx_use_count, align 4
  br label %39

39:                                               ; preds = %36, %29
  %40 = load i32, i32* @vmx_use_count, align 4
  %41 = call i32 @VMX_KPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @VMX_OK, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %24
  %44 = load i32, i32* @vmx_lck_mtx, align 4
  %45 = call i32 @lck_mtx_unlock(i32 %44)
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %43, %11
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @get_preemption_level(...) #1

declare dso_local i32 @vmx_globally_available(...) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @vmx_allocate_vmxon_regions(...) #1

declare dso_local i32 @mp_cpus_call(i32, i32, i32, i32*) #1

declare dso_local i32 @VMX_KPRINTF(i8*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
