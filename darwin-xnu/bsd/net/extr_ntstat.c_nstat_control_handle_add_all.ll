; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_control_handle_add_all.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_control_handle_add_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64 (%struct.TYPE_14__*, %struct.TYPE_13__*)* }

@EINVAL = common dso_local global i64 0, align 8
@NSTAT_PROVIDER_LAST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i64 0, align 8
@nstat_privcheck = common dso_local global i64 0, align 8
@PRIV_NET_PRIVILEGED_NETWORK_STATISTICS = common dso_local global i32 0, align 4
@NSTAT_FILTER_SUPPRESS_SRC_ADDED = common dso_local global i32 0, align 4
@NSTAT_FLAG_SUPPORTS_UPDATES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, i32)* @nstat_control_handle_add_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nstat_control_handle_add_all(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @mbuf_len(i32 %9)
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 12
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64, i64* @EINVAL, align 8
  store i64 %14, i64* %3, align 8
  br label %90

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.TYPE_13__* @mbuf_data(i32 %16)
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %7, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @NSTAT_PROVIDER_LAST, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i64, i64* @ENOENT, align 8
  store i64 %24, i64* %3, align 8
  br label %90

25:                                               ; preds = %15
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.TYPE_12__* @nstat_find_provider_by_id(i32 %28)
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %8, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %31 = icmp ne %struct.TYPE_12__* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = load i64, i64* @ENOENT, align 8
  store i64 %33, i64* %3, align 8
  br label %90

34:                                               ; preds = %25
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64 (%struct.TYPE_14__*, %struct.TYPE_13__*)*, i64 (%struct.TYPE_14__*, %struct.TYPE_13__*)** %36, align 8
  %38 = icmp eq i64 (%struct.TYPE_14__*, %struct.TYPE_13__*)* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* @ENOTSUP, align 8
  store i64 %40, i64* %3, align 8
  br label %90

41:                                               ; preds = %34
  %42 = load i64, i64* @nstat_privcheck, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = call i32 (...) @kauth_cred_get()
  %46 = load i32, i32* @PRIV_NET_PRIVILEGED_NETWORK_STATISTICS, align 4
  %47 = call i64 @priv_check_cred(i32 %45, i32 %46, i32 0)
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i64, i64* %6, align 8
  store i64 %51, i64* %3, align 8
  br label %90

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %41
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = call i32 @lck_mtx_lock(i32* %55)
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @NSTAT_FILTER_SUPPRESS_SRC_ADDED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %53
  %64 = load i32, i32* @NSTAT_FLAG_SUPPORTS_UPDATES, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %53
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = call i32 @lck_mtx_unlock(i32* %71)
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i64 (%struct.TYPE_14__*, %struct.TYPE_13__*)*, i64 (%struct.TYPE_14__*, %struct.TYPE_13__*)** %74, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %78 = call i64 %75(%struct.TYPE_14__* %76, %struct.TYPE_13__* %77)
  store i64 %78, i64* %6, align 8
  %79 = load i64, i64* %6, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %69
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %87 = call i32 @nstat_enqueue_success(i32 %85, %struct.TYPE_14__* %86, i32 0)
  br label %88

88:                                               ; preds = %81, %69
  %89 = load i64, i64* %6, align 8
  store i64 %89, i64* %3, align 8
  br label %90

90:                                               ; preds = %88, %50, %39, %32, %23, %13
  %91 = load i64, i64* %3, align 8
  ret i64 %91
}

declare dso_local i32 @mbuf_len(i32) #1

declare dso_local %struct.TYPE_13__* @mbuf_data(i32) #1

declare dso_local %struct.TYPE_12__* @nstat_find_provider_by_id(i32) #1

declare dso_local i64 @priv_check_cred(i32, i32, i32) #1

declare dso_local i32 @kauth_cred_get(...) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @nstat_enqueue_success(i32, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
