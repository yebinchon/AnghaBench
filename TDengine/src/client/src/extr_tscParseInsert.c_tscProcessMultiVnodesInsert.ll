; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscParseInsert.c_tscProcessMultiVnodesInsert.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscParseInsert.c_tscProcessMultiVnodesInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32** }

@TSDB_SQL_INSERT = common dso_local global i64 0, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"%p build submit data block failed, vnodeIdx:%d, total:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tscProcessMultiVnodesInsert(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %3, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TSDB_SQL_INSERT, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %110

17:                                               ; preds = %1
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = icmp eq %struct.TYPE_13__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %110

23:                                               ; preds = %17
  store i32* null, i32** %4, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = call i32* @tscGetMeterMetaInfo(%struct.TYPE_12__* %24, i32 0)
  store i32* %25, i32** %5, align 8
  %26 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %26, i64* %6, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %41

31:                                               ; preds = %23
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 1
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = icmp ne %struct.TYPE_13__* %39, null
  br label %41

41:                                               ; preds = %36, %31, %23
  %42 = phi i1 [ false, %31 ], [ false, %23 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %47, %52
  br i1 %53, label %54, label %103

54:                                               ; preds = %41
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %7, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %8, align 8
  br label %62

62:                                               ; preds = %99, %54
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = icmp ult i64 %63, %67
  br i1 %68, label %69, label %102

69:                                               ; preds = %62
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i32**, i32*** %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds i32*, i32** %72, i64 %73
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %4, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %99

79:                                               ; preds = %69
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = call i64 @tscCopyDataBlockToPayload(%struct.TYPE_11__* %80, i32* %81)
  store i64 %82, i64* %6, align 8
  %83 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %79
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = call i32 @tscTrace(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %86, i64 %90, i64 %94)
  br label %99

96:                                               ; preds = %79
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %98 = call i32 @tscProcessSql(%struct.TYPE_11__* %97)
  br label %99

99:                                               ; preds = %96, %85, %78
  %100 = load i64, i64* %8, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %8, align 8
  br label %62

102:                                              ; preds = %62
  br label %103

103:                                              ; preds = %102, %41
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  %107 = call %struct.TYPE_13__* @tscDestroyBlockArrayList(%struct.TYPE_13__* %106)
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 3
  store %struct.TYPE_13__* %107, %struct.TYPE_13__** %109, align 8
  br label %110

110:                                              ; preds = %103, %22, %16
  ret void
}

declare dso_local i32* @tscGetMeterMetaInfo(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @tscCopyDataBlockToPayload(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @tscTrace(i8*, %struct.TYPE_11__*, i64, i64) #1

declare dso_local i32 @tscProcessSql(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_13__* @tscDestroyBlockArrayList(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
