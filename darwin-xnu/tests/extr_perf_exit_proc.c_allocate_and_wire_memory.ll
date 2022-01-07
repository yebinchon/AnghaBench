; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_perf_exit_proc.c_allocate_and_wire_memory.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_perf_exit_proc.c_allocate_and_wire_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_FLAGS_ANYWHERE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"mach_vm_allocate returned non-zero: %s\0A\00", align 1
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"mach_vm_protect returned non-zero: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"host_get_host_priv_port retruned non-zero: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"mach_vm_wire returned non-zero: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @allocate_and_wire_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_and_wire_memory(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = call i32 (...) @mach_task_self()
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %16 = call i32 @mach_vm_allocate(i32 %13, i32* %6, i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @KERN_SUCCESS, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = call i8* @mach_error_string(i32 %21)
  %23 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %70

25:                                               ; preds = %12
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @VM_PROT_READ, align 4
  %30 = load i32, i32* @VM_PROT_WRITE, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @mach_vm_protect(i32 %26, i32 %27, i32 %28, i32 0, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @KERN_SUCCESS, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %25
  %37 = load i32, i32* %4, align 4
  %38 = call i8* @mach_error_string(i32 %37)
  %39 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %70

41:                                               ; preds = %25
  %42 = call i32 (...) @mach_host_self()
  %43 = call i32 @host_get_host_priv_port(i32 %42, i32* %7)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @KERN_SUCCESS, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i32, i32* %4, align 4
  %49 = call i8* @mach_error_string(i32 %48)
  %50 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %70

52:                                               ; preds = %41
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @VM_PROT_READ, align 4
  %58 = load i32, i32* @VM_PROT_WRITE, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @mach_vm_wire(i32 %53, i32 %54, i32 %55, i32 %56, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @KERN_SUCCESS, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %52
  %65 = load i32, i32* %4, align 4
  %66 = call i8* @mach_error_string(i32 %65)
  %67 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %66)
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %70

69:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %64, %47, %36, %20, %11
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @mach_vm_allocate(i32, i32*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @mach_error_string(i32) #1

declare dso_local i32 @mach_vm_protect(i32, i32, i32, i32, i32) #1

declare dso_local i32 @host_get_host_priv_port(i32, i32*) #1

declare dso_local i32 @mach_host_self(...) #1

declare dso_local i32 @mach_vm_wire(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
