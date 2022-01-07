; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtDb.c_mgmtSetDbDropping.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtDb.c_mgmtSetDbDropping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@TSDB_DB_STATUS_DROP_FROM_SDB = common dso_local global i64 0, align 8
@TSDB_VN_STATUS_DROPPING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"dnode:%s vnode:%d db:%s set to dropping status\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"db:%s drop failed, dnode sdb update error\00", align 1
@TSDB_CODE_SDB_ERROR = common dso_local global i32 0, align 4
@TSDB_DB_STATUS_DROPPING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"db:%s drop failed, db sdb update error\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"db:%s set to dropping status\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtSetDbDropping(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TSDB_DB_STATUS_DROP_FROM_SDB, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %116

15:                                               ; preds = %1
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %4, align 8
  br label %19

19:                                               ; preds = %85, %15
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = icmp ne %struct.TYPE_13__* %20, null
  br i1 %21, label %22, label %91

22:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %82, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %85

29:                                               ; preds = %23
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i64 %34
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %6, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.TYPE_14__* @mgmtGetDnode(i32 %38)
  store %struct.TYPE_14__* %39, %struct.TYPE_14__** %7, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %41 = icmp eq %struct.TYPE_14__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %82

43:                                               ; preds = %29
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i64 %49
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %8, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TSDB_VN_STATUS_DROPPING, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %81

56:                                               ; preds = %43
  %57 = load i64, i64* @TSDB_VN_STATUS_DROPPING, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @taosIpStr(i32 %62)
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i8*, i32, ...) @mPrint(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %63, i64 %66, i32 %69)
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %72 = call i64 @mgmtUpdateDnode(%struct.TYPE_14__* %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %56
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @mError(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @TSDB_CODE_SDB_ERROR, align 4
  store i32 %79, i32* %2, align 4
  br label %116

80:                                               ; preds = %56
  br label %81

81:                                               ; preds = %80, %43
  br label %82

82:                                               ; preds = %81, %42
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %23

85:                                               ; preds = %23
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %87 = call i32 @mgmtSendFreeVnodeMsg(%struct.TYPE_13__* %86)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  store %struct.TYPE_13__* %90, %struct.TYPE_13__** %4, align 8
  br label %19

91:                                               ; preds = %19
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @TSDB_DB_STATUS_DROPPING, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i32 0, i32* %2, align 4
  br label %116

98:                                               ; preds = %91
  %99 = load i64, i64* @TSDB_DB_STATUS_DROPPING, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %103 = call i64 @mgmtUpdateDb(%struct.TYPE_15__* %102)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @mError(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @TSDB_CODE_SDB_ERROR, align 4
  store i32 %110, i32* %2, align 4
  br label %116

111:                                              ; preds = %98
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i8*, i32, ...) @mPrint(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %111, %105, %97, %74, %14
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.TYPE_14__* @mgmtGetDnode(i32) #1

declare dso_local i32 @mPrint(i8*, i32, ...) #1

declare dso_local i32 @taosIpStr(i32) #1

declare dso_local i64 @mgmtUpdateDnode(%struct.TYPE_14__*) #1

declare dso_local i32 @mError(i8*, i32) #1

declare dso_local i32 @mgmtSendFreeVnodeMsg(%struct.TYPE_13__*) #1

declare dso_local i64 @mgmtUpdateDb(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
