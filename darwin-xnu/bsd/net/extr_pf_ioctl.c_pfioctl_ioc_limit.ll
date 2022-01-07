; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pfioctl_ioc_limit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pfioctl_ioc_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }
%struct.pfioc_limit = type { i64, i32 }
%struct.proc = type { i32 }

@PF_LIMIT_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@pf_pool_limits = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pfioc_limit*, %struct.proc*)* @pfioctl_ioc_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfioctl_ioc_limit(i32 %0, %struct.pfioc_limit* %1, %struct.proc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfioc_limit*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pfioc_limit* %1, %struct.pfioc_limit** %5, align 8
  store %struct.proc* %2, %struct.proc** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %86 [
    i32 129, label %10
    i32 128, label %33
  ]

10:                                               ; preds = %3
  %11 = load %struct.pfioc_limit*, %struct.pfioc_limit** %5, align 8
  %12 = getelementptr inbounds %struct.pfioc_limit, %struct.pfioc_limit* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = load %struct.pfioc_limit*, %struct.pfioc_limit** %5, align 8
  %17 = getelementptr inbounds %struct.pfioc_limit, %struct.pfioc_limit* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PF_LIMIT_MAX, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15, %10
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %7, align 4
  br label %89

23:                                               ; preds = %15
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pf_pool_limits, align 8
  %25 = load %struct.pfioc_limit*, %struct.pfioc_limit** %5, align 8
  %26 = getelementptr inbounds %struct.pfioc_limit, %struct.pfioc_limit* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.pfioc_limit*, %struct.pfioc_limit** %5, align 8
  %32 = getelementptr inbounds %struct.pfioc_limit, %struct.pfioc_limit* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  br label %88

33:                                               ; preds = %3
  %34 = load %struct.pfioc_limit*, %struct.pfioc_limit** %5, align 8
  %35 = getelementptr inbounds %struct.pfioc_limit, %struct.pfioc_limit* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %33
  %39 = load %struct.pfioc_limit*, %struct.pfioc_limit** %5, align 8
  %40 = getelementptr inbounds %struct.pfioc_limit, %struct.pfioc_limit* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PF_LIMIT_MAX, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %53, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pf_pool_limits, align 8
  %46 = load %struct.pfioc_limit*, %struct.pfioc_limit** %5, align 8
  %47 = getelementptr inbounds %struct.pfioc_limit, %struct.pfioc_limit* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %44, %38, %33
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %7, align 4
  br label %89

55:                                               ; preds = %44
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pf_pool_limits, align 8
  %57 = load %struct.pfioc_limit*, %struct.pfioc_limit** %5, align 8
  %58 = getelementptr inbounds %struct.pfioc_limit, %struct.pfioc_limit* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.pfioc_limit*, %struct.pfioc_limit** %5, align 8
  %64 = getelementptr inbounds %struct.pfioc_limit, %struct.pfioc_limit* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @pool_sethardlimit(i32* %62, i32 %65, i32* null, i32 0)
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pf_pool_limits, align 8
  %68 = load %struct.pfioc_limit*, %struct.pfioc_limit** %5, align 8
  %69 = getelementptr inbounds %struct.pfioc_limit, %struct.pfioc_limit* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %8, align 4
  %74 = load %struct.pfioc_limit*, %struct.pfioc_limit** %5, align 8
  %75 = getelementptr inbounds %struct.pfioc_limit, %struct.pfioc_limit* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pf_pool_limits, align 8
  %78 = load %struct.pfioc_limit*, %struct.pfioc_limit** %5, align 8
  %79 = getelementptr inbounds %struct.pfioc_limit, %struct.pfioc_limit* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 %76, i32* %82, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.pfioc_limit*, %struct.pfioc_limit** %5, align 8
  %85 = getelementptr inbounds %struct.pfioc_limit, %struct.pfioc_limit* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  br label %88

86:                                               ; preds = %3
  %87 = call i32 @VERIFY(i32 0)
  br label %88

88:                                               ; preds = %86, %55, %23
  br label %89

89:                                               ; preds = %88, %53, %21
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i32 @pool_sethardlimit(i32*, i32, i32*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
