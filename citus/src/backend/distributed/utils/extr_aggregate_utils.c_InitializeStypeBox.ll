; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_aggregate_utils.c_InitializeStypeBox.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_aggregate_utils.c_InitializeStypeBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@OBJECT_AGGREGATE = common dso_local global i32 0, align 4
@OBJECT_FUNCTION = common dso_local global i32 0, align 4
@AGGFNOID = common dso_local global i32 0, align 4
@Anum_pg_aggregate_agginitval = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"InitializeStypeBox called from non aggregate context\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_4__*, i32, i32)* @InitializeStypeBox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitializeStypeBox(i32 %0, %struct.TYPE_4__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @GETSTRUCT(i32 %17)
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %10, align 8
  %21 = call i32 (...) @GetUserId()
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* @OBJECT_AGGREGATE, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @aclcheckAggregate(i32 %22, i32 %23, i32 %26)
  %28 = load i32, i32* @OBJECT_FUNCTION, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @aclcheckAggregate(i32 %28, i32 %29, i32 %32)
  %34 = load i32, i32* @OBJECT_FUNCTION, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @aclcheckAggregate(i32 %34, i32 %35, i32 %38)
  %40 = load i32, i32* @OBJECT_FUNCTION, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @aclcheckAggregate(i32 %40, i32 %41, i32 %44)
  %46 = load i32, i32* @OBJECT_FUNCTION, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @aclcheckAggregate(i32 %46, i32 %47, i32 %50)
  %52 = load i32, i32* @OBJECT_FUNCTION, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @aclcheckAggregate(i32 %52, i32 %53, i32 %56)
  %58 = load i32, i32* @AGGFNOID, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @Anum_pg_aggregate_agginitval, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = call i64 @SysCacheGetAttr(i32 %58, i32 %59, i32 %60, i64* %62)
  store i64 %63, i64* %9, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  br label %106

82:                                               ; preds = %4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @AggCheckCallContext(i32 %83, i32* %15)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* @ERROR, align 4
  %88 = call i32 @elog(i32 %87, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %82
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @MemoryContextSwitchTo(i32 %90)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @getTypeInputInfo(i32 %92, i32* %12, i32* %13)
  %94 = load i64, i64* %9, align 8
  %95 = call i8* @TextDatumGetCString(i64 %94)
  store i8* %95, i8** %14, align 8
  %96 = load i32, i32* %12, align 4
  %97 = load i8*, i8** %14, align 8
  %98 = load i32, i32* %13, align 4
  %99 = call i64 @OidInputFunctionCall(i32 %96, i8* %97, i32 %98, i32 -1)
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  %102 = load i8*, i8** %14, align 8
  %103 = call i32 @pfree(i8* %102)
  %104 = load i32, i32* %16, align 4
  %105 = call i32 @MemoryContextSwitchTo(i32 %104)
  br label %106

106:                                              ; preds = %89, %79
  ret void
}

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheckAggregate(i32, i32, i32) #1

declare dso_local i64 @SysCacheGetAttr(i32, i32, i32, i64*) #1

declare dso_local i32 @AggCheckCallContext(i32, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @getTypeInputInfo(i32, i32*, i32*) #1

declare dso_local i8* @TextDatumGetCString(i64) #1

declare dso_local i64 @OidInputFunctionCall(i32, i8*, i32, i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
