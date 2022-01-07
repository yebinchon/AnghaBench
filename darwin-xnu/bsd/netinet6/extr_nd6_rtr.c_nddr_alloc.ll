; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_nddr_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_nddr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_defrouter = type { i32, i32, i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@nddr_zone = common dso_local global i32 0, align 4
@nddr_size = common dso_local global i32 0, align 4
@ifa_mtx_grp = common dso_local global i32 0, align 4
@ifa_mtx_attr = common dso_local global i32 0, align 4
@IFD_ALLOC = common dso_local global i32 0, align 4
@nddr_debug = common dso_local global i64 0, align 8
@IFD_DEBUG = common dso_local global i32 0, align 4
@nddr_trace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nd_defrouter* (i32)* @nddr_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nd_defrouter* @nddr_alloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nd_defrouter*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @M_WAITOK, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @nddr_zone, align 4
  %9 = call %struct.nd_defrouter* @zalloc(i32 %8)
  br label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @nddr_zone, align 4
  %12 = call %struct.nd_defrouter* @zalloc_noblock(i32 %11)
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi %struct.nd_defrouter* [ %9, %7 ], [ %12, %10 ]
  store %struct.nd_defrouter* %14, %struct.nd_defrouter** %3, align 8
  %15 = load %struct.nd_defrouter*, %struct.nd_defrouter** %3, align 8
  %16 = icmp ne %struct.nd_defrouter* %15, null
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load %struct.nd_defrouter*, %struct.nd_defrouter** %3, align 8
  %19 = load i32, i32* @nddr_size, align 4
  %20 = call i32 @bzero(%struct.nd_defrouter* %18, i32 %19)
  %21 = load %struct.nd_defrouter*, %struct.nd_defrouter** %3, align 8
  %22 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %21, i32 0, i32 2
  %23 = load i32, i32* @ifa_mtx_grp, align 4
  %24 = load i32, i32* @ifa_mtx_attr, align 4
  %25 = call i32 @lck_mtx_init(i32* %22, i32 %23, i32 %24)
  %26 = load i32, i32* @IFD_ALLOC, align 4
  %27 = load %struct.nd_defrouter*, %struct.nd_defrouter** %3, align 8
  %28 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i64, i64* @nddr_debug, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %17
  %34 = load i32, i32* @IFD_DEBUG, align 4
  %35 = load %struct.nd_defrouter*, %struct.nd_defrouter** %3, align 8
  %36 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @nddr_trace, align 4
  %40 = load %struct.nd_defrouter*, %struct.nd_defrouter** %3, align 8
  %41 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %33, %17
  br label %43

43:                                               ; preds = %42, %13
  %44 = load %struct.nd_defrouter*, %struct.nd_defrouter** %3, align 8
  ret %struct.nd_defrouter* %44
}

declare dso_local %struct.nd_defrouter* @zalloc(i32) #1

declare dso_local %struct.nd_defrouter* @zalloc_noblock(i32) #1

declare dso_local i32 @bzero(%struct.nd_defrouter*, i32) #1

declare dso_local i32 @lck_mtx_init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
