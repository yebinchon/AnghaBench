; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_frag6.c_frag6_drain.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_frag6.c_frag6_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.fq6_head = type { i32 }

@ip6qlock = common dso_local global i32 0, align 4
@ip6q = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@ip6stat = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @frag6_drain() #0 {
  %1 = alloca %struct.fq6_head, align 4
  %2 = alloca %struct.fq6_head, align 4
  %3 = call i32 @MBUFQ_INIT(%struct.fq6_head* %1)
  %4 = call i32 @MBUFQ_INIT(%struct.fq6_head* %2)
  %5 = call i32 @lck_mtx_lock(i32* @ip6qlock)
  br label %6

6:                                                ; preds = %9, %0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ip6q, i32 0, i32 0), align 8
  %8 = icmp ne %struct.TYPE_5__* %7, @ip6q
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ip6stat, i32 0, i32 0), align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ip6stat, i32 0, i32 0), align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ip6q, i32 0, i32 0), align 8
  %13 = call i32 @frag6_freef(%struct.TYPE_5__* %12, %struct.fq6_head* %1, %struct.fq6_head* %2)
  br label %6

14:                                               ; preds = %6
  %15 = call i32 @lck_mtx_unlock(i32* @ip6qlock)
  %16 = call i32 @MBUFQ_EMPTY(%struct.fq6_head* %1)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = call i32 @MBUFQ_DRAIN(%struct.fq6_head* %1)
  br label %20

20:                                               ; preds = %18, %14
  %21 = call i32 @frag6_icmp6_timeex_error(%struct.fq6_head* %2)
  %22 = call i32 @MBUFQ_EMPTY(%struct.fq6_head* %1)
  %23 = call i32 @VERIFY(i32 %22)
  %24 = call i32 @MBUFQ_EMPTY(%struct.fq6_head* %2)
  %25 = call i32 @VERIFY(i32 %24)
  ret void
}

declare dso_local i32 @MBUFQ_INIT(%struct.fq6_head*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @frag6_freef(%struct.TYPE_5__*, %struct.fq6_head*, %struct.fq6_head*) #1

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
