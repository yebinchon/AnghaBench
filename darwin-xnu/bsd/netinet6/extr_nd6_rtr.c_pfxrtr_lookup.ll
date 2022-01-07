; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_pfxrtr_lookup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_pfxrtr_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_pfxrouter = type { %struct.nd_defrouter*, %struct.nd_pfxrouter* }
%struct.nd_prefix = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nd_pfxrouter* }
%struct.nd_defrouter = type { i32 }

@nd6_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nd_pfxrouter* (%struct.nd_prefix*, %struct.nd_defrouter*)* @pfxrtr_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nd_pfxrouter* @pfxrtr_lookup(%struct.nd_prefix* %0, %struct.nd_defrouter* %1) #0 {
  %3 = alloca %struct.nd_prefix*, align 8
  %4 = alloca %struct.nd_defrouter*, align 8
  %5 = alloca %struct.nd_pfxrouter*, align 8
  store %struct.nd_prefix* %0, %struct.nd_prefix** %3, align 8
  store %struct.nd_defrouter* %1, %struct.nd_defrouter** %4, align 8
  %6 = load i32, i32* @nd6_mutex, align 4
  %7 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %8 = call i32 @LCK_MTX_ASSERT(i32 %6, i32 %7)
  %9 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %10 = call i32 @NDPR_LOCK_ASSERT_HELD(%struct.nd_prefix* %9)
  %11 = load %struct.nd_prefix*, %struct.nd_prefix** %3, align 8
  %12 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.nd_pfxrouter*, %struct.nd_pfxrouter** %13, align 8
  store %struct.nd_pfxrouter* %14, %struct.nd_pfxrouter** %5, align 8
  br label %15

15:                                               ; preds = %26, %2
  %16 = load %struct.nd_pfxrouter*, %struct.nd_pfxrouter** %5, align 8
  %17 = icmp ne %struct.nd_pfxrouter* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load %struct.nd_pfxrouter*, %struct.nd_pfxrouter** %5, align 8
  %20 = getelementptr inbounds %struct.nd_pfxrouter, %struct.nd_pfxrouter* %19, i32 0, i32 0
  %21 = load %struct.nd_defrouter*, %struct.nd_defrouter** %20, align 8
  %22 = load %struct.nd_defrouter*, %struct.nd_defrouter** %4, align 8
  %23 = icmp eq %struct.nd_defrouter* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %30

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.nd_pfxrouter*, %struct.nd_pfxrouter** %5, align 8
  %28 = getelementptr inbounds %struct.nd_pfxrouter, %struct.nd_pfxrouter* %27, i32 0, i32 1
  %29 = load %struct.nd_pfxrouter*, %struct.nd_pfxrouter** %28, align 8
  store %struct.nd_pfxrouter* %29, %struct.nd_pfxrouter** %5, align 8
  br label %15

30:                                               ; preds = %24, %15
  %31 = load %struct.nd_pfxrouter*, %struct.nd_pfxrouter** %5, align 8
  ret %struct.nd_pfxrouter* %31
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @NDPR_LOCK_ASSERT_HELD(%struct.nd_prefix*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
