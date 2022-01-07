; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_frag6.c_frag6_insque.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_frag6.c_frag6_insque.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6q = type { %struct.ip6q*, %struct.ip6q* }

@ip6qlock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @frag6_insque(%struct.ip6q* %0, %struct.ip6q* %1) #0 {
  %3 = alloca %struct.ip6q*, align 8
  %4 = alloca %struct.ip6q*, align 8
  store %struct.ip6q* %0, %struct.ip6q** %3, align 8
  store %struct.ip6q* %1, %struct.ip6q** %4, align 8
  %5 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %6 = call i32 @LCK_MTX_ASSERT(i32* @ip6qlock, i32 %5)
  %7 = load %struct.ip6q*, %struct.ip6q** %4, align 8
  %8 = load %struct.ip6q*, %struct.ip6q** %3, align 8
  %9 = getelementptr inbounds %struct.ip6q, %struct.ip6q* %8, i32 0, i32 1
  store %struct.ip6q* %7, %struct.ip6q** %9, align 8
  %10 = load %struct.ip6q*, %struct.ip6q** %4, align 8
  %11 = getelementptr inbounds %struct.ip6q, %struct.ip6q* %10, i32 0, i32 0
  %12 = load %struct.ip6q*, %struct.ip6q** %11, align 8
  %13 = load %struct.ip6q*, %struct.ip6q** %3, align 8
  %14 = getelementptr inbounds %struct.ip6q, %struct.ip6q* %13, i32 0, i32 0
  store %struct.ip6q* %12, %struct.ip6q** %14, align 8
  %15 = load %struct.ip6q*, %struct.ip6q** %3, align 8
  %16 = load %struct.ip6q*, %struct.ip6q** %4, align 8
  %17 = getelementptr inbounds %struct.ip6q, %struct.ip6q* %16, i32 0, i32 0
  %18 = load %struct.ip6q*, %struct.ip6q** %17, align 8
  %19 = getelementptr inbounds %struct.ip6q, %struct.ip6q* %18, i32 0, i32 1
  store %struct.ip6q* %15, %struct.ip6q** %19, align 8
  %20 = load %struct.ip6q*, %struct.ip6q** %3, align 8
  %21 = load %struct.ip6q*, %struct.ip6q** %4, align 8
  %22 = getelementptr inbounds %struct.ip6q, %struct.ip6q* %21, i32 0, i32 0
  store %struct.ip6q* %20, %struct.ip6q** %22, align 8
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
