; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_citus_ruleutils.c_pg_get_replica_identity_command.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_citus_ruleutils.c_pg_get_replica_identity_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8 }
%struct.TYPE_10__ = type { i64, i8* }

@AccessShareLock = common dso_local global i32 0, align 4
@REPLICA_IDENTITY_INDEX = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [48 x i8] c"ALTER TABLE %s REPLICA IDENTITY USING INDEX %s \00", align 1
@REPLICA_IDENTITY_NOTHING = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ALTER TABLE %s REPLICA IDENTITY NOTHING\00", align 1
@REPLICA_IDENTITY_FULL = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"ALTER TABLE %s REPLICA IDENTITY FULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pg_get_replica_identity_command(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  %8 = call %struct.TYPE_10__* (...) @makeStringInfo()
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %4, align 8
  store i8* null, i8** %5, align 8
  store i8 0, i8* %6, align 1
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @AccessShareLock, align 4
  %11 = call %struct.TYPE_11__* @heap_open(i32 %9, i32 %10)
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %3, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %6, align 1
  %17 = load i32, i32* %2, align 4
  %18 = call i8* @generate_qualified_relation_name(i32 %17)
  store i8* %18, i8** %5, align 8
  %19 = load i8, i8* %6, align 1
  %20 = sext i8 %19 to i32
  %21 = load i8, i8* @REPLICA_IDENTITY_INDEX, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %1
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = call i32 @RelationGetReplicaIndex(%struct.TYPE_11__* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @OidIsValid(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @get_rel_name(i32 %33)
  %35 = call i32 @quote_identifier(i32 %34)
  %36 = call i32 (%struct.TYPE_10__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_10__* %31, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %35)
  br label %37

37:                                               ; preds = %30, %24
  br label %60

38:                                               ; preds = %1
  %39 = load i8, i8* %6, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8, i8* @REPLICA_IDENTITY_NOTHING, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 (%struct.TYPE_10__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_10__* %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %59

48:                                               ; preds = %38
  %49 = load i8, i8* %6, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8, i8* @REPLICA_IDENTITY_FULL, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 (%struct.TYPE_10__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_10__* %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %54, %48
  br label %59

59:                                               ; preds = %58, %44
  br label %60

60:                                               ; preds = %59, %37
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %62 = load i32, i32* @AccessShareLock, align 4
  %63 = call i32 @heap_close(%struct.TYPE_11__* %61, i32 %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  br label %73

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72, %68
  %74 = phi i8* [ %71, %68 ], [ null, %72 ]
  ret i8* %74
}

declare dso_local %struct.TYPE_10__* @makeStringInfo(...) #1

declare dso_local %struct.TYPE_11__* @heap_open(i32, i32) #1

declare dso_local i8* @generate_qualified_relation_name(i32) #1

declare dso_local i32 @RelationGetReplicaIndex(%struct.TYPE_11__*) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_10__*, i8*, i8*, ...) #1

declare dso_local i32 @quote_identifier(i32) #1

declare dso_local i32 @get_rel_name(i32) #1

declare dso_local i32 @heap_close(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
