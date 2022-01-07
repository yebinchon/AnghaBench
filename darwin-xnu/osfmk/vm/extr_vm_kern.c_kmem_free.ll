; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_kern.c_kmem_free.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_kern.c_kmem_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_MIN_KERNEL_AND_KEXT_ADDRESS = common dso_local global i64 0, align 8
@KMEM_FREE_CODE = common dso_local global i32 0, align 4
@KMEM_FREE_CODE_2 = common dso_local global i32 0, align 4
@VM_MAP_REMOVE_KUNWIRE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"kmem_free\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kmem_free(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @VM_MIN_KERNEL_AND_KEXT_ADDRESS, align 8
  %10 = icmp sge i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* @KMEM_FREE_CODE, align 4
  %14 = load i32, i32* @KMEM_FREE_CODE_2, align 4
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @TRACE_MACHLEAKS(i32 %13, i32 %14, i64 %15, i64 %16)
  %18 = load i64, i64* %6, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %40

21:                                               ; preds = %3
  %22 = load i32, i32* %4, align 4
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @VM_MAP_PAGE_MASK(i32 %24)
  %26 = call i32 @vm_map_trunc_page(i64 %23, i32 %25)
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @VM_MAP_PAGE_MASK(i32 %30)
  %32 = call i32 @vm_map_round_page(i64 %29, i32 %31)
  %33 = load i32, i32* @VM_MAP_REMOVE_KUNWIRE, align 4
  %34 = call i64 @vm_map_remove(i32 %22, i32 %26, i32 %32, i32 %33)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @KERN_SUCCESS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %21
  %39 = call i32 @panic(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %20, %38, %21
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TRACE_MACHLEAKS(i32, i32, i64, i64) #1

declare dso_local i64 @vm_map_remove(i32, i32, i32, i32) #1

declare dso_local i32 @vm_map_trunc_page(i64, i32) #1

declare dso_local i32 @VM_MAP_PAGE_MASK(i32) #1

declare dso_local i32 @vm_map_round_page(i64, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
