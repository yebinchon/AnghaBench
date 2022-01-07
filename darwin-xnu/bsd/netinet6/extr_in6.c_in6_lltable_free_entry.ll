; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_lltable_free_entry.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_lltable_free_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lltable = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.llentry = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"lltable is NULL\00", align 1
@LLE_LINKED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lltable*, %struct.llentry*)* @in6_lltable_free_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in6_lltable_free_entry(%struct.lltable* %0, %struct.llentry* %1) #0 {
  %3 = alloca %struct.lltable*, align 8
  %4 = alloca %struct.llentry*, align 8
  %5 = alloca %struct.ifnet*, align 8
  store %struct.lltable* %0, %struct.lltable** %3, align 8
  store %struct.llentry* %1, %struct.llentry** %4, align 8
  %6 = load %struct.llentry*, %struct.llentry** %4, align 8
  %7 = call i32 @LLE_WLOCK_ASSERT(%struct.llentry* %6)
  %8 = load %struct.lltable*, %struct.lltable** %3, align 8
  %9 = icmp ne %struct.lltable* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.llentry*, %struct.llentry** %4, align 8
  %13 = getelementptr inbounds %struct.llentry, %struct.llentry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @LLE_LINKED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load %struct.lltable*, %struct.lltable** %3, align 8
  %20 = getelementptr inbounds %struct.lltable, %struct.lltable* %19, i32 0, i32 1
  %21 = load %struct.ifnet*, %struct.ifnet** %20, align 8
  store %struct.ifnet* %21, %struct.ifnet** %5, align 8
  %22 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %23 = load %struct.lltable*, %struct.lltable** %3, align 8
  %24 = getelementptr inbounds %struct.lltable, %struct.lltable* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @if_afdata_wlock_assert(%struct.ifnet* %22, i32 %25)
  %27 = load %struct.lltable*, %struct.lltable** %3, align 8
  %28 = load %struct.llentry*, %struct.llentry** %4, align 8
  %29 = call i32 @lltable_unlink_entry(%struct.lltable* %27, %struct.llentry* %28)
  br label %30

30:                                               ; preds = %18, %2
  %31 = load %struct.llentry*, %struct.llentry** %4, align 8
  %32 = call i32 @llentry_free(%struct.llentry* %31)
  ret void
}

declare dso_local i32 @LLE_WLOCK_ASSERT(%struct.llentry*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @if_afdata_wlock_assert(%struct.ifnet*, i32) #1

declare dso_local i32 @lltable_unlink_entry(%struct.lltable*, %struct.llentry*) #1

declare dso_local i32 @llentry_free(%struct.llentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
