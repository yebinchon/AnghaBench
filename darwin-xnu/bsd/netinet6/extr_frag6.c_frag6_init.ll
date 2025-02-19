; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_frag6.c_frag6_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_frag6.c_frag6_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.TYPE_2__*, %struct.TYPE_2__* }

@_MLEN = common dso_local global i32 0, align 4
@ip6qlock_grp_attr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ip6qlock\00", align 1
@ip6qlock_grp = common dso_local global i32 0, align 4
@ip6qlock_attr = common dso_local global i32 0, align 4
@ip6qlock = common dso_local global i32 0, align 4
@ip6q = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@nmbclusters = common dso_local global i32 0, align 4
@ip6_maxfragpackets = common dso_local global i32 0, align 4
@ip6_maxfrags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @frag6_init() #0 {
  %1 = load i32, i32* @_MLEN, align 4
  %2 = sext i32 %1 to i64
  %3 = icmp ule i64 4, %2
  %4 = zext i1 %3 to i32
  %5 = call i32 @_CASSERT(i32 %4)
  %6 = load i32, i32* @_MLEN, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ule i64 4, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @_CASSERT(i32 %9)
  %11 = call i32 (...) @lck_grp_attr_alloc_init()
  store i32 %11, i32* @ip6qlock_grp_attr, align 4
  %12 = load i32, i32* @ip6qlock_grp_attr, align 4
  %13 = call i32 @lck_grp_alloc_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 %13, i32* @ip6qlock_grp, align 4
  %14 = call i32 (...) @lck_attr_alloc_init()
  store i32 %14, i32* @ip6qlock_attr, align 4
  %15 = load i32, i32* @ip6qlock_grp, align 4
  %16 = load i32, i32* @ip6qlock_attr, align 4
  %17 = call i32 @lck_mtx_init(i32* @ip6qlock, i32 %15, i32 %16)
  %18 = call i32 @lck_mtx_lock(i32* @ip6qlock)
  store %struct.TYPE_2__* @ip6q, %struct.TYPE_2__** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ip6q, i32 0, i32 0), align 8
  store %struct.TYPE_2__* @ip6q, %struct.TYPE_2__** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ip6q, i32 0, i32 1), align 8
  %19 = load i32, i32* @nmbclusters, align 4
  %20 = sdiv i32 %19, 32
  store i32 %20, i32* @ip6_maxfragpackets, align 4
  %21 = load i32, i32* @ip6_maxfragpackets, align 4
  %22 = mul nsw i32 %21, 2
  store i32 %22, i32* @ip6_maxfrags, align 4
  %23 = call i32 (...) @ip6q_updateparams()
  %24 = call i32 @lck_mtx_unlock(i32* @ip6qlock)
  ret void
}

declare dso_local i32 @_CASSERT(i32) #1

declare dso_local i32 @lck_grp_attr_alloc_init(...) #1

declare dso_local i32 @lck_grp_alloc_init(i8*, i32) #1

declare dso_local i32 @lck_attr_alloc_init(...) #1

declare dso_local i32 @lck_mtx_init(i32*, i32, i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @ip6q_updateparams(...) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
