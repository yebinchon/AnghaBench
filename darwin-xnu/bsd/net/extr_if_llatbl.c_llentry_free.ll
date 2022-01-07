; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_llatbl.c_llentry_free.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_llatbl.c_llentry_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llentry = type { i32 }

@LLE_LINKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"freeing linked lle\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @llentry_free(%struct.llentry* %0) #0 {
  %2 = alloca %struct.llentry*, align 8
  %3 = alloca i64, align 8
  store %struct.llentry* %0, %struct.llentry** %2, align 8
  %4 = load %struct.llentry*, %struct.llentry** %2, align 8
  %5 = call i32 @LLE_WLOCK_ASSERT(%struct.llentry* %4)
  %6 = load %struct.llentry*, %struct.llentry** %2, align 8
  %7 = getelementptr inbounds %struct.llentry, %struct.llentry* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @LLE_LINKED, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.llentry*, %struct.llentry** %2, align 8
  %15 = call i64 @lltable_drop_entry_queue(%struct.llentry* %14)
  store i64 %15, i64* %3, align 8
  %16 = load %struct.llentry*, %struct.llentry** %2, align 8
  %17 = call i32 @LLE_FREE_LOCKED(%struct.llentry* %16)
  %18 = load i64, i64* %3, align 8
  ret i64 %18
}

declare dso_local i32 @LLE_WLOCK_ASSERT(%struct.llentry*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @lltable_drop_entry_queue(%struct.llentry*) #1

declare dso_local i32 @LLE_FREE_LOCKED(%struct.llentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
