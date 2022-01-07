; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_vm_wire.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_vm_wire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HOST_PRIV_NULL = common dso_local global i32* null, align 8
@KERN_INVALID_HOST = common dso_local global i32 0, align 4
@realhost = common dso_local global i32 0, align 4
@VM_MAP_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_TASK = common dso_local global i32 0, align 4
@VM_PROT_ALL = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_OSFMK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_wire(i32* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = load i32*, i32** @HOST_PRIV_NULL, align 8
  %15 = icmp eq i32* %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32, i32* @KERN_INVALID_HOST, align 4
  store i32 %17, i32* %6, align 4
  br label %84

18:                                               ; preds = %5
  %19 = load i32*, i32** %7, align 8
  %20 = icmp eq i32* %19, @realhost
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @VM_MAP_NULL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @KERN_INVALID_TASK, align 4
  store i32 %27, i32* %6, align 4
  br label %84

28:                                               ; preds = %18
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @VM_PROT_ALL, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i64, i64* %9, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34, %28
  %41 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %41, i32* %6, align 4
  br label %84

42:                                               ; preds = %34
  %43 = load i64, i64* %10, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %46, i32* %12, align 4
  br label %82

47:                                               ; preds = %42
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @VM_PROT_NONE, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @VM_MAP_PAGE_MASK(i64 %54)
  %56 = call i32 @vm_map_trunc_page(i64 %53, i32 %55)
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @VM_MAP_PAGE_MASK(i64 %60)
  %62 = call i32 @vm_map_round_page(i64 %59, i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @VM_KERN_MEMORY_OSFMK, align 4
  %65 = load i32, i32* @TRUE, align 4
  %66 = call i32 @vm_map_wire_kernel(i64 %52, i32 %56, i32 %62, i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %12, align 4
  br label %81

67:                                               ; preds = %47
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @VM_MAP_PAGE_MASK(i64 %70)
  %72 = call i32 @vm_map_trunc_page(i64 %69, i32 %71)
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %10, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @VM_MAP_PAGE_MASK(i64 %76)
  %78 = call i32 @vm_map_round_page(i64 %75, i32 %77)
  %79 = load i32, i32* @TRUE, align 4
  %80 = call i32 @vm_map_unwire(i64 %68, i32 %72, i32 %78, i32 %79)
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %67, %51
  br label %82

82:                                               ; preds = %81, %45
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %82, %40, %26, %16
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_map_wire_kernel(i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vm_map_trunc_page(i64, i32) #1

declare dso_local i32 @VM_MAP_PAGE_MASK(i64) #1

declare dso_local i32 @vm_map_round_page(i64, i32) #1

declare dso_local i32 @vm_map_unwire(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
