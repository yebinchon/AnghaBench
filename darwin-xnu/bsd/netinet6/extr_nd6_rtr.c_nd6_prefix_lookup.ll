; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_nd6_prefix_lookup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_nd6_prefix_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.nd_prefix* }
%struct.nd_prefix = type { i64, i64, i32, %struct.TYPE_3__, %struct.nd_prefix* }
%struct.TYPE_3__ = type { i32 }

@nd6_mutex = common dso_local global i32 0, align 4
@nd_prefix = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ND6_PREFIX_EXPIRY_UNSPEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nd_prefix* @nd6_prefix_lookup(%struct.nd_prefix* %0, i32 %1) #0 {
  %3 = alloca %struct.nd_prefix*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nd_prefix*, align 8
  store %struct.nd_prefix* %0, %struct.nd_prefix** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @nd6_mutex, align 4
  %7 = call i32 @lck_mtx_lock(i32 %6)
  %8 = load %struct.nd_prefix*, %struct.nd_prefix** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nd_prefix, i32 0, i32 0), align 8
  store %struct.nd_prefix* %8, %struct.nd_prefix** %5, align 8
  br label %9

9:                                                ; preds = %58, %2
  %10 = load %struct.nd_prefix*, %struct.nd_prefix** %5, align 8
  %11 = icmp ne %struct.nd_prefix* %10, null
  br i1 %11, label %12, label %62

12:                                               ; preds = %9
  %13 = load %struct.nd_prefix*, %struct.nd_prefix** %5, align 8
  %14 = call i32 @NDPR_LOCK(%struct.nd_prefix* %13)
  %15 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %16 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.nd_prefix*, %struct.nd_prefix** %5, align 8
  %19 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %55

22:                                               ; preds = %12
  %23 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %24 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.nd_prefix*, %struct.nd_prefix** %5, align 8
  %27 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %22
  %31 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %32 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.nd_prefix*, %struct.nd_prefix** %5, align 8
  %35 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %38 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @in6_are_prefix_equal(i32* %33, i32* %36, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %30
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @ND6_PREFIX_EXPIRY_UNSPEC, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.nd_prefix*, %struct.nd_prefix** %5, align 8
  %49 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.nd_prefix*, %struct.nd_prefix** %5, align 8
  %52 = call i32 @NDPR_ADDREF_LOCKED(%struct.nd_prefix* %51)
  %53 = load %struct.nd_prefix*, %struct.nd_prefix** %5, align 8
  %54 = call i32 @NDPR_UNLOCK(%struct.nd_prefix* %53)
  br label %62

55:                                               ; preds = %30, %22, %12
  %56 = load %struct.nd_prefix*, %struct.nd_prefix** %5, align 8
  %57 = call i32 @NDPR_UNLOCK(%struct.nd_prefix* %56)
  br label %58

58:                                               ; preds = %55
  %59 = load %struct.nd_prefix*, %struct.nd_prefix** %5, align 8
  %60 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %59, i32 0, i32 4
  %61 = load %struct.nd_prefix*, %struct.nd_prefix** %60, align 8
  store %struct.nd_prefix* %61, %struct.nd_prefix** %5, align 8
  br label %9

62:                                               ; preds = %50, %9
  %63 = load i32, i32* @nd6_mutex, align 4
  %64 = call i32 @lck_mtx_unlock(i32 %63)
  %65 = load %struct.nd_prefix*, %struct.nd_prefix** %5, align 8
  ret %struct.nd_prefix* %65
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @NDPR_LOCK(%struct.nd_prefix*) #1

declare dso_local i64 @in6_are_prefix_equal(i32*, i32*, i64) #1

declare dso_local i32 @NDPR_ADDREF_LOCKED(%struct.nd_prefix*) #1

declare dso_local i32 @NDPR_UNLOCK(%struct.nd_prefix*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
