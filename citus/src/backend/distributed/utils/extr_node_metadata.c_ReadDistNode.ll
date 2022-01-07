; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_node_metadata.c_ReadDistNode.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_node_metadata.c_ReadDistNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@AccessShareLock = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@CurrentCluster = common dso_local global i32 0, align 4
@WORKER_LENGTH = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ReadDistNode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [1 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32 0, i32* %5, align 4
  store i32* null, i32** %6, align 8
  %11 = load i32*, i32** @NIL, align 8
  store i32* %11, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %12 = call i32 (...) @DistNodeRelationId()
  %13 = load i32, i32* @AccessShareLock, align 4
  %14 = call i32 @heap_open(i32 %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @InvalidOid, align 4
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %19 = call i32* @systable_beginscan(i32 %15, i32 %16, i32 0, i32* null, i32 %17, i32* %18)
  store i32* %19, i32** %3, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32* @RelationGetDescr(i32 %20)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i32* @systable_getnext(i32* %22)
  store i32* %23, i32** %6, align 8
  br label %24

24:                                               ; preds = %46, %1
  %25 = load i32*, i32** %6, align 8
  %26 = call i64 @HeapTupleIsValid(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = load i32*, i32** %8, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call %struct.TYPE_4__* @TupleToWorkerNode(i32* %29, i32* %30)
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %10, align 8
  %32 = load i32, i32* %2, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CurrentCluster, align 4
  %39 = load i32, i32* @WORKER_LENGTH, align 4
  %40 = call i64 @strncmp(i32 %37, i32 %38, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34, %28
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %45 = call i32* @lappend(i32* %43, %struct.TYPE_4__* %44)
  store i32* %45, i32** %7, align 8
  br label %46

46:                                               ; preds = %42, %34
  %47 = load i32*, i32** %3, align 8
  %48 = call i32* @systable_getnext(i32* %47)
  store i32* %48, i32** %6, align 8
  br label %24

49:                                               ; preds = %24
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @systable_endscan(i32* %50)
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @NoLock, align 4
  %54 = call i32 @heap_close(i32 %52, i32 %53)
  %55 = load i32*, i32** %7, align 8
  ret i32* %55
}

declare dso_local i32 @heap_open(i32, i32) #1

declare dso_local i32 @DistNodeRelationId(...) #1

declare dso_local i32* @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @RelationGetDescr(i32) #1

declare dso_local i32* @systable_getnext(i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32*) #1

declare dso_local %struct.TYPE_4__* @TupleToWorkerNode(i32*, i32*) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32* @lappend(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @systable_endscan(i32*) #1

declare dso_local i32 @heap_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
