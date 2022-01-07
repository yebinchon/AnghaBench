; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_insert_member.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_insert_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_TASK = common dso_local global i64 0, align 8
@KERN_INVALID_RIGHT = common dso_local global i64 0, align 8
@WAITQ_DONT_LOCK = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@MACH_PORT_RIGHT_RECEIVE = common dso_local global i32 0, align 4
@MACH_PORT_RIGHT_PORT_SET = common dso_local global i32 0, align 4
@IO_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_port_insert_member(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @IS_NULL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* @KERN_INVALID_TASK, align 8
  store i64 %17, i64* %4, align 8
  br label %77

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @MACH_PORT_VALID(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @MACH_PORT_VALID(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22, %18
  %27 = load i64, i64* @KERN_INVALID_RIGHT, align 8
  store i64 %27, i64* %4, align 8
  br label %77

28:                                               ; preds = %22
  %29 = call i32 @waitq_link_reserve(i32* null)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* @WAITQ_DONT_LOCK, align 4
  %31 = call i32 @waitq_prepost_reserve(i32* null, i32 10, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i64, i64* %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @ipc_pset_lazy_allocate(i64 %32, i32 %33)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @KERN_SUCCESS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %71

39:                                               ; preds = %28
  %40 = load i64, i64* %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @MACH_PORT_RIGHT_RECEIVE, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @MACH_PORT_RIGHT_PORT_SET, align 4
  %45 = call i64 @ipc_object_translate_two(i64 %40, i32 %41, i32 %42, i64* %8, i32 %43, i32 %44, i64* %9)
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @KERN_SUCCESS, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %71

50:                                               ; preds = %39
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @IO_NULL, align 8
  %53 = icmp ne i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @IO_NULL, align 8
  %58 = icmp ne i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i64, i64* %9, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i64, i64* %8, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i64 @ipc_pset_add(i32 %62, i32 %64, i32* %11, i32* %12)
  store i64 %65, i64* %10, align 8
  %66 = call i32 @__IGNORE_WCASTALIGN(i64 %65)
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @io_unlock(i64 %67)
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @io_unlock(i64 %69)
  br label %71

71:                                               ; preds = %50, %49, %38
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @waitq_link_release(i32 %72)
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @waitq_prepost_release_reserve(i32 %74)
  %76 = load i64, i64* %10, align 8
  store i64 %76, i64* %4, align 8
  br label %77

77:                                               ; preds = %71, %26, %16
  %78 = load i64, i64* %4, align 8
  ret i64 %78
}

declare dso_local i32 @MACH_PORT_VALID(i32) #1

declare dso_local i32 @waitq_link_reserve(i32*) #1

declare dso_local i32 @waitq_prepost_reserve(i32*, i32, i32) #1

declare dso_local i64 @ipc_pset_lazy_allocate(i64, i32) #1

declare dso_local i64 @ipc_object_translate_two(i64, i32, i32, i64*, i32, i32, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @__IGNORE_WCASTALIGN(i64) #1

declare dso_local i64 @ipc_pset_add(i32, i32, i32*, i32*) #1

declare dso_local i32 @io_unlock(i64) #1

declare dso_local i32 @waitq_link_release(i32) #1

declare dso_local i32 @waitq_prepost_release_reserve(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
