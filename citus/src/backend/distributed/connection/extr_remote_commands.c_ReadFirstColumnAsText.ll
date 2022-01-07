; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_remote_commands.c_ReadFirstColumnAsText.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_remote_commands.c_ReadFirstColumnAsText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NIL = common dso_local global i32* null, align 8
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ReadFirstColumnAsText(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** @NIL, align 8
  store i32* %10, i32** %3, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i64 @PQresultStatus(i32* %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32*, i32** %2, align 8
  %18 = call i64 @PQntuples(i32* %17)
  store i64 %18, i64* %6, align 8
  br label %19

19:                                               ; preds = %16, %1
  store i64 0, i64* %5, align 8
  br label %20

20:                                               ; preds = %35, %19
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load i32*, i32** %2, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i8* @PQgetvalue(i32* %25, i64 %26, i32 0)
  store i8* %27, i8** %8, align 8
  %28 = call i32 (...) @makeStringInfo()
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @appendStringInfoString(i32 %29, i8* %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32* @lappend(i32* %32, i32 %33)
  store i32* %34, i32** %3, align 8
  br label %35

35:                                               ; preds = %24
  %36 = load i64, i64* %5, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %5, align 8
  br label %20

38:                                               ; preds = %20
  %39 = load i32*, i32** %3, align 8
  ret i32* %39
}

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i64 @PQntuples(i32*) #1

declare dso_local i8* @PQgetvalue(i32*, i64, i32) #1

declare dso_local i32 @makeStringInfo(...) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32* @lappend(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
