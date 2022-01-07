; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_opt.c_mptcp_update_window.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_opt.c_mptcp_update_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptcb = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mptcb*, i64, i64, i64)* @mptcp_update_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptcp_update_window(%struct.mptcb* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.mptcb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.mptcb* %0, %struct.mptcb** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.mptcb*, %struct.mptcb** %5, align 8
  %10 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i64 @SEQ_LT(i64 %11, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %40, label %15

15:                                               ; preds = %4
  %16 = load %struct.mptcb*, %struct.mptcb** %5, align 8
  %17 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %15
  %22 = load %struct.mptcb*, %struct.mptcb** %5, align 8
  %23 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @SEQ_LT(i64 %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %21
  %29 = load %struct.mptcb*, %struct.mptcb** %5, align 8
  %30 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %28
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.mptcb*, %struct.mptcb** %5, align 8
  %37 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %34, %21, %4
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.mptcb*, %struct.mptcb** %5, align 8
  %43 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.mptcb*, %struct.mptcb** %5, align 8
  %46 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.mptcb*, %struct.mptcb** %5, align 8
  %49 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %40, %34, %28, %15
  ret void
}

declare dso_local i64 @SEQ_LT(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
