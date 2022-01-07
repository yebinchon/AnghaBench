; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_execExecSql.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_execExecSql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i8*)* @execExecSql to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execExecSql(i32* %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @sqlite3_prepare(i32* %10, i8* %11, i32 -1, i32** %8, i32 0)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @SQLITE_OK, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %46

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %40, %18
  %20 = load i64, i64* @SQLITE_ROW, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i64 @sqlite3_step(i32* %21)
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %19
  %25 = load i32*, i32** %5, align 8
  %26 = load i8**, i8*** %6, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i64 @sqlite3_column_text(i32* %27, i32 0)
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @execSql(i32* %25, i8** %26, i8* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @SQLITE_OK, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i8**, i8*** %6, align 8
  %38 = call i32 @vacuumFinalize(i32* %35, i32* %36, i8** %37)
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %46

40:                                               ; preds = %24
  br label %19

41:                                               ; preds = %19
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i8**, i8*** %6, align 8
  %45 = call i32 @vacuumFinalize(i32* %42, i32* %43, i8** %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %41, %34, %16
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @sqlite3_prepare(i32*, i8*, i32, i32**, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @execSql(i32*, i8**, i8*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @vacuumFinalize(i32*, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
