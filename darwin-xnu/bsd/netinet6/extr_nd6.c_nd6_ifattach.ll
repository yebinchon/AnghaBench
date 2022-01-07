; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_nd6_ifattach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_nd6_ifattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.nd_ifinfo = type { i32, i32, i64 }

@nd_if_lock_grp = common dso_local global i32 0, align 4
@nd_if_lock_attr = common dso_local global i32 0, align 4
@ND6_IFF_PERFORMNUD = common dso_local global i32 0, align 4
@ND6_IFF_DAD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@IFF_MULTICAST = common dso_local global i32 0, align 4
@ND6_IFF_IFDISABLED = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"%s Reinit'd ND information for interface %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nd6_ifattach(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.nd_ifinfo*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %5 = call %struct.nd_ifinfo* @ND_IFINFO(%struct.ifnet* %4)
  store %struct.nd_ifinfo* %5, %struct.nd_ifinfo** %3, align 8
  %6 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %7 = icmp ne %struct.nd_ifinfo* null, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @VERIFY(i32 %8)
  %10 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %11 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %1
  %15 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %16 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %15, i32 0, i32 0
  %17 = load i32, i32* @nd_if_lock_grp, align 4
  %18 = load i32, i32* @nd_if_lock_attr, align 4
  %19 = call i32 @lck_mtx_init(i32* %16, i32 %17, i32 %18)
  %20 = load i32, i32* @ND6_IFF_PERFORMNUD, align 4
  %21 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %22 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @ND6_IFF_DAD, align 4
  %24 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %25 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i64, i64* @TRUE, align 8
  %29 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %30 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %14, %1
  %32 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %33 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %32, i32 0, i32 0
  %34 = call i32 @lck_mtx_lock(i32* %33)
  %35 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IFF_MULTICAST, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %31
  %42 = load i32, i32* @ND6_IFF_IFDISABLED, align 4
  %43 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %44 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %41, %31
  %48 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %49 = call i32 @nd6_ifreset(%struct.ifnet* %48)
  %50 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %51 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %50, i32 0, i32 0
  %52 = call i32 @lck_mtx_unlock(i32* %51)
  %53 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %54 = call i32 @nd6_setmtu(%struct.ifnet* %53)
  %55 = load i32, i32* @LOG_INFO, align 4
  %56 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %57 = call i32 @if_name(%struct.ifnet* %56)
  %58 = call i32 @nd6log0(i32 %57)
  ret void
}

declare dso_local %struct.nd_ifinfo* @ND_IFINFO(%struct.ifnet*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @lck_mtx_init(i32*, i32, i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @nd6_ifreset(%struct.ifnet*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @nd6_setmtu(%struct.ifnet*) #1

declare dso_local i32 @nd6log0(i32) #1

declare dso_local i32 @if_name(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
