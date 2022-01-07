; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_mach_vm_read_overwrite.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_mach_vm_read_overwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@VM_MAP_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_vm_read_overwrite(i64 %0, i64 %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @VM_MAP_NULL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %18, i64* %6, align 8
  br label %51

19:                                               ; preds = %5
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = trunc i64 %21 to i32
  %23 = load i64, i64* %9, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @FALSE, align 4
  %26 = call i64 @vm_map_copyin(i64 %20, i32 %22, i32 %24, i32 %25, i32* %13)
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* @KERN_SUCCESS, align 8
  %28 = load i64, i64* %12, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %19
  %31 = call %struct.TYPE_2__* (...) @current_thread()
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %10, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @FALSE, align 4
  %38 = call i64 @vm_map_copy_overwrite(i32 %33, i32 %35, i32 %36, i32 %37)
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* @KERN_SUCCESS, align 8
  %40 = load i64, i64* %12, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load i64, i64* %9, align 8
  %44 = load i64*, i64** %11, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i64, i64* %12, align 8
  store i64 %45, i64* %6, align 8
  br label %51

46:                                               ; preds = %30
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @vm_map_copy_discard(i32 %47)
  br label %49

49:                                               ; preds = %46, %19
  %50 = load i64, i64* %12, align 8
  store i64 %50, i64* %6, align 8
  br label %51

51:                                               ; preds = %49, %42, %17
  %52 = load i64, i64* %6, align 8
  ret i64 %52
}

declare dso_local i64 @vm_map_copyin(i64, i32, i32, i32, i32*) #1

declare dso_local i64 @vm_map_copy_overwrite(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @current_thread(...) #1

declare dso_local i32 @vm_map_copy_discard(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
