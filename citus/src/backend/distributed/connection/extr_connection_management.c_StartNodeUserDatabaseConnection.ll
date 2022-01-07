; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_connection_management.c_StartNodeUserDatabaseConnection.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_connection_management.c_StartNodeUserDatabaseConnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@MAX_NODE_LENGTH = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"hostname exceeds the maximum length of %d\00", align 1
@NAMEDATALEN = common dso_local global i64 0, align 8
@CurrentCoordinatedTransactionState = common dso_local global i64 0, align 8
@COORD_TRANS_NONE = common dso_local global i64 0, align 8
@COORD_TRANS_IDLE = common dso_local global i64 0, align 8
@ConnectionHash = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4
@ConnectionContext = common dso_local global i32 0, align 4
@FORCE_NEW_CONNECTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @StartNodeUserDatabaseConnection(i32 %0, i8* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_12__, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %13, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = load i64, i64* @MAX_NODE_LENGTH, align 8
  %20 = call i32 @strlcpy(i32 %17, i8* %18, i64 %19)
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = load i64, i64* @MAX_NODE_LENGTH, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %5
  %26 = load i32, i32* @ERROR, align 4
  %27 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %28 = call i32 @errcode(i32 %27)
  %29 = load i64, i64* @MAX_NODE_LENGTH, align 8
  %30 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = call i32 @ereport(i32 %26, i32 %30)
  br label %32

32:                                               ; preds = %25, %5
  %33 = load i32, i32* %9, align 4
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  store i32 %33, i32* %34, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = load i64, i64* @NAMEDATALEN, align 8
  %42 = call i32 @strlcpy(i32 %39, i8* %40, i64 %41)
  br label %49

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i8* (...) @CurrentUserName()
  %47 = load i64, i64* @NAMEDATALEN, align 8
  %48 = call i32 @strlcpy(i32 %45, i8* %46, i64 %47)
  br label %49

49:                                               ; preds = %43, %37
  %50 = load i8*, i8** %11, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %11, align 8
  %56 = load i64, i64* @NAMEDATALEN, align 8
  %57 = call i32 @strlcpy(i32 %54, i8* %55, i64 %56)
  br label %64

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i8* (...) @CurrentDatabaseName()
  %62 = load i64, i64* @NAMEDATALEN, align 8
  %63 = call i32 @strlcpy(i32 %60, i8* %61, i64 %62)
  br label %64

64:                                               ; preds = %58, %52
  %65 = load i64, i64* @CurrentCoordinatedTransactionState, align 8
  %66 = load i64, i64* @COORD_TRANS_NONE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i64, i64* @COORD_TRANS_IDLE, align 8
  store i64 %69, i64* @CurrentCoordinatedTransactionState, align 8
  br label %70

70:                                               ; preds = %68, %64
  %71 = load i32, i32* @ConnectionHash, align 4
  %72 = load i32, i32* @HASH_ENTER, align 4
  %73 = call %struct.TYPE_13__* @hash_search(i32 %71, %struct.TYPE_12__* %12, i32 %72, i32* %15)
  store %struct.TYPE_13__* %73, %struct.TYPE_13__** %13, align 8
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* @ConnectionContext, align 4
  %78 = call i32 @MemoryContextAlloc(i32 %77, i32 4)
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dlist_init(i32 %83)
  br label %85

85:                                               ; preds = %76, %70
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @FORCE_NEW_CONNECTION, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %85
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call %struct.TYPE_11__* @FindAvailableConnection(i32 %93, i32 %94)
  store %struct.TYPE_11__* %95, %struct.TYPE_11__** %14, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %97 = icmp ne %struct.TYPE_11__* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %99, %struct.TYPE_11__** %6, align 8
  br label %112

100:                                              ; preds = %90
  br label %101

101:                                              ; preds = %100, %85
  %102 = call %struct.TYPE_11__* @StartConnectionEstablishment(%struct.TYPE_12__* %12)
  store %struct.TYPE_11__* %102, %struct.TYPE_11__** %14, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = call i32 @dlist_push_tail(i32 %105, i32* %107)
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %110 = call i32 @ResetShardPlacementAssociation(%struct.TYPE_11__* %109)
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %111, %struct.TYPE_11__** %6, align 8
  br label %112

112:                                              ; preds = %101, %98
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  ret %struct.TYPE_11__* %113
}

declare dso_local i32 @strlcpy(i32, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i64) #1

declare dso_local i8* @CurrentUserName(...) #1

declare dso_local i8* @CurrentDatabaseName(...) #1

declare dso_local %struct.TYPE_13__* @hash_search(i32, %struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @MemoryContextAlloc(i32, i32) #1

declare dso_local i32 @dlist_init(i32) #1

declare dso_local %struct.TYPE_11__* @FindAvailableConnection(i32, i32) #1

declare dso_local %struct.TYPE_11__* @StartConnectionEstablishment(%struct.TYPE_12__*) #1

declare dso_local i32 @dlist_push_tail(i32, i32*) #1

declare dso_local i32 @ResetShardPlacementAssociation(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
