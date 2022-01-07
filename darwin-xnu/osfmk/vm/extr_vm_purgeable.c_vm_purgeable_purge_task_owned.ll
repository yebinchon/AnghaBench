; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_purgeable.c_vm_purgeable_purge_task_owned.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_purgeable.c_vm_purgeable_purge_task_owned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@purgeable_queues = common dso_local global i32* null, align 8
@PURGEABLE_Q_TYPE_OBSOLETE = common dso_local global i64 0, align 8
@PURGEABLE_Q_TYPE_FIFO = common dso_local global i64 0, align 8
@NUM_VOLATILE_GROUPS = common dso_local global i32 0, align 4
@PURGEABLE_Q_TYPE_LIFO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vm_purgeable_purge_task_owned(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %5, align 8
  %6 = load i32*, i32** @purgeable_queues, align 8
  %7 = load i64, i64* @PURGEABLE_Q_TYPE_OBSOLETE, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @vm_purgeable_queue_purge_task_owned(i32* %9, i32 0, i32 %10)
  %12 = load i64, i64* %5, align 8
  %13 = add nsw i64 %12, %11
  store i64 %13, i64* %5, align 8
  %14 = load i32*, i32** @purgeable_queues, align 8
  %15 = load i64, i64* @PURGEABLE_Q_TYPE_FIFO, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32* %16, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %28, %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @NUM_VOLATILE_GROUPS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i64 @vm_purgeable_queue_purge_task_owned(i32* %22, i32 %23, i32 %24)
  %26 = load i64, i64* %5, align 8
  %27 = add nsw i64 %26, %25
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %17

31:                                               ; preds = %17
  %32 = load i32*, i32** @purgeable_queues, align 8
  %33 = load i64, i64* @PURGEABLE_Q_TYPE_LIFO, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32* %34, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %46, %31
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @NUM_VOLATILE_GROUPS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %2, align 4
  %43 = call i64 @vm_purgeable_queue_purge_task_owned(i32* %40, i32 %41, i32 %42)
  %44 = load i64, i64* %5, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %35

49:                                               ; preds = %35
  %50 = load i64, i64* %5, align 8
  ret i64 %50
}

declare dso_local i64 @vm_purgeable_queue_purge_task_owned(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
