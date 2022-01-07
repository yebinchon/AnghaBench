; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in.c_in_lltable_free_entry.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in.c_in_lltable_free_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.lltable = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.llentry = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"lltable is NULL\00", align 1
@LLE_LINKED = common dso_local global i32 0, align 4
@arpstat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lltable*, %struct.llentry*)* @in_lltable_free_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in_lltable_free_entry(%struct.lltable* %0, %struct.llentry* %1) #0 {
  %3 = alloca %struct.lltable*, align 8
  %4 = alloca %struct.llentry*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i64, align 8
  store %struct.lltable* %0, %struct.lltable** %3, align 8
  store %struct.llentry* %1, %struct.llentry** %4, align 8
  %7 = load %struct.llentry*, %struct.llentry** %4, align 8
  %8 = call i32 @LLE_WLOCK_ASSERT(%struct.llentry* %7)
  %9 = load %struct.lltable*, %struct.lltable** %3, align 8
  %10 = icmp ne %struct.lltable* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.llentry*, %struct.llentry** %4, align 8
  %14 = getelementptr inbounds %struct.llentry, %struct.llentry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @LLE_LINKED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load %struct.lltable*, %struct.lltable** %3, align 8
  %21 = getelementptr inbounds %struct.lltable, %struct.lltable* %20, i32 0, i32 1
  %22 = load %struct.ifnet*, %struct.ifnet** %21, align 8
  store %struct.ifnet* %22, %struct.ifnet** %5, align 8
  %23 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %24 = load %struct.lltable*, %struct.lltable** %3, align 8
  %25 = getelementptr inbounds %struct.lltable, %struct.lltable* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @IF_AFDATA_WLOCK_ASSERT(%struct.ifnet* %23, i32 %26)
  %28 = load %struct.lltable*, %struct.lltable** %3, align 8
  %29 = load %struct.llentry*, %struct.llentry** %4, align 8
  %30 = call i32 @lltable_unlink_entry(%struct.lltable* %28, %struct.llentry* %29)
  br label %31

31:                                               ; preds = %19, %2
  %32 = load %struct.llentry*, %struct.llentry** %4, align 8
  %33 = call i64 @llentry_free(%struct.llentry* %32)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arpstat, i32 0, i32 0), align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arpstat, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @LLE_WLOCK_ASSERT(%struct.llentry*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @IF_AFDATA_WLOCK_ASSERT(%struct.ifnet*, i32) #1

declare dso_local i32 @lltable_unlink_entry(%struct.lltable*, %struct.llentry*) #1

declare dso_local i64 @llentry_free(%struct.llentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
