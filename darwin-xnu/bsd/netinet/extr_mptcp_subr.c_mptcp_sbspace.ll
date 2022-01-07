; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_sbspace.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_sbspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptcb = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.sockbuf }
%struct.sockbuf = type { i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mptcp_sbspace(%struct.mptcb* %0) #0 {
  %2 = alloca %struct.mptcb*, align 8
  %3 = alloca %struct.sockbuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.mptcb* %0, %struct.mptcb** %2, align 8
  %7 = load %struct.mptcb*, %struct.mptcb** %2, align 8
  %8 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.sockbuf* %14, %struct.sockbuf** %3, align 8
  store i64 0, i64* %6, align 8
  %15 = load %struct.mptcb*, %struct.mptcb** %2, align 8
  %16 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = call i32 @mpte_lock_assert_held(%struct.TYPE_6__* %17)
  %19 = load %struct.mptcb*, %struct.mptcb** %2, align 8
  %20 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %21 = call i32 @mptcp_sbrcv_grow_rwin(%struct.mptcb* %19, %struct.sockbuf* %20)
  %22 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %23 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %27 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  %30 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %31 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %34 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = call i64 @imin(i64 %29, i64 %36)
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %41

41:                                               ; preds = %40, %1
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i64 0, i64* %5, align 8
  br label %50

46:                                               ; preds = %41
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %5, align 8
  %49 = sub nsw i64 %48, %47
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %46, %45
  %51 = load i64, i64* %5, align 8
  ret i64 %51
}

declare dso_local i32 @mpte_lock_assert_held(%struct.TYPE_6__*) #1

declare dso_local i32 @mptcp_sbrcv_grow_rwin(%struct.mptcb*, %struct.sockbuf*) #1

declare dso_local i64 @imin(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
