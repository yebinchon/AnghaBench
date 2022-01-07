; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_resolveAttachExpr.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_resolveAttachExpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@TK_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"invalid name: \22%s\22\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@TK_STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*)* @resolveAttachExpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolveAttachExpr(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %7 = load i32, i32* @SQLITE_OK, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %9 = icmp ne %struct.TYPE_11__* %8, null
  br i1 %9, label %10, label %43

10:                                               ; preds = %2
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TK_ID, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %10
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = call i32 @sqlite3ResolveExprNames(%struct.TYPE_10__* %17, %struct.TYPE_11__* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @SQLITE_OK, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %16
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = call i32 @sqlite3ExprIsConstant(%struct.TYPE_11__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @sqlite3ErrorMsg(i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %36, i32* %3, align 4
  br label %45

37:                                               ; preds = %23, %16
  br label %42

38:                                               ; preds = %10
  %39 = load i64, i64* @TK_STRING, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %38, %37
  br label %43

43:                                               ; preds = %42, %2
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %27
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @sqlite3ResolveExprNames(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @sqlite3ExprIsConstant(%struct.TYPE_11__*) #1

declare dso_local i32 @sqlite3ErrorMsg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
