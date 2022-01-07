; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_defrtrlist_add_static.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_defrtrlist_add_static.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_defrouter = type { i32, i32, i32, i32, i32, i32 }

@NDDRF_STATIC = common dso_local global i32 0, align 4
@ND_RA_FLAG_RTPREF_MASK = common dso_local global i32 0, align 4
@nd6_mutex = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @defrtrlist_add_static(%struct.nd_defrouter* %0) #0 {
  %2 = alloca %struct.nd_defrouter*, align 8
  %3 = alloca %struct.nd_defrouter*, align 8
  %4 = alloca i32, align 4
  store %struct.nd_defrouter* %0, %struct.nd_defrouter** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.nd_defrouter*, %struct.nd_defrouter** %2, align 8
  %6 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %5, i32 0, i32 0
  store i32 -1, i32* %6, align 4
  %7 = load i32, i32* @NDDRF_STATIC, align 4
  %8 = load %struct.nd_defrouter*, %struct.nd_defrouter** %2, align 8
  %9 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @ND_RA_FLAG_RTPREF_MASK, align 4
  %13 = load %struct.nd_defrouter*, %struct.nd_defrouter** %2, align 8
  %14 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @nd6_mutex, align 4
  %18 = call i32 @lck_mtx_lock(i32 %17)
  %19 = load %struct.nd_defrouter*, %struct.nd_defrouter** %2, align 8
  %20 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %19, i32 0, i32 4
  %21 = load %struct.nd_defrouter*, %struct.nd_defrouter** %2, align 8
  %22 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.nd_defrouter* @defrouter_lookup(i32* %20, i32 %23)
  store %struct.nd_defrouter* %24, %struct.nd_defrouter** %3, align 8
  %25 = load %struct.nd_defrouter*, %struct.nd_defrouter** %3, align 8
  %26 = icmp ne %struct.nd_defrouter* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %1
  %28 = load %struct.nd_defrouter*, %struct.nd_defrouter** %3, align 8
  %29 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @NDDRF_STATIC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %4, align 4
  br label %54

36:                                               ; preds = %27, %1
  %37 = load %struct.nd_defrouter*, %struct.nd_defrouter** %3, align 8
  %38 = icmp ne %struct.nd_defrouter* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.nd_defrouter*, %struct.nd_defrouter** %3, align 8
  %41 = call i32 @NDDR_REMREF(%struct.nd_defrouter* %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.nd_defrouter*, %struct.nd_defrouter** %2, align 8
  %44 = call %struct.nd_defrouter* @defrtrlist_update(%struct.nd_defrouter* %43)
  store %struct.nd_defrouter* %44, %struct.nd_defrouter** %3, align 8
  %45 = load %struct.nd_defrouter*, %struct.nd_defrouter** %3, align 8
  %46 = icmp ne %struct.nd_defrouter* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.nd_defrouter*, %struct.nd_defrouter** %3, align 8
  %49 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %4, align 4
  br label %53

51:                                               ; preds = %42
  %52 = load i32, i32* @ENOMEM, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %47
  br label %54

54:                                               ; preds = %53, %34
  %55 = load %struct.nd_defrouter*, %struct.nd_defrouter** %3, align 8
  %56 = icmp ne %struct.nd_defrouter* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.nd_defrouter*, %struct.nd_defrouter** %3, align 8
  %59 = call i32 @NDDR_REMREF(%struct.nd_defrouter* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* @nd6_mutex, align 4
  %62 = call i32 @lck_mtx_unlock(i32 %61)
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local %struct.nd_defrouter* @defrouter_lookup(i32*, i32) #1

declare dso_local i32 @NDDR_REMREF(%struct.nd_defrouter*) #1

declare dso_local %struct.nd_defrouter* @defrtrlist_update(%struct.nd_defrouter*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
