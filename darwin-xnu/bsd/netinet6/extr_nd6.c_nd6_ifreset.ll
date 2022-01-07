; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_nd6_ifreset.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_nd6_ifreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.nd_ifinfo = type { i32, i32, i32, i32, i32, i32, i32 }

@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@IPV6_DEFHLIM = common dso_local global i32 0, align 4
@REACHABLE_TIME = common dso_local global i32 0, align 4
@RETRANS_TIMER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nd6_ifreset(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.nd_ifinfo*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %5 = call %struct.nd_ifinfo* @ND_IFINFO(%struct.ifnet* %4)
  store %struct.nd_ifinfo* %5, %struct.nd_ifinfo** %3, align 8
  %6 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %7 = icmp ne %struct.nd_ifinfo* null, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @VERIFY(i32 %8)
  %10 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %11 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @VERIFY(i32 %12)
  %14 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %15 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %14, i32 0, i32 6
  %16 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %17 = call i32 @LCK_MTX_ASSERT(i32* %15, i32 %16)
  %18 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %22 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @IPV6_DEFHLIM, align 4
  %24 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %25 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @REACHABLE_TIME, align 4
  %27 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %28 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %30 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ND_COMPUTE_RTIME(i32 %31)
  %33 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %34 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @RETRANS_TIMER, align 4
  %36 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %3, align 8
  %37 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  ret void
}

declare dso_local %struct.nd_ifinfo* @ND_IFINFO(%struct.ifnet*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @ND_COMPUTE_RTIME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
