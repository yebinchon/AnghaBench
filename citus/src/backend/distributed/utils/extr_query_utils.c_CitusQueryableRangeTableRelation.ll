; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_query_utils.c_CitusQueryableRangeTableRelation.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_query_utils.c_CitusQueryableRangeTableRelation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8 }

@RTE_RELATION = common dso_local global i64 0, align 8
@RELKIND_RELATION = common dso_local global i8 0, align 1
@RELKIND_PARTITIONED_TABLE = common dso_local global i8 0, align 1
@RELKIND_FOREIGN_TABLE = common dso_local global i8 0, align 1
@RELKIND_MATVIEW = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @CitusQueryableRangeTableRelation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CitusQueryableRangeTableRelation(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8 0, i8* %4, align 1
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @RTE_RELATION, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i8, i8* %13, align 8
  store i8 %14, i8* %4, align 1
  %15 = load i8, i8* %4, align 1
  %16 = sext i8 %15 to i32
  %17 = load i8, i8* @RELKIND_RELATION, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %38, label %20

20:                                               ; preds = %11
  %21 = load i8, i8* %4, align 1
  %22 = sext i8 %21 to i32
  %23 = load i8, i8* @RELKIND_PARTITIONED_TABLE, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = load i8, i8* %4, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* @RELKIND_FOREIGN_TABLE, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load i8, i8* %4, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8, i8* @RELKIND_MATVIEW, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %26, %20, %11
  store i32 1, i32* %2, align 4
  br label %40

39:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %38, %10
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
