; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_nd6_setmtu.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_nd6_setmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64 }
%struct.nd_ifinfo = type { i64, i64, i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@IPV6_MMTU = common dso_local global i64 0, align 8
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"nd6_setmtu: new link MTU on %s (%u) is too small for IPv6\0A\00", align 1
@in6_maxmtu = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nd6_setmtu(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.nd_ifinfo*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %7 = call %struct.nd_ifinfo* @ND_IFINFO(%struct.ifnet* %6)
  store %struct.nd_ifinfo* %7, %struct.nd_ifinfo** %3, align 8
  %8 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %9 = icmp eq %struct.nd_ifinfo* null, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* @FALSE, align 8
  %12 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %13 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  br label %61

17:                                               ; preds = %10
  %18 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %19 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %18, i32 0, i32 3
  %20 = call i32 @lck_mtx_lock(i32* %19)
  %21 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %22 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %4, align 8
  %24 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %28 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  store i64 %26, i64* %5, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @IPV6_MMTU, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %17
  %33 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %34 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IPV6_MMTU, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load i32, i32* @LOG_NOTICE, align 4
  %40 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %41 = call i32 @if_name(%struct.ifnet* %40)
  %42 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %43 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @log(i32 %39, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %45)
  br label %47

47:                                               ; preds = %38, %32, %17
  %48 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %49 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %52 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  %53 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %54 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %53, i32 0, i32 3
  %55 = call i32 @lck_mtx_unlock(i32* %54)
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @in6_maxmtu, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = call i32 (...) @in6_setmaxmtu()
  br label %61

61:                                               ; preds = %16, %59, %47
  ret void
}

declare dso_local %struct.nd_ifinfo* @ND_IFINFO(%struct.ifnet*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @log(i32, i8*, i32, i32) #1

declare dso_local i32 @if_name(%struct.ifnet*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @in6_setmaxmtu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
