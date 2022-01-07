; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_ndpr_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_ndpr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_prefix = type { i32, i32, i32, i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@ndpr_zone = common dso_local global i32 0, align 4
@ndpr_size = common dso_local global i32 0, align 4
@ifa_mtx_grp = common dso_local global i32 0, align 4
@ifa_mtx_attr = common dso_local global i32 0, align 4
@IFD_ALLOC = common dso_local global i32 0, align 4
@ndpr_debug = common dso_local global i64 0, align 8
@IFD_DEBUG = common dso_local global i32 0, align 4
@ndpr_trace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nd_prefix* (i32)* @ndpr_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nd_prefix* @ndpr_alloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nd_prefix*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @M_WAITOK, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @ndpr_zone, align 4
  %9 = call %struct.nd_prefix* @zalloc(i32 %8)
  br label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ndpr_zone, align 4
  %12 = call %struct.nd_prefix* @zalloc_noblock(i32 %11)
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi %struct.nd_prefix* [ %9, %7 ], [ %12, %10 ]
  store %struct.nd_prefix* %14, %struct.nd_prefix** %3, align 8
  %15 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %16 = icmp ne %struct.nd_prefix* %15, null
  br i1 %16, label %17, label %46

17:                                               ; preds = %13
  %18 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %19 = load i32, i32* @ndpr_size, align 4
  %20 = call i32 @bzero(%struct.nd_prefix* %18, i32 %19)
  %21 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %22 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %21, i32 0, i32 3
  %23 = load i32, i32* @ifa_mtx_grp, align 4
  %24 = load i32, i32* @ifa_mtx_attr, align 4
  %25 = call i32 @lck_mtx_init(i32* %22, i32 %23, i32 %24)
  %26 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %27 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %26, i32 0, i32 2
  %28 = call i32 @RB_INIT(i32* %27)
  %29 = load i32, i32* @IFD_ALLOC, align 4
  %30 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %31 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i64, i64* @ndpr_debug, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %17
  %37 = load i32, i32* @IFD_DEBUG, align 4
  %38 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %39 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @ndpr_trace, align 4
  %43 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %44 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %36, %17
  br label %46

46:                                               ; preds = %45, %13
  %47 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  ret %struct.nd_prefix* %47
}

declare dso_local %struct.nd_prefix* @zalloc(i32) #1

declare dso_local %struct.nd_prefix* @zalloc_noblock(i32) #1

declare dso_local i32 @bzero(%struct.nd_prefix*, i32) #1

declare dso_local i32 @lck_mtx_init(i32*, i32, i32) #1

declare dso_local i32 @RB_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
