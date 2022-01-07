; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_processor.c_pset_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_processor.c_pset_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_11__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }

@multiple_psets_enabled = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@master_processor = common dso_local global i32 0, align 4
@PROCESSOR_SET_NULL = common dso_local global %struct.TYPE_11__* null, align 8
@pset_node_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @pset_create(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__**, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %6 = load i32, i32* @multiple_psets_enabled, align 4
  %7 = call i64 @SCHED(i32 %6)
  %8 = load i64, i64* @FALSE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @master_processor, align 4
  %12 = call %struct.TYPE_11__* @processor_pset(i32 %11)
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %2, align 8
  br label %40

13:                                               ; preds = %1
  %14 = call %struct.TYPE_11__* @kalloc(i32 8)
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %5, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** @PROCESSOR_SET_NULL, align 8
  %17 = icmp ne %struct.TYPE_11__* %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %13
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = call i32 @pset_init(%struct.TYPE_11__* %19, %struct.TYPE_10__* %20)
  %22 = call i32 @simple_lock(i32* @pset_node_lock)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store %struct.TYPE_11__** %24, %struct.TYPE_11__*** %4, align 8
  br label %25

25:                                               ; preds = %30, %18
  %26 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** @PROCESSOR_SET_NULL, align 8
  %29 = icmp ne %struct.TYPE_11__* %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  store %struct.TYPE_11__** %33, %struct.TYPE_11__*** %4, align 8
  br label %25

34:                                               ; preds = %25
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %36, align 8
  %37 = call i32 @simple_unlock(i32* @pset_node_lock)
  br label %38

38:                                               ; preds = %34, %13
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %2, align 8
  br label %40

40:                                               ; preds = %38, %10
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  ret %struct.TYPE_11__* %41
}

declare dso_local i64 @SCHED(i32) #1

declare dso_local %struct.TYPE_11__* @processor_pset(i32) #1

declare dso_local %struct.TYPE_11__* @kalloc(i32) #1

declare dso_local i32 @pset_init(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local i32 @simple_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
