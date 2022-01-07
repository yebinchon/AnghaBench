; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_lookup_dsn.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_lookup_dsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.mbuf*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.mptses = type { i32 }
%struct.socket = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mbuf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.mptses*, i32)* @mptcp_lookup_dsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @mptcp_lookup_dsn(%struct.mptses* %0, i32 %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.mptses*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.mbuf*, align 8
  store %struct.mptses* %0, %struct.mptses** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mptses*, %struct.mptses** %4, align 8
  %9 = call %struct.socket* @mptetoso(%struct.mptses* %8)
  store %struct.socket* %9, %struct.socket** %6, align 8
  %10 = load %struct.socket*, %struct.socket** %6, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  store %struct.mbuf* %13, %struct.mbuf** %7, align 8
  br label %14

14:                                               ; preds = %48, %2
  %15 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %16 = icmp ne %struct.mbuf* %15, null
  br i1 %16, label %17, label %52

17:                                               ; preds = %14
  %18 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %19 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @MPTCP_SEQ_LEQ(i64 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %17
  %26 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %27 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %31 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %29, %33
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @MPTCP_SEQ_GT(i64 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  br label %52

39:                                               ; preds = %25, %17
  %40 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %41 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @MPTCP_SEQ_GT(i64 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %54

48:                                               ; preds = %39
  %49 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %50 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %49, i32 0, i32 0
  %51 = load %struct.mbuf*, %struct.mbuf** %50, align 8
  store %struct.mbuf* %51, %struct.mbuf** %7, align 8
  br label %14

52:                                               ; preds = %38, %14
  %53 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  store %struct.mbuf* %53, %struct.mbuf** %3, align 8
  br label %54

54:                                               ; preds = %52, %47
  %55 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  ret %struct.mbuf* %55
}

declare dso_local %struct.socket* @mptetoso(%struct.mptses*) #1

declare dso_local i64 @MPTCP_SEQ_LEQ(i64, i32) #1

declare dso_local i64 @MPTCP_SEQ_GT(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
