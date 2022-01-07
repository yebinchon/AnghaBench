; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_llatbl.c_htable_unlink_entry.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_llatbl.c_htable_unlink_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llentry = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@LLE_LINKED = common dso_local global i32 0, align 4
@lle_next = common dso_local global i32 0, align 4
@LLE_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.llentry*)* @htable_unlink_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htable_unlink_entry(%struct.llentry* %0) #0 {
  %2 = alloca %struct.llentry*, align 8
  store %struct.llentry* %0, %struct.llentry** %2, align 8
  %3 = load %struct.llentry*, %struct.llentry** %2, align 8
  %4 = getelementptr inbounds %struct.llentry, %struct.llentry* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @LLE_LINKED, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %1
  %10 = load %struct.llentry*, %struct.llentry** %2, align 8
  %11 = getelementptr inbounds %struct.llentry, %struct.llentry* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.llentry*, %struct.llentry** %2, align 8
  %16 = getelementptr inbounds %struct.llentry, %struct.llentry* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @IF_AFDATA_WLOCK_ASSERT(i32 %14, i32 %19)
  %21 = load %struct.llentry*, %struct.llentry** %2, align 8
  %22 = load i32, i32* @lle_next, align 4
  %23 = call i32 @LIST_REMOVE(%struct.llentry* %21, i32 %22)
  %24 = load i32, i32* @LLE_VALID, align 4
  %25 = load i32, i32* @LLE_LINKED, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load %struct.llentry*, %struct.llentry** %2, align 8
  %29 = getelementptr inbounds %struct.llentry, %struct.llentry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @IF_AFDATA_WLOCK_ASSERT(i32, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.llentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
