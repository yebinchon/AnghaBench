; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_usrreq.c_mptcp_getassocids.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_usrreq.c_mptcp_getassocids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptses = type { i64 }

@SAE_ASSOCID_ANY = common dso_local global i64 0, align 8
@USER_ADDR_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mptses*, i32*, i32)* @mptcp_getassocids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptcp_getassocids(%struct.mptses* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mptses*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.mptses* %0, %struct.mptses** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.mptses*, %struct.mptses** %5, align 8
  %9 = call i32 @mpte_lock_assert_held(%struct.mptses* %8)
  %10 = load %struct.mptses*, %struct.mptses** %5, align 8
  %11 = getelementptr inbounds %struct.mptses, %struct.mptses* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SAE_ASSOCID_ANY, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 0
  %17 = load i32*, i32** %6, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @USER_ADDR_NULL, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %27

22:                                               ; preds = %3
  %23 = load %struct.mptses*, %struct.mptses** %5, align 8
  %24 = getelementptr inbounds %struct.mptses, %struct.mptses* %23, i32 0, i32 0
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @copyout(i64* %24, i32 %25, i32 8)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %21
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @mpte_lock_assert_held(%struct.mptses*) #1

declare dso_local i32 @copyout(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
