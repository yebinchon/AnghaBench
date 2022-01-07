; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_nd6_prefix_equal_lookup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_nd6_prefix_equal_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.nd_prefix* }
%struct.nd_prefix = type { i32, i32, %struct.TYPE_3__, %struct.nd_prefix* }
%struct.TYPE_3__ = type { i32 }

@nd6_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@nd_prefix = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@NDPRF_ONLINK = common dso_local global i32 0, align 4
@NDPRF_IFSCOPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nd_prefix* (%struct.nd_prefix*, i32)* @nd6_prefix_equal_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nd_prefix* @nd6_prefix_equal_lookup(%struct.nd_prefix* %0, i32 %1) #0 {
  %3 = alloca %struct.nd_prefix*, align 8
  %4 = alloca %struct.nd_prefix*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nd_prefix*, align 8
  store %struct.nd_prefix* %0, %struct.nd_prefix** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @nd6_mutex, align 4
  %8 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %9 = call i32 @LCK_MTX_ASSERT(i32 %7, i32 %8)
  %10 = load %struct.nd_prefix*, %struct.nd_prefix** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nd_prefix, i32 0, i32 0), align 8
  store %struct.nd_prefix* %10, %struct.nd_prefix** %6, align 8
  br label %11

11:                                               ; preds = %70, %2
  %12 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %13 = icmp ne %struct.nd_prefix* %12, null
  br i1 %13, label %14, label %74

14:                                               ; preds = %11
  %15 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %16 = load %struct.nd_prefix*, %struct.nd_prefix** %4, align 8
  %17 = icmp eq %struct.nd_prefix* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %70

19:                                               ; preds = %14
  %20 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %21 = call i32 @NDPR_LOCK(%struct.nd_prefix* %20)
  %22 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %23 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @NDPRF_ONLINK, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %30 = call i32 @NDPR_UNLOCK(%struct.nd_prefix* %29)
  br label %70

31:                                               ; preds = %19
  %32 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %33 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nd_prefix*, %struct.nd_prefix** %4, align 8
  %36 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %39, label %67

39:                                               ; preds = %31
  %40 = load %struct.nd_prefix*, %struct.nd_prefix** %4, align 8
  %41 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %44 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.nd_prefix*, %struct.nd_prefix** %4, align 8
  %47 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @in6_are_prefix_equal(i32* %42, i32* %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %39
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %56 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @NDPRF_IFSCOPE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %54, %51
  %62 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %63 = call i32 @NDPR_ADDREF_LOCKED(%struct.nd_prefix* %62)
  %64 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %65 = call i32 @NDPR_UNLOCK(%struct.nd_prefix* %64)
  %66 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  store %struct.nd_prefix* %66, %struct.nd_prefix** %3, align 8
  br label %75

67:                                               ; preds = %54, %39, %31
  %68 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %69 = call i32 @NDPR_UNLOCK(%struct.nd_prefix* %68)
  br label %70

70:                                               ; preds = %67, %28, %18
  %71 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %72 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %71, i32 0, i32 3
  %73 = load %struct.nd_prefix*, %struct.nd_prefix** %72, align 8
  store %struct.nd_prefix* %73, %struct.nd_prefix** %6, align 8
  br label %11

74:                                               ; preds = %11
  store %struct.nd_prefix* null, %struct.nd_prefix** %3, align 8
  br label %75

75:                                               ; preds = %74, %61
  %76 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  ret %struct.nd_prefix* %76
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @NDPR_LOCK(%struct.nd_prefix*) #1

declare dso_local i32 @NDPR_UNLOCK(%struct.nd_prefix*) #1

declare dso_local i64 @in6_are_prefix_equal(i32*, i32*, i32) #1

declare dso_local i32 @NDPR_ADDREF_LOCKED(%struct.nd_prefix*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
