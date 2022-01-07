; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_defrouter_reset.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_defrouter_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_defrouter = type { i32, i32 }

@nd6_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@nd_defrouter = common dso_local global i32 0, align 4
@NDDRF_INSTALLED = common dso_local global i32 0, align 4
@dr_entry = common dso_local global i32 0, align 4
@ifa_mtx_grp = common dso_local global i32 0, align 4
@ifa_mtx_attr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @defrouter_reset() #0 {
  %1 = alloca %struct.nd_defrouter*, align 8
  %2 = alloca %struct.nd_defrouter, align 4
  %3 = load i32, i32* @nd6_mutex, align 4
  %4 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %5 = call i32 @LCK_MTX_ASSERT(i32 %3, i32 %4)
  %6 = call %struct.nd_defrouter* @TAILQ_FIRST(i32* @nd_defrouter)
  store %struct.nd_defrouter* %6, %struct.nd_defrouter** %1, align 8
  br label %7

7:                                                ; preds = %39, %0
  %8 = load %struct.nd_defrouter*, %struct.nd_defrouter** %1, align 8
  %9 = icmp ne %struct.nd_defrouter* %8, null
  br i1 %9, label %10, label %40

10:                                               ; preds = %7
  %11 = load %struct.nd_defrouter*, %struct.nd_defrouter** %1, align 8
  %12 = call i32 @NDDR_LOCK(%struct.nd_defrouter* %11)
  %13 = load %struct.nd_defrouter*, %struct.nd_defrouter** %1, align 8
  %14 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NDDRF_INSTALLED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %10
  %20 = load %struct.nd_defrouter*, %struct.nd_defrouter** %1, align 8
  %21 = call i32 @NDDR_ADDREF_LOCKED(%struct.nd_defrouter* %20)
  %22 = load %struct.nd_defrouter*, %struct.nd_defrouter** %1, align 8
  %23 = call i32 @NDDR_UNLOCK(%struct.nd_defrouter* %22)
  %24 = load i32, i32* @nd6_mutex, align 4
  %25 = call i32 @lck_mtx_unlock(i32 %24)
  %26 = load %struct.nd_defrouter*, %struct.nd_defrouter** %1, align 8
  %27 = call i32 @defrouter_delreq(%struct.nd_defrouter* %26)
  %28 = load i32, i32* @nd6_mutex, align 4
  %29 = call i32 @lck_mtx_lock(i32 %28)
  %30 = load %struct.nd_defrouter*, %struct.nd_defrouter** %1, align 8
  %31 = call i32 @NDDR_REMREF(%struct.nd_defrouter* %30)
  %32 = call %struct.nd_defrouter* @TAILQ_FIRST(i32* @nd_defrouter)
  store %struct.nd_defrouter* %32, %struct.nd_defrouter** %1, align 8
  br label %39

33:                                               ; preds = %10
  %34 = load %struct.nd_defrouter*, %struct.nd_defrouter** %1, align 8
  %35 = call i32 @NDDR_UNLOCK(%struct.nd_defrouter* %34)
  %36 = load %struct.nd_defrouter*, %struct.nd_defrouter** %1, align 8
  %37 = load i32, i32* @dr_entry, align 4
  %38 = call %struct.nd_defrouter* @TAILQ_NEXT(%struct.nd_defrouter* %36, i32 %37)
  store %struct.nd_defrouter* %38, %struct.nd_defrouter** %1, align 8
  br label %39

39:                                               ; preds = %33, %19
  br label %7

40:                                               ; preds = %7
  %41 = call i32 @bzero(%struct.nd_defrouter* %2, i32 8)
  %42 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %2, i32 0, i32 1
  %43 = load i32, i32* @ifa_mtx_grp, align 4
  %44 = load i32, i32* @ifa_mtx_attr, align 4
  %45 = call i32 @lck_mtx_init(i32* %42, i32 %43, i32 %44)
  %46 = load i32, i32* @nd6_mutex, align 4
  %47 = call i32 @lck_mtx_unlock(i32 %46)
  %48 = call i32 @defrouter_delreq(%struct.nd_defrouter* %2)
  %49 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %2, i32 0, i32 1
  %50 = load i32, i32* @ifa_mtx_grp, align 4
  %51 = call i32 @lck_mtx_destroy(i32* %49, i32 %50)
  %52 = load i32, i32* @nd6_mutex, align 4
  %53 = call i32 @lck_mtx_lock(i32 %52)
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local %struct.nd_defrouter* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @NDDR_LOCK(%struct.nd_defrouter*) #1

declare dso_local i32 @NDDR_ADDREF_LOCKED(%struct.nd_defrouter*) #1

declare dso_local i32 @NDDR_UNLOCK(%struct.nd_defrouter*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @defrouter_delreq(%struct.nd_defrouter*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @NDDR_REMREF(%struct.nd_defrouter*) #1

declare dso_local %struct.nd_defrouter* @TAILQ_NEXT(%struct.nd_defrouter*, i32) #1

declare dso_local i32 @bzero(%struct.nd_defrouter*, i32) #1

declare dso_local i32 @lck_mtx_init(i32*, i32, i32) #1

declare dso_local i32 @lck_mtx_destroy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
