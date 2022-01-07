; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_sqlite3_backup_init.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_sqlite3_backup_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_14__*, i64, %struct.TYPE_16__*, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"source and destination must be distinct\00", align 1
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i64 0, align 8
@SQLITE_MISUSE_BKPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @sqlite3_backup_init(%struct.TYPE_16__* %0, i8* %1, %struct.TYPE_16__* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @sqlite3_mutex_enter(i32 %12)
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sqlite3_mutex_enter(i32 %16)
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = icmp eq %struct.TYPE_16__* %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = load i32, i32* @SQLITE_ERROR, align 4
  %24 = call i32 @sqlite3ErrorWithMsg(%struct.TYPE_16__* %22, i32 %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %9, align 8
  br label %35

25:                                               ; preds = %4
  %26 = call i64 @sqlite3MallocZero(i32 48)
  %27 = inttoptr i64 %26 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %9, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %29 = icmp ne %struct.TYPE_15__* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  %33 = call i32 @sqlite3Error(%struct.TYPE_16__* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %25
  br label %35

35:                                               ; preds = %34, %21
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %37 = icmp ne %struct.TYPE_15__* %36, null
  br i1 %37, label %38, label %84

38:                                               ; preds = %35
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i8* @findBtree(%struct.TYPE_16__* %39, %struct.TYPE_16__* %40, i8* %41)
  %43 = bitcast i8* %42 to %struct.TYPE_14__*
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 2
  store %struct.TYPE_14__* %43, %struct.TYPE_14__** %45, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i8* @findBtree(%struct.TYPE_16__* %46, %struct.TYPE_16__* %47, i8* %48)
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 5
  store %struct.TYPE_16__* %53, %struct.TYPE_16__** %55, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 4
  store %struct.TYPE_16__* %56, %struct.TYPE_16__** %58, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  store i32 1, i32* %60, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 3
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = icmp eq %struct.TYPE_14__* null, %65
  br i1 %66, label %80, label %67

67:                                               ; preds = %38
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 0, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %67
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @checkReadTransaction(%struct.TYPE_16__* %73, i64 %76)
  %78 = load i64, i64* @SQLITE_OK, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %72, %67, %38
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %82 = call i32 @sqlite3_free(%struct.TYPE_15__* %81)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %9, align 8
  br label %83

83:                                               ; preds = %80, %72
  br label %84

84:                                               ; preds = %83, %35
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %86 = icmp ne %struct.TYPE_15__* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %87, %84
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @sqlite3_mutex_leave(i32 %97)
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @sqlite3_mutex_leave(i32 %101)
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  ret %struct.TYPE_15__* %103
}

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3ErrorWithMsg(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i64 @sqlite3MallocZero(i32) #1

declare dso_local i32 @sqlite3Error(%struct.TYPE_16__*, i32) #1

declare dso_local i8* @findBtree(%struct.TYPE_16__*, %struct.TYPE_16__*, i8*) #1

declare dso_local i64 @checkReadTransaction(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_15__*) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
