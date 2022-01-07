; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_object.c_ipc_object_rename.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_object.c_ipc_object_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KERN_SUCCESS = common dso_local global i64 0, align 8
@KERN_NAME_EXISTS = common dso_local global i64 0, align 8
@IE_NULL = common dso_local global i32 0, align 4
@KERN_INVALID_NAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ipc_object_rename(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @ipc_entry_alloc_name(i32 %11, i32 %12, i32* %9)
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* @KERN_SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* %10, align 8
  store i64 %18, i64* %4, align 8
  br label %53

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @ipc_right_inuse(i32 %20, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i64, i64* @KERN_NAME_EXISTS, align 8
  store i64 %26, i64* %4, align 8
  br label %53

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ipc_entry_lookup(i32 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @IE_NULL, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31, %27
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @ipc_entry_dealloc(i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @is_write_unlock(i32 %42)
  %44 = load i64, i64* @KERN_INVALID_NAME, align 8
  store i64 %44, i64* %4, align 8
  br label %53

45:                                               ; preds = %31
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @ipc_right_rename(i32 %46, i32 %47, i32 %48, i32 %49, i32 %50)
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %45, %37, %25, %17
  %54 = load i64, i64* %4, align 8
  ret i64 %54
}

declare dso_local i64 @ipc_entry_alloc_name(i32, i32, i32*) #1

declare dso_local i64 @ipc_right_inuse(i32, i32, i32) #1

declare dso_local i32 @ipc_entry_lookup(i32, i32) #1

declare dso_local i32 @ipc_entry_dealloc(i32, i32, i32) #1

declare dso_local i32 @is_write_unlock(i32) #1

declare dso_local i64 @ipc_right_rename(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
