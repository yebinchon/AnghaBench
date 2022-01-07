; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp.c_mptcp_set_restrictions.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp.c_mptcp_set_restrictions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.socket = type { i32 }
%struct.mptses = type { i64, %struct.mpt_itf_info* }
%struct.mpt_itf_info = type { i64 }

@IFSCOPE_NONE = common dso_local global i64 0, align 8
@ifindex2ifnet = common dso_local global %struct.ifnet** null, align 8
@SO_RESTRICT_DENY_EXPENSIVE = common dso_local global i32 0, align 4
@SO_RESTRICT_DENY_CELLULAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mptcp_set_restrictions(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.mptses*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mpt_itf_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ifnet*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %8 = load %struct.socket*, %struct.socket** %2, align 8
  %9 = call %struct.mptses* @mpsotompte(%struct.socket* %8)
  store %struct.mptses* %9, %struct.mptses** %3, align 8
  %10 = load %struct.mptses*, %struct.mptses** %3, align 8
  %11 = call i32 @mpte_lock_assert_held(%struct.mptses* %10)
  %12 = call i32 (...) @ifnet_head_lock_shared()
  store i64 0, i64* %4, align 8
  br label %13

13:                                               ; preds = %71, %1
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.mptses*, %struct.mptses** %3, align 8
  %16 = getelementptr inbounds %struct.mptses, %struct.mptses* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %74

19:                                               ; preds = %13
  %20 = load %struct.mptses*, %struct.mptses** %3, align 8
  %21 = getelementptr inbounds %struct.mptses, %struct.mptses* %20, i32 0, i32 1
  %22 = load %struct.mpt_itf_info*, %struct.mpt_itf_info** %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.mpt_itf_info, %struct.mpt_itf_info* %22, i64 %23
  store %struct.mpt_itf_info* %24, %struct.mpt_itf_info** %5, align 8
  %25 = load %struct.mpt_itf_info*, %struct.mpt_itf_info** %5, align 8
  %26 = getelementptr inbounds %struct.mpt_itf_info, %struct.mpt_itf_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @IFSCOPE_NONE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %71

32:                                               ; preds = %19
  %33 = load %struct.ifnet**, %struct.ifnet*** @ifindex2ifnet, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.ifnet*, %struct.ifnet** %33, i64 %34
  %36 = load %struct.ifnet*, %struct.ifnet** %35, align 8
  store %struct.ifnet* %36, %struct.ifnet** %7, align 8
  %37 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %38 = icmp eq %struct.ifnet* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %71

40:                                               ; preds = %32
  %41 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %42 = call i64 @IFNET_IS_EXPENSIVE(%struct.ifnet* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load %struct.socket*, %struct.socket** %2, align 8
  %46 = getelementptr inbounds %struct.socket, %struct.socket* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SO_RESTRICT_DENY_EXPENSIVE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i64, i64* @IFSCOPE_NONE, align 8
  %53 = load %struct.mpt_itf_info*, %struct.mpt_itf_info** %5, align 8
  %54 = getelementptr inbounds %struct.mpt_itf_info, %struct.mpt_itf_info* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %51, %44, %40
  %56 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %57 = call i64 @IFNET_IS_CELLULAR(%struct.ifnet* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load %struct.socket*, %struct.socket** %2, align 8
  %61 = getelementptr inbounds %struct.socket, %struct.socket* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SO_RESTRICT_DENY_CELLULAR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i64, i64* @IFSCOPE_NONE, align 8
  %68 = load %struct.mpt_itf_info*, %struct.mpt_itf_info** %5, align 8
  %69 = getelementptr inbounds %struct.mpt_itf_info, %struct.mpt_itf_info* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %66, %59, %55
  br label %71

71:                                               ; preds = %70, %39, %31
  %72 = load i64, i64* %4, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %4, align 8
  br label %13

74:                                               ; preds = %13
  %75 = call i32 (...) @ifnet_head_done()
  ret void
}

declare dso_local %struct.mptses* @mpsotompte(%struct.socket*) #1

declare dso_local i32 @mpte_lock_assert_held(%struct.mptses*) #1

declare dso_local i32 @ifnet_head_lock_shared(...) #1

declare dso_local i64 @IFNET_IS_EXPENSIVE(%struct.ifnet*) #1

declare dso_local i64 @IFNET_IS_CELLULAR(%struct.ifnet*) #1

declare dso_local i32 @ifnet_head_done(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
