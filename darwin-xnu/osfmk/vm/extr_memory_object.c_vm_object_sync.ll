; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_memory_object.c_vm_object_sync.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_memory_object.c_vm_object_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XPR_VM_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"vm_o_sync, object 0x%X, offset 0x%X size 0x%x flush %d rtn %d\0A\00", align 1
@MEMORY_OBJECT_DATA_FLUSH = common dso_local global i32 0, align 4
@MEMORY_OBJECT_DATA_NO_CHANGE = common dso_local global i32 0, align 4
@MEMORY_OBJECT_IO_SYNC = common dso_local global i32 0, align 4
@MEMORY_OBJECT_RETURN_ALL = common dso_local global i32 0, align 4
@MEMORY_OBJECT_RETURN_NONE = common dso_local global i32 0, align 4
@VM_PROT_NO_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vm_object_sync(i32 %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load i32, i32* @XPR_VM_OBJECT, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i32 @XPR(i32 %15, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i64 %18, i64 %19, i64 %20)
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @vm_object_lock(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @vm_object_paging_begin(i32 %24)
  %26 = load i64, i64* %10, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %6
  %29 = load i32, i32* @MEMORY_OBJECT_DATA_FLUSH, align 4
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* @MEMORY_OBJECT_DATA_NO_CHANGE, align 4
  %31 = load i32, i32* %14, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %14, align 4
  br label %34

33:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %34

34:                                               ; preds = %33, %28
  %35 = load i64, i64* %12, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* @MEMORY_OBJECT_IO_SYNC, align 4
  %39 = load i32, i32* %14, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %14, align 4
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @MEMORY_OBJECT_RETURN_ALL, align 4
  br label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @MEMORY_OBJECT_RETURN_NONE, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @VM_PROT_NO_CHANGE, align 4
  %55 = call i64 @vm_object_update(i32 %42, i32 %43, i64 %44, i32* null, i32* null, i32 %52, i32 %53, i32 %54)
  store i64 %55, i64* %13, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @vm_object_paging_end(i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @vm_object_unlock(i32 %58)
  %60 = load i64, i64* %13, align 8
  ret i64 %60
}

declare dso_local i32 @XPR(i32, i8*, i32, i32, i64, i64, i64) #1

declare dso_local i32 @vm_object_lock(i32) #1

declare dso_local i32 @vm_object_paging_begin(i32) #1

declare dso_local i64 @vm_object_update(i32, i32, i64, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @vm_object_paging_end(i32) #1

declare dso_local i32 @vm_object_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
