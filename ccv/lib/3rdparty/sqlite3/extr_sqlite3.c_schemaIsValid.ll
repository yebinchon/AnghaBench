; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_schemaIsValid.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_schemaIsValid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i32 }

@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_IOERR_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@BTREE_SCHEMA_VERSION = common dso_local global i32 0, align 4
@SQLITE_SCHEMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @schemaIsValid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schemaIsValid(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %3, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @sqlite3_mutex_held(i32 %18)
  %20 = call i32 @assert(i32 %19)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %96, %1
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %99

27:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %96

39:                                               ; preds = %27
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @sqlite3BtreeIsInReadTrans(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %62, label %43

43:                                               ; preds = %39
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @sqlite3BtreeBeginTrans(i32* %44, i32 0)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @SQLITE_NOMEM, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @SQLITE_IOERR_NOMEM, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49, %43
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = call i32 @sqlite3OomFault(%struct.TYPE_11__* %54)
  br label %56

56:                                               ; preds = %53, %49
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @SQLITE_OK, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %99

61:                                               ; preds = %56
  store i32 1, i32* %7, align 4
  br label %62

62:                                               ; preds = %61, %39
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* @BTREE_SCHEMA_VERSION, align 4
  %65 = call i32 @sqlite3BtreeGetMeta(i32* %63, i32 %64, i32* %6)
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @sqlite3SchemaMutexHeld(%struct.TYPE_11__* %66, i32 %67, i32 0)
  %69 = call i32 @assert(i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %70, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %62
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @sqlite3ResetOneSchema(%struct.TYPE_11__* %83, i32 %84)
  %86 = load i32, i32* @SQLITE_SCHEMA, align 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %82, %62
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @sqlite3BtreeCommit(i32* %93)
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %95, %38
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %21

99:                                               ; preds = %60, %21
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @sqlite3BtreeIsInReadTrans(i32*) #1

declare dso_local i32 @sqlite3BtreeBeginTrans(i32*, i32) #1

declare dso_local i32 @sqlite3OomFault(%struct.TYPE_11__*) #1

declare dso_local i32 @sqlite3BtreeGetMeta(i32*, i32, i32*) #1

declare dso_local i32 @sqlite3SchemaMutexHeld(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @sqlite3ResetOneSchema(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @sqlite3BtreeCommit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
