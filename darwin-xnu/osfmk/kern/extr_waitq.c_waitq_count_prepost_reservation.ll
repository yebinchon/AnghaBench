; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_count_prepost_reservation.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_count_prepost_reservation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i64, i64 }

@LINK_WALK_FULL_DAG_UNLOCKED = common dso_local global i32 0, align 4
@WQL_WQS = common dso_local global i32 0, align 4
@waitq_prepost_reserve_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.waitq*, i32, i32)* @waitq_count_prepost_reservation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @waitq_count_prepost_reservation(%struct.waitq* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.waitq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.waitq* %0, %struct.waitq** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.waitq*, %struct.waitq** %4, align 8
  %9 = getelementptr inbounds %struct.waitq, %struct.waitq* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 3, i32* %7, align 4
  br label %29

13:                                               ; preds = %3
  %14 = load %struct.waitq*, %struct.waitq** %4, align 8
  %15 = getelementptr inbounds %struct.waitq, %struct.waitq* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 3, i32* %7, align 4
  br label %19

19:                                               ; preds = %18, %13
  %20 = load i32, i32* @LINK_WALK_FULL_DAG_UNLOCKED, align 4
  %21 = load %struct.waitq*, %struct.waitq** %4, align 8
  %22 = load %struct.waitq*, %struct.waitq** %4, align 8
  %23 = getelementptr inbounds %struct.waitq, %struct.waitq* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @WQL_WQS, align 4
  %26 = bitcast i32* %7 to i8*
  %27 = load i32, i32* @waitq_prepost_reserve_cb, align 4
  %28 = call i32 @walk_waitq_links(i32 %20, %struct.waitq* %21, i64 %24, i32 %25, i8* %26, i32 %27)
  br label %29

29:                                               ; preds = %19, %12
  %30 = load i32, i32* %5, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  store i32 3, i32* %7, align 4
  br label %43

43:                                               ; preds = %42, %39, %36
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @walk_waitq_links(i32, %struct.waitq*, i64, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
