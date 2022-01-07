; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_defrtrlist_del_static.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_defrtrlist_del_static.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_defrouter = type { i32, i32, i32 }

@nd6_mutex = common dso_local global i32 0, align 4
@NDDRF_STATIC = common dso_local global i32 0, align 4
@nd_defrouter = common dso_local global i32 0, align 4
@dr_entry = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @defrtrlist_del_static(%struct.nd_defrouter* %0) #0 {
  %2 = alloca %struct.nd_defrouter*, align 8
  %3 = alloca %struct.nd_defrouter*, align 8
  store %struct.nd_defrouter* %0, %struct.nd_defrouter** %2, align 8
  %4 = load i32, i32* @nd6_mutex, align 4
  %5 = call i32 @lck_mtx_lock(i32 %4)
  %6 = load %struct.nd_defrouter*, %struct.nd_defrouter** %2, align 8
  %7 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %6, i32 0, i32 2
  %8 = load %struct.nd_defrouter*, %struct.nd_defrouter** %2, align 8
  %9 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.nd_defrouter* @defrouter_lookup(i32* %7, i32 %10)
  store %struct.nd_defrouter* %11, %struct.nd_defrouter** %3, align 8
  %12 = load %struct.nd_defrouter*, %struct.nd_defrouter** %3, align 8
  %13 = icmp eq %struct.nd_defrouter* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.nd_defrouter*, %struct.nd_defrouter** %3, align 8
  %16 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NDDRF_STATIC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %14, %1
  %22 = load %struct.nd_defrouter*, %struct.nd_defrouter** %3, align 8
  %23 = icmp ne %struct.nd_defrouter* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.nd_defrouter*, %struct.nd_defrouter** %3, align 8
  %26 = call i32 @NDDR_REMREF(%struct.nd_defrouter* %25)
  br label %27

27:                                               ; preds = %24, %21
  store %struct.nd_defrouter* null, %struct.nd_defrouter** %3, align 8
  br label %38

28:                                               ; preds = %14
  %29 = load %struct.nd_defrouter*, %struct.nd_defrouter** %3, align 8
  %30 = load i32, i32* @dr_entry, align 4
  %31 = call i32 @TAILQ_REMOVE(i32* @nd_defrouter, %struct.nd_defrouter* %29, i32 %30)
  %32 = load %struct.nd_defrouter*, %struct.nd_defrouter** %3, align 8
  %33 = call i32 @defrtrlist_del(%struct.nd_defrouter* %32)
  %34 = load %struct.nd_defrouter*, %struct.nd_defrouter** %3, align 8
  %35 = call i32 @NDDR_REMREF(%struct.nd_defrouter* %34)
  %36 = load %struct.nd_defrouter*, %struct.nd_defrouter** %3, align 8
  %37 = call i32 @NDDR_REMREF(%struct.nd_defrouter* %36)
  br label %38

38:                                               ; preds = %28, %27
  %39 = load i32, i32* @nd6_mutex, align 4
  %40 = call i32 @lck_mtx_unlock(i32 %39)
  %41 = load %struct.nd_defrouter*, %struct.nd_defrouter** %3, align 8
  %42 = icmp ne %struct.nd_defrouter* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @EINVAL, align 4
  br label %46

46:                                               ; preds = %44, %43
  %47 = phi i32 [ 0, %43 ], [ %45, %44 ]
  ret i32 %47
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local %struct.nd_defrouter* @defrouter_lookup(i32*, i32) #1

declare dso_local i32 @NDDR_REMREF(%struct.nd_defrouter*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.nd_defrouter*, i32) #1

declare dso_local i32 @defrtrlist_del(%struct.nd_defrouter*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
