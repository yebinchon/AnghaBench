; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_getTagCondString.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_getTagCondString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__* }

@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_6__*, i8**)* @getTagCondString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @getTagCondString(i32* %0, %struct.TYPE_6__* %1, i8** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %10 = icmp eq %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %12, i64* %4, align 8
  br label %55

13:                                               ; preds = %3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = call i32 @isExprDirectParentOfLeaftNode(%struct.TYPE_6__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %51, label %17

17:                                               ; preds = %13
  %18 = load i8**, i8*** %7, align 8
  %19 = load i8*, i8** %18, align 8
  store i8 40, i8* %19, align 1
  %20 = load i8**, i8*** %7, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8* %22, i8** %20, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load i8**, i8*** %7, align 8
  %28 = call i64 @getTagCondString(i32* %23, %struct.TYPE_6__* %26, i8** %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = load i64, i64* %8, align 8
  store i64 %33, i64* %4, align 8
  br label %55

34:                                               ; preds = %17
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = load i8**, i8*** %7, align 8
  %38 = call i32 @relToString(i32* %35, %struct.TYPE_6__* %36, i8** %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i8**, i8*** %7, align 8
  %44 = call i64 @getTagCondString(i32* %39, %struct.TYPE_6__* %42, i8** %43)
  store i64 %44, i64* %8, align 8
  %45 = load i8**, i8*** %7, align 8
  %46 = load i8*, i8** %45, align 8
  store i8 41, i8* %46, align 1
  %47 = load i8**, i8*** %7, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  store i8* %49, i8** %47, align 8
  %50 = load i64, i64* %8, align 8
  store i64 %50, i64* %4, align 8
  br label %55

51:                                               ; preds = %13
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = load i8**, i8*** %7, align 8
  %54 = call i64 @tSQLExprLeafToString(%struct.TYPE_6__* %52, i32 1, i8** %53)
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %51, %34, %32, %11
  %56 = load i64, i64* %4, align 8
  ret i64 %56
}

declare dso_local i32 @isExprDirectParentOfLeaftNode(%struct.TYPE_6__*) #1

declare dso_local i32 @relToString(i32*, %struct.TYPE_6__*, i8**) #1

declare dso_local i64 @tSQLExprLeafToString(%struct.TYPE_6__*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
