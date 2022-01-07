; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_connection_management.c_StartConnectionEstablishment.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_connection_management.c_StartConnectionEstablishment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i64, i64, i32 }

@ConnParamsHash = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4
@ConnectionContext = common dso_local global i32 0, align 4
@MAX_NODE_LENGTH = common dso_local global i32 0, align 4
@NAMEDATALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_13__*)* @StartConnectionEstablishment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @StartConnectionEstablishment(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  store i32 0, i32* %3, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  %6 = load i32, i32* @ConnParamsHash, align 4
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %8 = load i32, i32* @HASH_ENTER, align 4
  %9 = call %struct.TYPE_14__* @hash_search(i32 %6, %struct.TYPE_13__* %7, i32 %8, i32* %3)
  store %struct.TYPE_14__* %9, %struct.TYPE_14__** %5, align 8
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %40, label %17

17:                                               ; preds = %12, %1
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = call i32 @FreeConnParamsHashEntryFields(%struct.TYPE_14__* %26)
  br label %28

28:                                               ; preds = %25, %20, %17
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 3
  %36 = load i32, i32* @ConnectionContext, align 4
  %37 = call i32 @GetConnParams(%struct.TYPE_13__* %29, i64* %31, i64* %33, i32* %35, i32 %36)
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %40

40:                                               ; preds = %28, %12
  %41 = load i32, i32* @ConnectionContext, align 4
  %42 = call %struct.TYPE_12__* @MemoryContextAllocZero(i32 %41, i32 24)
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %4, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MAX_NODE_LENGTH, align 4
  %50 = call i32 @strlcpy(i32 %45, i32 %48, i32 %49)
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @NAMEDATALEN, align 4
  %63 = call i32 @strlcpy(i32 %58, i32 %61, i32 %62)
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @NAMEDATALEN, align 4
  %71 = call i32 @strlcpy(i32 %66, i32 %69, i32 %70)
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8**
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i8**
  %80 = call i32 @PQconnectStartParams(i8** %75, i8** %79, i32 0)
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = call i32 (...) @GetCurrentTimestamp()
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @PQsetnonblocking(i32 %88, i32 1)
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %91 = call i32 @SetCitusNoticeProcessor(%struct.TYPE_12__* %90)
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %92
}

declare dso_local %struct.TYPE_14__* @hash_search(i32, %struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @FreeConnParamsHashEntryFields(%struct.TYPE_14__*) #1

declare dso_local i32 @GetConnParams(%struct.TYPE_13__*, i64*, i64*, i32*, i32) #1

declare dso_local %struct.TYPE_12__* @MemoryContextAllocZero(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @PQconnectStartParams(i8**, i8**, i32) #1

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32 @PQsetnonblocking(i32, i32) #1

declare dso_local i32 @SetCitusNoticeProcessor(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
