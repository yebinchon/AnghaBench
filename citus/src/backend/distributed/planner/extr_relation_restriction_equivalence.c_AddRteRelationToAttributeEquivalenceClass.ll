; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_relation_restriction_equivalence.c_AddRteRelationToAttributeEquivalenceClass.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_relation_restriction_equivalence.c_AddRteRelationToAttributeEquivalenceClass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_14__ = type { i64, i32, i32, i32 }

@RTE_RELATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__**, %struct.TYPE_13__*, %struct.TYPE_12__*)* @AddRteRelationToAttributeEquivalenceClass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AddRteRelationToAttributeEquivalenceClass(%struct.TYPE_15__** %0, %struct.TYPE_13__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.TYPE_15__**, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_15__** %0, %struct.TYPE_15__*** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @IsDistributedTable(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %69

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.TYPE_12__* @DistPartitionKey(i32 %18)
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %9, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RTE_RELATION, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @Assert(i32 %25)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %28 = icmp eq %struct.TYPE_12__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  br label %69

30:                                               ; preds = %17
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %69

39:                                               ; preds = %30
  %40 = call %struct.TYPE_14__* @palloc0(i32 24)
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %7, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = call i32 @GetRTEIdentity(%struct.TYPE_13__* %51)
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %4, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %65 = call i32 @lappend(i32 %63, %struct.TYPE_14__* %64)
  %66 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %4, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  br label %69

69:                                               ; preds = %39, %38, %29, %16
  ret void
}

declare dso_local i32 @IsDistributedTable(i32) #1

declare dso_local %struct.TYPE_12__* @DistPartitionKey(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_14__* @palloc0(i32) #1

declare dso_local i32 @GetRTEIdentity(%struct.TYPE_13__*) #1

declare dso_local i32 @lappend(i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
