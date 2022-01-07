; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/arm/extr_pe_consistent_debug.c_consistent_debug_allocate_entry.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/arm/extr_pe_consistent_debug.c_consistent_debug_allocate_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@consistent_debug_registry = common dso_local global %struct.TYPE_7__* null, align 8
@kDbgIdUnusedEntry = common dso_local global i32 0, align 4
@kDbgIdReservedEntry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* ()* @consistent_debug_allocate_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @consistent_debug_allocate_entry() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** @consistent_debug_registry, align 8
  %5 = icmp ne %struct.TYPE_7__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %35

7:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %31, %7
  %9 = load i32, i32* %2, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @consistent_debug_registry, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %9, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @consistent_debug_registry, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = load i32, i32* %2, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %20
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %3, align 8
  %22 = load i32, i32* @kDbgIdUnusedEntry, align 4
  %23 = load i32, i32* @kDbgIdReservedEntry, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = call i64 @OSCompareAndSwap64(i32 %22, i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %1, align 8
  br label %35

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %2, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %2, align 4
  br label %8

34:                                               ; preds = %8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %35

35:                                               ; preds = %34, %28, %6
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  ret %struct.TYPE_6__* %36
}

declare dso_local i64 @OSCompareAndSwap64(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
