; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_exec.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [61 x i8] c"shared_region: task %p: vm_map_exec(%p,%p,%p,0x%x,0x%x): ->\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"shared_region: task %p: vm_map_exec(%p,%p,%p,0x%x,0x%x): <-\0A\00", align 1
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_exec(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = call i8* (...) @current_task()
  %14 = call i64 @VM_KERNEL_ADDRPERM(i8* %13)
  %15 = inttoptr i64 %14 to i8*
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @VM_KERNEL_ADDRPERM(i8* %16)
  %18 = inttoptr i64 %17 to i8*
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @VM_KERNEL_ADDRPERM(i8* %19)
  %21 = inttoptr i64 %20 to i8*
  %22 = load i8*, i8** %10, align 8
  %23 = call i64 @VM_KERNEL_ADDRPERM(i8* %22)
  %24 = inttoptr i64 %23 to i8*
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @SHARED_REGION_TRACE_DEBUG(i8* %28)
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @vm_commpage_enter(i8* %30, i8* %31, i32 %32)
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @vm_shared_region_enter(i8* %34, i8* %35, i32 %36, i8* %37, i32 %38, i32 %39)
  %41 = call i8* (...) @current_task()
  %42 = call i64 @VM_KERNEL_ADDRPERM(i8* %41)
  %43 = inttoptr i64 %42 to i8*
  %44 = load i8*, i8** %7, align 8
  %45 = call i64 @VM_KERNEL_ADDRPERM(i8* %44)
  %46 = inttoptr i64 %45 to i8*
  %47 = load i8*, i8** %8, align 8
  %48 = call i64 @VM_KERNEL_ADDRPERM(i8* %47)
  %49 = inttoptr i64 %48 to i8*
  %50 = load i8*, i8** %10, align 8
  %51 = call i64 @VM_KERNEL_ADDRPERM(i8* %50)
  %52 = inttoptr i64 %51 to i8*
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @SHARED_REGION_TRACE_DEBUG(i8* %56)
  %58 = load i32, i32* @KERN_SUCCESS, align 4
  ret i32 %58
}

declare dso_local i32 @SHARED_REGION_TRACE_DEBUG(i8*) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(i8*) #1

declare dso_local i8* @current_task(...) #1

declare dso_local i32 @vm_commpage_enter(i8*, i8*, i32) #1

declare dso_local i32 @vm_shared_region_enter(i8*, i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
