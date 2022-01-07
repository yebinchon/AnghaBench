; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_control_connect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_control_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, i32, i32, i32, i32 }
%struct.sockaddr_ctl = type { i32 }

@nstat_malloc_tag = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nstat_lck_grp = common dso_local global i32 0, align 4
@NSTAT_FLAG_REQCOUNTS = common dso_local global i32 0, align 4
@nstat_mtx = common dso_local global i32 0, align 4
@nstat_controls = common dso_local global %struct.TYPE_5__* null, align 8
@nstat_idle_time = common dso_local global i64 0, align 8
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@nstat_idle_check = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sockaddr_ctl*, i8**)* @nstat_control_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nstat_control_connect(i32 %0, %struct.sockaddr_ctl* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_ctl*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr_ctl* %1, %struct.sockaddr_ctl** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load i32, i32* @nstat_malloc_tag, align 4
  %10 = call %struct.TYPE_5__* @OSMalloc(i32 24, i32 %9)
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %8, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %12 = icmp eq %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  store i32 %14, i32* %4, align 4
  br label %52

15:                                               ; preds = %3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = call i32 @bzero(%struct.TYPE_5__* %16, i32 24)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 4
  %20 = load i32, i32* @nstat_lck_grp, align 4
  %21 = call i32 @lck_mtx_init(i32* %19, i32 %20, i32* null)
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.sockaddr_ctl*, %struct.sockaddr_ctl** %6, align 8
  %26 = getelementptr inbounds %struct.sockaddr_ctl, %struct.sockaddr_ctl* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @NSTAT_FLAG_REQCOUNTS, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = bitcast %struct.TYPE_5__* %33 to i8*
  %35 = load i8**, i8*** %7, align 8
  store i8* %34, i8** %35, align 8
  %36 = call i32 @lck_mtx_lock(i32* @nstat_mtx)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nstat_controls, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** @nstat_controls, align 8
  %41 = load i64, i64* @nstat_idle_time, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %15
  %44 = load i32, i32* @NSEC_PER_SEC, align 4
  %45 = call i32 @clock_interval_to_deadline(i32 60, i32 %44, i64* @nstat_idle_time)
  %46 = load i64, i64* @nstat_idle_check, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i64, i64* @nstat_idle_time, align 8
  %49 = call i32 @thread_call_func_delayed(i32 %47, i32* null, i64 %48)
  br label %50

50:                                               ; preds = %43, %15
  %51 = call i32 @lck_mtx_unlock(i32* @nstat_mtx)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %13
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.TYPE_5__* @OSMalloc(i32, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @lck_mtx_init(i32*, i32, i32*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @clock_interval_to_deadline(i32, i32, i64*) #1

declare dso_local i32 @thread_call_func_delayed(i32, i32*, i64) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
