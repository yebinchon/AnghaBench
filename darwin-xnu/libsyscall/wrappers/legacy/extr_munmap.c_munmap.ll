; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/legacy/extr_munmap.c_munmap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/legacy/extr_munmap.c_munmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i64 0, align 8
@stack_logging_type_vm_deallocate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @munmap(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = load i64, i64* @PAGE_MASK, align 8
  %15 = and i64 %13, %14
  store i64 %15, i64* %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = load i64, i64* @PAGE_MASK, align 8
  %19 = xor i64 %18, -1
  %20 = and i64 %17, %19
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %5, align 8
  br i1 true, label %25, label %32

25:                                               ; preds = %11
  %26 = load i32, i32* @stack_logging_type_vm_deallocate, align 4
  %27 = call i64 (...) @mach_task_self()
  %28 = load i8*, i8** %4, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @__syscall_logger(i32 %26, i64 %27, i64 %29, i64 %30, i32 0, i32 0)
  br label %32

32:                                               ; preds = %25, %11
  %33 = load i8*, i8** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @__munmap(i8* %33, i64 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %10
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @__syscall_logger(i32, i64, i64, i64, i32, i32) #1

declare dso_local i64 @mach_task_self(...) #1

declare dso_local i32 @__munmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
