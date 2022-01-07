; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_unregister_tx_compl_callback.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_unregister_tx_compl_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i64 0, align 8
@mbuf_tx_compl_tbl_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@MAX_MBUF_TX_COMPL_FUNC = common dso_local global i32 0, align 4
@mbuf_tx_compl_table = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbuf_unregister_tx_compl_callback(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i64, i64* @EINVAL, align 8
  store i64 %9, i64* %2, align 8
  br label %40

10:                                               ; preds = %1
  %11 = load i32, i32* @mbuf_tx_compl_tbl_lock, align 4
  %12 = call i32 @lck_rw_lock_exclusive(i32 %11)
  %13 = load i64, i64* @ENOENT, align 8
  store i64 %13, i64* %5, align 8
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %32, %10
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MAX_MBUF_TX_COMPL_FUNC, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load i32**, i32*** @mbuf_tx_compl_table, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = icmp eq i32* %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load i32**, i32*** @mbuf_tx_compl_table, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  store i32* null, i32** %30, align 8
  store i64 0, i64* %5, align 8
  br label %36

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %14

35:                                               ; preds = %14
  br label %36

36:                                               ; preds = %35, %26
  %37 = load i32, i32* @mbuf_tx_compl_tbl_lock, align 4
  %38 = call i32 @lck_rw_unlock_exclusive(i32 %37)
  %39 = load i64, i64* %5, align 8
  store i64 %39, i64* %2, align 8
  br label %40

40:                                               ; preds = %36, %8
  %41 = load i64, i64* %2, align 8
  ret i64 %41
}

declare dso_local i32 @lck_rw_lock_exclusive(i32) #1

declare dso_local i32 @lck_rw_unlock_exclusive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
