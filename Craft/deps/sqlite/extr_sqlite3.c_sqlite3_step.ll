; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_sqlite3_step.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_sqlite3_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_MISUSE_BKPT = common dso_local global i32 0, align 4
@SQLITE_SCHEMA = common dso_local global i32 0, align 4
@SQLITE_MAX_SCHEMA_RETRY = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_step(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32, i32* @SQLITE_OK, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @SQLITE_OK, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = call i64 @vdbeSafetyNotNull(%struct.TYPE_10__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @SQLITE_MISUSE_BKPT, align 4
  store i32 %18, i32* %2, align 4
  br label %113

19:                                               ; preds = %1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 5
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %8, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @sqlite3_mutex_enter(i32 %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %29

29:                                               ; preds = %46, %19
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = call i32 @sqlite3Step(%struct.TYPE_10__* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @SQLITE_SCHEMA, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @SQLITE_MAX_SCHEMA_RETRY, align 4
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = call i32 @sqlite3Reprepare(%struct.TYPE_10__* %40)
  store i32 %41, i32* %4, align 4
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @SQLITE_OK, align 4
  %43 = icmp eq i32 %41, %42
  br label %44

44:                                               ; preds = %39, %34, %29
  %45 = phi i1 [ false, %34 ], [ false, %29 ], [ %43, %39 ]
  br i1 %45, label %46, label %57

46:                                               ; preds = %44
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @sqlite3_reset(i32* %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  br label %29

57:                                               ; preds = %44
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @SQLITE_OK, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %104

61:                                               ; preds = %57
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @ALWAYS(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %104

67:                                               ; preds = %61
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @ALWAYS(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %104

73:                                               ; preds = %67
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @sqlite3_value_text(i32 %76)
  %78 = inttoptr i64 %77 to i8*
  store i8* %78, i8** %9, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @sqlite3DbFree(%struct.TYPE_9__* %79, i32 %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %73
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @sqlite3DbStrDup(%struct.TYPE_9__* %89, i8* %90)
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  br label %103

97:                                               ; preds = %73
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 3
  store i32 0, i32* %99, align 4
  %100 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %100, i32* %4, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %97, %88
  br label %104

104:                                              ; preds = %103, %67, %61, %57
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @sqlite3ApiExit(%struct.TYPE_9__* %105, i32 %106)
  store i32 %107, i32* %4, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @sqlite3_mutex_leave(i32 %110)
  %112 = load i32, i32* %4, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %104, %17
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i64 @vdbeSafetyNotNull(%struct.TYPE_10__*) #1

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3Step(%struct.TYPE_10__*) #1

declare dso_local i32 @sqlite3Reprepare(%struct.TYPE_10__*) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ALWAYS(i32) #1

declare dso_local i64 @sqlite3_value_text(i32) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @sqlite3DbStrDup(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @sqlite3ApiExit(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
