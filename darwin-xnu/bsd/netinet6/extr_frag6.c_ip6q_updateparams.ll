; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_frag6.c_ip6q_updateparams.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_frag6.c_ip6q_updateparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ip6qlock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@ip6_maxfragpackets = common dso_local global i64 0, align 8
@ip6q_limit = common dso_local global i32 0, align 4
@ip6_maxfrags = common dso_local global i64 0, align 8
@ip6af_limit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ip6q_updateparams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6q_updateparams() #0 {
  %1 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %2 = call i32 @LCK_MTX_ASSERT(i32* @ip6qlock, i32 %1)
  %3 = load i64, i64* @ip6_maxfragpackets, align 8
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* @ip6q_limit, align 4
  br label %6

6:                                                ; preds = %5, %0
  %7 = load i64, i64* @ip6_maxfrags, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store i32 0, i32* @ip6af_limit, align 4
  br label %10

10:                                               ; preds = %9, %6
  %11 = load i64, i64* @ip6_maxfragpackets, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, i64* @ip6_maxfragpackets, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* @ip6q_limit, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i64, i64* @ip6_maxfrags, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i64, i64* @ip6_maxfrags, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* @ip6af_limit, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i64, i64* @ip6_maxfragpackets, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* @ip6q_limit, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i64, i64* @ip6_maxfrags, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 1, i32* @ip6af_limit, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = call i32 (...) @frag6_sched_timeout()
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @frag6_sched_timeout(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
