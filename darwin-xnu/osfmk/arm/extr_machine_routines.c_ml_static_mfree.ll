; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_machine_routines.c_ml_static_mfree.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_machine_routines.c_ml_static_mfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_MIN_KERNEL_ADDRESS = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Failed ml_static_mfree on %p\00", align 1
@vm_page_wire_count = common dso_local global i32 0, align 4
@vm_page_wire_count_initial = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ml_static_mfree(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %7, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @VM_MIN_KERNEL_ADDRESS, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %74

12:                                               ; preds = %2
  %13 = load i64, i64* %3, align 8
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = and i64 %13, %16
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i64, i64* %3, align 8
  store i64 %21, i64* %5, align 8
  br label %22

22:                                               ; preds = %56, %12
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i64 @trunc_page_32(i64 %26)
  %28 = icmp slt i64 %23, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %22
  %30 = load i32, i32* @kernel_pmap, align 4
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @pmap_find_phys(i32 %30, i64 %31)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %29
  %36 = load i64, i64* %5, align 8
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = load i32, i32* @VM_PROT_WRITE, align 4
  %39 = load i32, i32* @VM_PROT_READ, align 4
  %40 = or i32 %38, %39
  %41 = call i64 @ml_static_protect(i64 %36, i32 %37, i32 %40)
  %42 = load i64, i64* @KERN_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load i64, i64* %5, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %44, %35
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = add nsw i64 %50, 1
  %52 = call i32 @vm_page_create(i64 %49, i64 %51)
  %53 = load i64, i64* %7, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %48, %29
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* @PAGE_SIZE, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %5, align 8
  %60 = add nsw i64 %59, %58
  store i64 %60, i64* %5, align 8
  br label %22

61:                                               ; preds = %22
  %62 = call i32 (...) @vm_page_lockspin_queues()
  %63 = load i64, i64* %7, align 8
  %64 = load i32, i32* @vm_page_wire_count, align 4
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* @vm_page_wire_count, align 4
  %68 = load i64, i64* %7, align 8
  %69 = load i32, i32* @vm_page_wire_count_initial, align 4
  %70 = sext i32 %69 to i64
  %71 = sub nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* @vm_page_wire_count_initial, align 4
  %73 = call i32 (...) @vm_page_unlock_queues()
  br label %74

74:                                               ; preds = %61, %11
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @trunc_page_32(i64) #1

declare dso_local i64 @pmap_find_phys(i32, i64) #1

declare dso_local i64 @ml_static_protect(i64, i32, i32) #1

declare dso_local i32 @panic(i8*, i8*) #1

declare dso_local i32 @vm_page_create(i64, i64) #1

declare dso_local i32 @vm_page_lockspin_queues(...) #1

declare dso_local i32 @vm_page_unlock_queues(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
