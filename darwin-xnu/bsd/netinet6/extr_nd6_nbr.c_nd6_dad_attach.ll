; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_nbr.c_nd6_dad_attach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_nbr.c_nd6_dad_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dadq = type { i32, i64, i64, i64, i64, i64, i64, i64, i32, %struct.ifaddr* }
%struct.ifaddr = type { i32 }

@dad6_mutex = common dso_local global i32 0, align 4
@ip6_dad_count = common dso_local global i32 0, align 4
@dadq = common dso_local global i32 0, align 4
@dad_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dadq* (%struct.dadq*, %struct.ifaddr*)* @nd6_dad_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dadq* @nd6_dad_attach(%struct.dadq* %0, %struct.ifaddr* %1) #0 {
  %3 = alloca %struct.dadq*, align 8
  %4 = alloca %struct.ifaddr*, align 8
  store %struct.dadq* %0, %struct.dadq** %3, align 8
  store %struct.ifaddr* %1, %struct.ifaddr** %4, align 8
  %5 = load i32, i32* @dad6_mutex, align 4
  %6 = call i32 @lck_mtx_lock(i32 %5)
  %7 = load %struct.dadq*, %struct.dadq** %3, align 8
  %8 = call i32 @DAD_LOCK(%struct.dadq* %7)
  %9 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %10 = load %struct.dadq*, %struct.dadq** %3, align 8
  %11 = getelementptr inbounds %struct.dadq, %struct.dadq* %10, i32 0, i32 9
  store %struct.ifaddr* %9, %struct.ifaddr** %11, align 8
  %12 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %13 = call i32 @IFA_ADDREF(%struct.ifaddr* %12)
  %14 = load i32, i32* @ip6_dad_count, align 4
  %15 = load %struct.dadq*, %struct.dadq** %3, align 8
  %16 = getelementptr inbounds %struct.dadq, %struct.dadq* %15, i32 0, i32 8
  store i32 %14, i32* %16, align 8
  %17 = load %struct.dadq*, %struct.dadq** %3, align 8
  %18 = getelementptr inbounds %struct.dadq, %struct.dadq* %17, i32 0, i32 6
  store i64 0, i64* %18, align 8
  %19 = load %struct.dadq*, %struct.dadq** %3, align 8
  %20 = getelementptr inbounds %struct.dadq, %struct.dadq* %19, i32 0, i32 7
  store i64 0, i64* %20, align 8
  %21 = load %struct.dadq*, %struct.dadq** %3, align 8
  %22 = getelementptr inbounds %struct.dadq, %struct.dadq* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load %struct.dadq*, %struct.dadq** %3, align 8
  %24 = getelementptr inbounds %struct.dadq, %struct.dadq* %23, i32 0, i32 5
  store i64 0, i64* %24, align 8
  %25 = load %struct.dadq*, %struct.dadq** %3, align 8
  %26 = getelementptr inbounds %struct.dadq, %struct.dadq* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.dadq*, %struct.dadq** %3, align 8
  %28 = getelementptr inbounds %struct.dadq, %struct.dadq* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load %struct.dadq*, %struct.dadq** %3, align 8
  %30 = getelementptr inbounds %struct.dadq, %struct.dadq* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @VERIFY(i32 %34)
  %36 = load %struct.dadq*, %struct.dadq** %3, align 8
  %37 = getelementptr inbounds %struct.dadq, %struct.dadq* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.dadq*, %struct.dadq** %3, align 8
  %39 = getelementptr inbounds %struct.dadq, %struct.dadq* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.dadq*, %struct.dadq** %3, align 8
  %41 = call i32 @DAD_ADDREF_LOCKED(%struct.dadq* %40)
  %42 = load %struct.dadq*, %struct.dadq** %3, align 8
  %43 = call i32 @DAD_ADDREF_LOCKED(%struct.dadq* %42)
  %44 = load %struct.dadq*, %struct.dadq** %3, align 8
  %45 = load i32, i32* @dad_list, align 4
  %46 = call i32 @TAILQ_INSERT_TAIL(i32* @dadq, %struct.dadq* %44, i32 %45)
  %47 = load %struct.dadq*, %struct.dadq** %3, align 8
  %48 = call i32 @DAD_UNLOCK(%struct.dadq* %47)
  %49 = load i32, i32* @dad6_mutex, align 4
  %50 = call i32 @lck_mtx_unlock(i32 %49)
  %51 = load %struct.dadq*, %struct.dadq** %3, align 8
  ret %struct.dadq* %51
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @DAD_LOCK(%struct.dadq*) #1

declare dso_local i32 @IFA_ADDREF(%struct.ifaddr*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @DAD_ADDREF_LOCKED(%struct.dadq*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.dadq*, i32) #1

declare dso_local i32 @DAD_UNLOCK(%struct.dadq*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
