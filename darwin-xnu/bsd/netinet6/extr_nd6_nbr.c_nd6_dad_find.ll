; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_nbr.c_nd6_dad_find.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_nbr.c_nd6_dad_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.dadq* }
%struct.dadq = type { i32, i32*, %struct.ifaddr*, %struct.TYPE_4__ }
%struct.ifaddr = type { i32 }
%struct.TYPE_4__ = type { %struct.dadq* }
%struct.TYPE_5__ = type { i32 }
%struct.nd_opt_nonce = type { i32, i32* }

@dad6_mutex = common dso_local global i32 0, align 4
@dadq = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ND_OPT_NONCE_LEN = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"%s: a looped back NS message is detected during DAD for %s. Ignoring.\0A\00", align 1
@ip6stat = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dadq* (%struct.ifaddr*, %struct.nd_opt_nonce*)* @nd6_dad_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dadq* @nd6_dad_find(%struct.ifaddr* %0, %struct.nd_opt_nonce* %1) #0 {
  %3 = alloca %struct.ifaddr*, align 8
  %4 = alloca %struct.nd_opt_nonce*, align 8
  %5 = alloca %struct.dadq*, align 8
  store %struct.ifaddr* %0, %struct.ifaddr** %3, align 8
  store %struct.nd_opt_nonce* %1, %struct.nd_opt_nonce** %4, align 8
  %6 = load i32, i32* @dad6_mutex, align 4
  %7 = call i32 @lck_mtx_lock(i32 %6)
  %8 = load %struct.dadq*, %struct.dadq** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dadq, i32 0, i32 0), align 8
  store %struct.dadq* %8, %struct.dadq** %5, align 8
  br label %9

9:                                                ; preds = %69, %2
  %10 = load %struct.dadq*, %struct.dadq** %5, align 8
  %11 = icmp ne %struct.dadq* %10, null
  br i1 %11, label %12, label %74

12:                                               ; preds = %9
  %13 = load %struct.dadq*, %struct.dadq** %5, align 8
  %14 = call i32 @DAD_LOCK_SPIN(%struct.dadq* %13)
  %15 = load %struct.dadq*, %struct.dadq** %5, align 8
  %16 = getelementptr inbounds %struct.dadq, %struct.dadq* %15, i32 0, i32 2
  %17 = load %struct.ifaddr*, %struct.ifaddr** %16, align 8
  %18 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %19 = icmp ne %struct.ifaddr* %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load %struct.dadq*, %struct.dadq** %5, align 8
  %22 = call i32 @DAD_UNLOCK(%struct.dadq* %21)
  br label %69

23:                                               ; preds = %12
  %24 = load %struct.nd_opt_nonce*, %struct.nd_opt_nonce** %4, align 8
  %25 = icmp ne %struct.nd_opt_nonce* %24, null
  br i1 %25, label %26, label %64

26:                                               ; preds = %23
  %27 = load %struct.nd_opt_nonce*, %struct.nd_opt_nonce** %4, align 8
  %28 = getelementptr inbounds %struct.nd_opt_nonce, %struct.nd_opt_nonce* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ND_OPT_NONCE_LEN, align 4
  %31 = add nsw i32 %30, 2
  %32 = sdiv i32 %31, 8
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %64

34:                                               ; preds = %26
  %35 = load %struct.nd_opt_nonce*, %struct.nd_opt_nonce** %4, align 8
  %36 = getelementptr inbounds %struct.nd_opt_nonce, %struct.nd_opt_nonce* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load %struct.dadq*, %struct.dadq** %5, align 8
  %40 = getelementptr inbounds %struct.dadq, %struct.dadq* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* @ND_OPT_NONCE_LEN, align 4
  %44 = call i64 @memcmp(i32* %38, i32* %42, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %34
  %47 = load i32, i32* @LOG_ERR, align 4
  %48 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %49 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @if_name(i32 %50)
  %52 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %53 = call i32 @IFA_IN6(%struct.ifaddr* %52)
  %54 = call i32 @ip6_sprintf(i32 %53)
  %55 = call i32 @nd6log(i32 %54)
  %56 = load %struct.dadq*, %struct.dadq** %5, align 8
  %57 = getelementptr inbounds %struct.dadq, %struct.dadq* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ip6stat, i32 0, i32 0), align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ip6stat, i32 0, i32 0), align 4
  %62 = load %struct.dadq*, %struct.dadq** %5, align 8
  %63 = call i32 @DAD_UNLOCK(%struct.dadq* %62)
  br label %69

64:                                               ; preds = %34, %26, %23
  %65 = load %struct.dadq*, %struct.dadq** %5, align 8
  %66 = call i32 @DAD_ADDREF_LOCKED(%struct.dadq* %65)
  %67 = load %struct.dadq*, %struct.dadq** %5, align 8
  %68 = call i32 @DAD_UNLOCK(%struct.dadq* %67)
  br label %74

69:                                               ; preds = %46, %20
  %70 = load %struct.dadq*, %struct.dadq** %5, align 8
  %71 = getelementptr inbounds %struct.dadq, %struct.dadq* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.dadq*, %struct.dadq** %72, align 8
  store %struct.dadq* %73, %struct.dadq** %5, align 8
  br label %9

74:                                               ; preds = %64, %9
  %75 = load i32, i32* @dad6_mutex, align 4
  %76 = call i32 @lck_mtx_unlock(i32 %75)
  %77 = load %struct.dadq*, %struct.dadq** %5, align 8
  ret %struct.dadq* %77
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @DAD_LOCK_SPIN(%struct.dadq*) #1

declare dso_local i32 @DAD_UNLOCK(%struct.dadq*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @nd6log(i32) #1

declare dso_local i32 @if_name(i32) #1

declare dso_local i32 @ip6_sprintf(i32) #1

declare dso_local i32 @IFA_IN6(%struct.ifaddr*) #1

declare dso_local i32 @DAD_ADDREF_LOCKED(%struct.dadq*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
