; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_create_vm_map_copy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_create_vm_map_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@ipc_kernel_map = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_vm_map_copy(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %3
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* %6, align 8
  %17 = add nsw i64 %15, %16
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i64 @round_page(i64 %19)
  %21 = load i64, i64* %4, align 8
  %22 = sub nsw i64 %20, %21
  %23 = sub nsw i64 %18, %22
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @PAGE_SIZE, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %14
  %28 = load i32, i32* @ipc_kernel_map, align 4
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @round_page(i64 %29)
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @kmem_free(i32 %28, i64 %30, i64 %31)
  br label %33

33:                                               ; preds = %27, %14
  %34 = load i64, i64* %8, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load i64, i64* %8, align 8
  %37 = call i64 @round_page(i64 %36)
  %38 = load i64, i64* %8, align 8
  %39 = sub nsw i64 %37, %38
  %40 = call i32 @bzero(i8* %35, i64 %39)
  br label %41

41:                                               ; preds = %33, %3
  %42 = load i32, i32* @ipc_kernel_map, align 4
  %43 = load i64, i64* %4, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i64, i64* %6, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @TRUE, align 4
  %48 = call i64 @vm_map_copyin(i32 %42, i32 %44, i32 %46, i32 %47, i32* %10)
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @KERN_SUCCESS, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i32, i32* %10, align 4
  ret i32 %54
}

declare dso_local i64 @round_page(i64) #1

declare dso_local i32 @kmem_free(i32, i64, i64) #1

declare dso_local i32 @bzero(i8*, i64) #1

declare dso_local i64 @vm_map_copyin(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
