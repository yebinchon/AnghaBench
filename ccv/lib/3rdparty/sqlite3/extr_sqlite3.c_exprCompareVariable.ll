; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_exprCompareVariable.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_exprCompareVariable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@SQLITE_UTF8 = common dso_local global i32 0, align 4
@SQLITE_AFF_BLOB = common dso_local global i32 0, align 4
@SQLITE_TEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, %struct.TYPE_8__*)* @exprCompareVariable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exprCompareVariable(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  store i32 0, i32* %7, align 4
  store i32* null, i32** %10, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = load i32, i32* @SQLITE_UTF8, align 4
  %16 = load i32, i32* @SQLITE_AFF_BLOB, align 4
  %17 = call i32 @sqlite3ValueFromExpr(i32 %13, %struct.TYPE_8__* %14, i32 %15, i32 %16, i32** %10)
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %56

20:                                               ; preds = %3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @sqlite3VdbeSetVarmask(i32 %26, i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @SQLITE_AFF_BLOB, align 4
  %34 = call i32* @sqlite3VdbeGetBoundValue(i32 %31, i32 %32, i32 %33)
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %20
  %38 = load i32*, i32** %9, align 8
  %39 = call i64 @sqlite3_value_type(i32* %38)
  %40 = load i64, i64* @SQLITE_TEXT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @sqlite3_value_text(i32* %43)
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32*, i32** %9, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = call i64 @sqlite3MemCompare(i32* %46, i32* %47, i32 0)
  %49 = icmp eq i64 0, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %45, %20
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @sqlite3ValueFree(i32* %52)
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @sqlite3ValueFree(i32* %54)
  br label %56

56:                                               ; preds = %51, %3
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @sqlite3ValueFromExpr(i32, %struct.TYPE_8__*, i32, i32, i32**) #1

declare dso_local i32 @sqlite3VdbeSetVarmask(i32, i32) #1

declare dso_local i32* @sqlite3VdbeGetBoundValue(i32, i32, i32) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i32 @sqlite3_value_text(i32*) #1

declare dso_local i64 @sqlite3MemCompare(i32*, i32*, i32) #1

declare dso_local i32 @sqlite3ValueFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
