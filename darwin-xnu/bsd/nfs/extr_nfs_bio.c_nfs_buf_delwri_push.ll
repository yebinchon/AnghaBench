; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_delwri_push.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_delwri_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nfsbufdelwri = common dso_local global i32 0, align 4
@nfs_buf_mutex = common dso_local global i32 0, align 4
@nfsbufdelwrithd = common dso_local global i64 0, align 8
@nfs_buf_delwri_thread = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_buf_delwri_push(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i64 @TAILQ_EMPTY(i32* @nfsbufdelwri)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %37

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* @nfs_buf_mutex, align 4
  %11 = call i32 @lck_mtx_lock(i32 %10)
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i64, i64* @nfsbufdelwrithd, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 @wakeup(i64* @nfsbufdelwrithd)
  br label %26

17:                                               ; preds = %12
  %18 = load i32, i32* @nfs_buf_delwri_thread, align 4
  %19 = call i64 @kernel_thread_start(i32 %18, i32* null, i64* @nfsbufdelwrithd)
  %20 = load i64, i64* @KERN_SUCCESS, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i64, i64* @nfsbufdelwrithd, align 8
  %24 = call i32 @thread_deallocate(i64 %23)
  br label %25

25:                                               ; preds = %22, %17
  br label %26

26:                                               ; preds = %25, %15
  %27 = load i64, i64* @nfsbufdelwrithd, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = call i32 (...) @nfs_buf_delwri_service()
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i32, i32* %2, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @nfs_buf_mutex, align 4
  %36 = call i32 @lck_mtx_unlock(i32 %35)
  br label %37

37:                                               ; preds = %5, %34, %31
  ret void
}

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @wakeup(i64*) #1

declare dso_local i64 @kernel_thread_start(i32, i32*, i64*) #1

declare dso_local i32 @thread_deallocate(i64) #1

declare dso_local i32 @nfs_buf_delwri_service(...) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
