; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_sopt_remove.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_sopt_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptses = type { i32 }
%struct.mptopt = type { i32 }

@MPOF_ATTACHED = common dso_local global i32 0, align 4
@mpo_entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mptcp_sopt_remove(%struct.mptses* %0, %struct.mptopt* %1) #0 {
  %3 = alloca %struct.mptses*, align 8
  %4 = alloca %struct.mptopt*, align 8
  store %struct.mptses* %0, %struct.mptses** %3, align 8
  store %struct.mptopt* %1, %struct.mptopt** %4, align 8
  %5 = load %struct.mptses*, %struct.mptses** %3, align 8
  %6 = call i32 @mpte_lock_assert_held(%struct.mptses* %5)
  %7 = load %struct.mptopt*, %struct.mptopt** %4, align 8
  %8 = getelementptr inbounds %struct.mptopt, %struct.mptopt* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MPOF_ATTACHED, align 4
  %11 = and i32 %9, %10
  %12 = call i32 @VERIFY(i32 %11)
  %13 = load i32, i32* @MPOF_ATTACHED, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.mptopt*, %struct.mptopt** %4, align 8
  %16 = getelementptr inbounds %struct.mptopt, %struct.mptopt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.mptses*, %struct.mptses** %3, align 8
  %20 = getelementptr inbounds %struct.mptses, %struct.mptses* %19, i32 0, i32 0
  %21 = load %struct.mptopt*, %struct.mptopt** %4, align 8
  %22 = load i32, i32* @mpo_entry, align 4
  %23 = call i32 @TAILQ_REMOVE(i32* %20, %struct.mptopt* %21, i32 %22)
  ret void
}

declare dso_local i32 @mpte_lock_assert_held(%struct.mptses*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.mptopt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
