; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_sqlite3LockAndPrepare.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_sqlite3LockAndPrepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@SQLITE_MISUSE_BKPT = common dso_local global i32 0, align 4
@SQLITE_SCHEMA = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32, i32, i32*, i32**, i8**)* @sqlite3LockAndPrepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite3LockAndPrepare(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32 %3, i32* %4, i32** %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32** %5, i32*** %14, align 8
  store i8** %6, i8*** %15, align 8
  %17 = load i32**, i32*** %14, align 8
  %18 = icmp ne i32** %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32**, i32*** %14, align 8
  store i32* null, i32** %21, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %23 = call i32 @sqlite3SafetyCheckOk(%struct.TYPE_7__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %7
  %26 = load i32, i32* @SQLITE_MISUSE_BKPT, align 4
  store i32 %26, i32* %8, align 4
  br label %76

27:                                               ; preds = %7
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sqlite3_mutex_enter(i32 %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %33 = call i32 @sqlite3BtreeEnterAll(%struct.TYPE_7__* %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = load i32**, i32*** %14, align 8
  %40 = load i8**, i8*** %15, align 8
  %41 = call i32 @sqlite3Prepare(%struct.TYPE_7__* %34, i8* %35, i32 %36, i32 %37, i32* %38, i32** %39, i8** %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* @SQLITE_SCHEMA, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %27
  %46 = load i32**, i32*** %14, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @sqlite3_finalize(i32* %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32*, i32** %13, align 8
  %54 = load i32**, i32*** %14, align 8
  %55 = load i8**, i8*** %15, align 8
  %56 = call i32 @sqlite3Prepare(%struct.TYPE_7__* %49, i8* %50, i32 %51, i32 %52, i32* %53, i32** %54, i8** %55)
  store i32 %56, i32* %16, align 4
  br label %57

57:                                               ; preds = %45, %27
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %59 = call i32 @sqlite3BtreeLeaveAll(%struct.TYPE_7__* %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @sqlite3_mutex_leave(i32 %62)
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* @SQLITE_OK, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %57
  %68 = load i32**, i32*** %14, align 8
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br label %71

71:                                               ; preds = %67, %57
  %72 = phi i1 [ true, %57 ], [ %70, %67 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i32, i32* %16, align 4
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %71, %25
  %77 = load i32, i32* %8, align 4
  ret i32 %77
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3SafetyCheckOk(%struct.TYPE_7__*) #1

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3BtreeEnterAll(%struct.TYPE_7__*) #1

declare dso_local i32 @sqlite3Prepare(%struct.TYPE_7__*, i8*, i32, i32, i32*, i32**, i8**) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @sqlite3BtreeLeaveAll(%struct.TYPE_7__*) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
