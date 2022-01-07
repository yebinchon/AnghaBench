; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_frag6.c_frag6_timeout.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_frag6.c_frag6_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6q = type { %struct.TYPE_4__*, %struct.ip6q*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.fq6_head = type { i32 }

@ip6qlock = common dso_local global i32 0, align 4
@ip6q = common dso_local global %struct.ip6q zeroinitializer, align 8
@ip6stat = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@ip6_maxfragpackets = common dso_local global i64 0, align 8
@frag6_nfragpackets = common dso_local global i32 0, align 4
@frag6_timeout_run = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @frag6_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frag6_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fq6_head, align 4
  %4 = alloca %struct.fq6_head, align 4
  %5 = alloca %struct.ip6q*, align 8
  store i8* %0, i8** %2, align 8
  %6 = call i32 @MBUFQ_INIT(%struct.fq6_head* %3)
  %7 = call i32 @MBUFQ_INIT(%struct.fq6_head* %4)
  %8 = call i32 (...) @net_update_uptime()
  %9 = call i32 @lck_mtx_lock(i32* @ip6qlock)
  %10 = load %struct.ip6q*, %struct.ip6q** getelementptr inbounds (%struct.ip6q, %struct.ip6q* @ip6q, i32 0, i32 1), align 8
  store %struct.ip6q* %10, %struct.ip6q** %5, align 8
  %11 = load %struct.ip6q*, %struct.ip6q** %5, align 8
  %12 = icmp ne %struct.ip6q* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %38, %13
  %15 = load %struct.ip6q*, %struct.ip6q** %5, align 8
  %16 = icmp ne %struct.ip6q* %15, @ip6q
  br i1 %16, label %17, label %39

17:                                               ; preds = %14
  %18 = load %struct.ip6q*, %struct.ip6q** %5, align 8
  %19 = getelementptr inbounds %struct.ip6q, %struct.ip6q* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %19, align 8
  %22 = load %struct.ip6q*, %struct.ip6q** %5, align 8
  %23 = getelementptr inbounds %struct.ip6q, %struct.ip6q* %22, i32 0, i32 1
  %24 = load %struct.ip6q*, %struct.ip6q** %23, align 8
  store %struct.ip6q* %24, %struct.ip6q** %5, align 8
  %25 = load %struct.ip6q*, %struct.ip6q** %5, align 8
  %26 = getelementptr inbounds %struct.ip6q, %struct.ip6q* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %17
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ip6stat, i32 0, i32 1), align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ip6stat, i32 0, i32 1), align 4
  %34 = load %struct.ip6q*, %struct.ip6q** %5, align 8
  %35 = getelementptr inbounds %struct.ip6q, %struct.ip6q* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = call i32 @frag6_freef(%struct.TYPE_4__* %36, %struct.fq6_head* %3, %struct.fq6_head* %4)
  br label %38

38:                                               ; preds = %31, %17
  br label %14

39:                                               ; preds = %14
  br label %40

40:                                               ; preds = %39, %1
  %41 = load i64, i64* @ip6_maxfragpackets, align 8
  %42 = icmp sge i64 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %54, %43
  %45 = load i32, i32* @frag6_nfragpackets, align 4
  %46 = load i64, i64* @ip6_maxfragpackets, align 8
  %47 = trunc i64 %46 to i32
  %48 = icmp ugt i32 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.ip6q, %struct.ip6q* @ip6q, i32 0, i32 0), align 8
  %51 = icmp ne %struct.TYPE_4__* %50, null
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi i1 [ false, %44 ], [ %51, %49 ]
  br i1 %53, label %54, label %59

54:                                               ; preds = %52
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ip6stat, i32 0, i32 0), align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ip6stat, i32 0, i32 0), align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.ip6q, %struct.ip6q* @ip6q, i32 0, i32 0), align 8
  %58 = call i32 @frag6_freef(%struct.TYPE_4__* %57, %struct.fq6_head* %3, %struct.fq6_head* %4)
  br label %44

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %40
  store i64 0, i64* @frag6_timeout_run, align 8
  %61 = call i32 (...) @frag6_sched_timeout()
  %62 = call i32 @lck_mtx_unlock(i32* @ip6qlock)
  %63 = call i32 @MBUFQ_EMPTY(%struct.fq6_head* %3)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = call i32 @MBUFQ_DRAIN(%struct.fq6_head* %3)
  br label %67

67:                                               ; preds = %65, %60
  %68 = call i32 @frag6_icmp6_timeex_error(%struct.fq6_head* %4)
  %69 = call i32 @MBUFQ_EMPTY(%struct.fq6_head* %3)
  %70 = call i32 @VERIFY(i32 %69)
  %71 = call i32 @MBUFQ_EMPTY(%struct.fq6_head* %4)
  %72 = call i32 @VERIFY(i32 %71)
  ret void
}

declare dso_local i32 @MBUFQ_INIT(%struct.fq6_head*) #1

declare dso_local i32 @net_update_uptime(...) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @frag6_freef(%struct.TYPE_4__*, %struct.fq6_head*, %struct.fq6_head*) #1

declare dso_local i32 @frag6_sched_timeout(...) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @MBUFQ_EMPTY(%struct.fq6_head*) #1

declare dso_local i32 @MBUFQ_DRAIN(%struct.fq6_head*) #1

declare dso_local i32 @frag6_icmp6_timeex_error(%struct.fq6_head*) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
