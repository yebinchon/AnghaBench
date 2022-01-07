; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_mqueue.c_ipc_mqueue_receive.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_mqueue.c_ipc_mqueue_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@THREAD_NOT_WAITING = common dso_local global i64 0, align 8
@THREAD_WAITING = common dso_local global i64 0, align 8
@THREAD_ABORTSAFE = common dso_local global i32 0, align 4
@c_ipc_mqueue_receive_block_user = common dso_local global i32 0, align 4
@c_ipc_mqueue_receive_block_kernel = common dso_local global i32 0, align 4
@ipc_mqueue_receive_continue = common dso_local global i32 0, align 4
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_mqueue_receive(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = call %struct.TYPE_4__* (...) @current_thread()
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @imq_lock(i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %22 = call i64 @ipc_mqueue_receive_on_thread(i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, %struct.TYPE_4__* %21)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* @THREAD_NOT_WAITING, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  br label %57

27:                                               ; preds = %5
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* @THREAD_WAITING, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @THREAD_ABORTSAFE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @c_ipc_mqueue_receive_block_user, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @c_ipc_mqueue_receive_block_user, align 4
  br label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @c_ipc_mqueue_receive_block_kernel, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @c_ipc_mqueue_receive_block_kernel, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i32 [ %36, %35 ], [ %39, %38 ]
  %43 = call i32 @counter(i32 %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @ipc_mqueue_receive_continue, align 4
  %50 = call i64 @thread_block(i32 %49)
  br label %51

51:                                               ; preds = %48, %41
  %52 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %53 = call i64 @thread_block(i32 %52)
  store i64 %53, i64* %11, align 8
  br label %54

54:                                               ; preds = %51, %27
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @ipc_mqueue_receive_results(i64 %55)
  br label %57

57:                                               ; preds = %54, %26
  ret void
}

declare dso_local %struct.TYPE_4__* @current_thread(...) #1

declare dso_local i32 @imq_lock(i32) #1

declare dso_local i64 @ipc_mqueue_receive_on_thread(i32, i32, i32, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @counter(i32) #1

declare dso_local i64 @thread_block(i32) #1

declare dso_local i32 @ipc_mqueue_receive_results(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
