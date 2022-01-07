; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_pfxrtr_del.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_pfxrtr_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_pfxrouter = type { i32 }
%struct.nd_prefix = type { i32 }

@nd6_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@pfr_entry = common dso_local global i32 0, align 4
@ndprtr_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nd_pfxrouter*, %struct.nd_prefix*)* @pfxrtr_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfxrtr_del(%struct.nd_pfxrouter* %0, %struct.nd_prefix* %1) #0 {
  %3 = alloca %struct.nd_pfxrouter*, align 8
  %4 = alloca %struct.nd_prefix*, align 8
  store %struct.nd_pfxrouter* %0, %struct.nd_pfxrouter** %3, align 8
  store %struct.nd_prefix* %1, %struct.nd_prefix** %4, align 8
  %5 = load i32, i32* @nd6_mutex, align 4
  %6 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %7 = call i32 @LCK_MTX_ASSERT(i32 %5, i32 %6)
  %8 = load %struct.nd_prefix*, %struct.nd_prefix** %4, align 8
  %9 = call i32 @NDPR_LOCK_ASSERT_HELD(%struct.nd_prefix* %8)
  %10 = load %struct.nd_prefix*, %struct.nd_prefix** %4, align 8
  %11 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.nd_pfxrouter*, %struct.nd_pfxrouter** %3, align 8
  %15 = load i32, i32* @pfr_entry, align 4
  %16 = call i32 @LIST_REMOVE(%struct.nd_pfxrouter* %14, i32 %15)
  %17 = load i32, i32* @ndprtr_zone, align 4
  %18 = load %struct.nd_pfxrouter*, %struct.nd_pfxrouter** %3, align 8
  %19 = call i32 @zfree(i32 %17, %struct.nd_pfxrouter* %18)
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @NDPR_LOCK_ASSERT_HELD(%struct.nd_prefix*) #1

declare dso_local i32 @LIST_REMOVE(%struct.nd_pfxrouter*, i32) #1

declare dso_local i32 @zfree(i32, %struct.nd_pfxrouter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
