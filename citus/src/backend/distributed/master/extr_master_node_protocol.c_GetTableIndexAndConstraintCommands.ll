; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_node_protocol.c_GetTableIndexAndConstraintCommands.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_node_protocol.c_GetTableIndexAndConstraintCommands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64 }

@NIL = common dso_local global i8* null, align 8
@CurrentMemoryContext = common dso_local global i32 0, align 4
@IndexRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_index_indrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@IndexIndrelidIndexId = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetTableIndexAndConstraintCommands(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [1 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %17 = load i8*, i8** @NIL, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 1, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %19 = load i32, i32* @CurrentMemoryContext, align 4
  %20 = call %struct.TYPE_5__* @GetOverrideSearchPath(i32 %19)
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %9, align 8
  %21 = load i8*, i8** @NIL, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %27 = call i32 @PushOverrideSearchPath(%struct.TYPE_5__* %26)
  %28 = load i32, i32* @IndexRelationId, align 4
  %29 = load i32, i32* @AccessShareLock, align 4
  %30 = call i32* @heap_open(i32 %28, i32 %29)
  store i32* %30, i32** %4, align 8
  %31 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %32 = load i32, i32* @Anum_pg_index_indrelid, align 4
  %33 = load i32, i32* @BTEqualStrategyNumber, align 4
  %34 = load i32, i32* @F_OIDEQ, align 4
  %35 = load i64, i64* %2, align 8
  %36 = call i32 @ScanKeyInit(i32* %31, i32 %32, i32 %33, i32 %34, i64 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @IndexIndrelidIndexId, align 4
  %39 = load i32, i32* %7, align 4
  %40 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %41 = call i32* @systable_beginscan(i32* %37, i32 %38, i32 1, i32* null, i32 %39, i32* %40)
  store i32* %41, i32** %5, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32* @systable_getnext(i32* %42)
  store i32* %43, i32** %8, align 8
  br label %44

44:                                               ; preds = %112, %1
  %45 = load i32*, i32** %8, align 8
  %46 = call i64 @HeapTupleIsValid(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %115

48:                                               ; preds = %44
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @GETSTRUCT(i32* %49)
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %10, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i8* null, i8** %13, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  store i32 1, i32* %12, align 4
  br label %78

61:                                               ; preds = %48
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66, %61
  %72 = load i64, i64* %11, align 8
  %73 = call i64 @get_index_constraint(i64 %72)
  store i64 %73, i64* %14, align 8
  %74 = load i64, i64* %14, align 8
  %75 = call i32 @OidIsValid(i64 %74)
  store i32 %75, i32* %12, align 4
  br label %77

76:                                               ; preds = %66
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %76, %71
  br label %78

78:                                               ; preds = %77, %60
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = load i64, i64* %11, align 8
  %83 = call i64 @get_index_constraint(i64 %82)
  store i64 %83, i64* %15, align 8
  %84 = load i64, i64* %15, align 8
  %85 = load i64, i64* @InvalidOid, align 8
  %86 = icmp ne i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @Assert(i32 %87)
  %89 = load i64, i64* %15, align 8
  %90 = call i8* @pg_get_constraintdef_command(i64 %89)
  store i8* %90, i8** %13, align 8
  br label %94

91:                                               ; preds = %78
  %92 = load i64, i64* %11, align 8
  %93 = call i8* @pg_get_indexdef_string(i64 %92)
  store i8* %93, i8** %13, align 8
  br label %94

94:                                               ; preds = %91, %81
  %95 = load i32*, i32** %3, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = call i32* @lappend(i32* %95, i8* %96)
  store i32* %97, i32** %3, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %94
  %103 = load i64, i64* %11, align 8
  %104 = call i8* @pg_get_indexclusterdef_string(i64 %103)
  store i8* %104, i8** %16, align 8
  %105 = load i8*, i8** %16, align 8
  %106 = icmp ne i8* %105, null
  %107 = zext i1 %106 to i32
  %108 = call i32 @Assert(i32 %107)
  %109 = load i32*, i32** %3, align 8
  %110 = load i8*, i8** %16, align 8
  %111 = call i32* @lappend(i32* %109, i8* %110)
  store i32* %111, i32** %3, align 8
  br label %112

112:                                              ; preds = %102, %94
  %113 = load i32*, i32** %5, align 8
  %114 = call i32* @systable_getnext(i32* %113)
  store i32* %114, i32** %8, align 8
  br label %44

115:                                              ; preds = %44
  %116 = load i32*, i32** %5, align 8
  %117 = call i32 @systable_endscan(i32* %116)
  %118 = load i32*, i32** %4, align 8
  %119 = load i32, i32* @AccessShareLock, align 4
  %120 = call i32 @heap_close(i32* %118, i32 %119)
  %121 = call i32 (...) @PopOverrideSearchPath()
  %122 = load i32*, i32** %3, align 8
  ret i32* %122
}

declare dso_local %struct.TYPE_5__* @GetOverrideSearchPath(i32) #1

declare dso_local i32 @PushOverrideSearchPath(%struct.TYPE_5__*) #1

declare dso_local i32* @heap_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i64) #1

declare dso_local i32* @systable_beginscan(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @systable_getnext(i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @GETSTRUCT(i32*) #1

declare dso_local i64 @get_index_constraint(i64) #1

declare dso_local i32 @OidIsValid(i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @pg_get_constraintdef_command(i64) #1

declare dso_local i8* @pg_get_indexdef_string(i64) #1

declare dso_local i32* @lappend(i32*, i8*) #1

declare dso_local i8* @pg_get_indexclusterdef_string(i64) #1

declare dso_local i32 @systable_endscan(i32*) #1

declare dso_local i32 @heap_close(i32*, i32) #1

declare dso_local i32 @PopOverrideSearchPath(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
