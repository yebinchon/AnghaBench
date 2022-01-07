; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpJson.c_httpJsonPairStatus.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpJson.c_httpJsonPairStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"succ\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@TSDB_CODE_DB_NOT_SELECTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"failed to create database\00", align 1
@TSDB_CODE_INVALID_TABLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"failed to create table\00", align 1
@tsError = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @httpJsonPairStatus(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @httpJsonPair(i32* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  br label %54

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @httpJsonPair(i32* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @httpJsonItemToken(i32* %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @httpJsonPairIntVal(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %53

20:                                               ; preds = %10
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @httpJsonItemToken(i32* %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @TSDB_CODE_DB_NOT_SELECTED, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @httpJsonPair(i32* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 23)
  br label %52

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @TSDB_CODE_INVALID_TABLE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @httpJsonPair(i32* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 22)
  br label %51

36:                                               ; preds = %29
  %37 = load i32*, i32** %3, align 8
  %38 = load i8**, i8*** @tsError, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = load i8**, i8*** @tsError, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @strlen(i8* %47)
  %49 = trunc i64 %48 to i32
  %50 = call i32 @httpJsonPair(i32* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4, i8* %42, i32 %49)
  br label %51

51:                                               ; preds = %36, %33
  br label %52

52:                                               ; preds = %51, %26
  br label %53

53:                                               ; preds = %52, %10
  br label %54

54:                                               ; preds = %53, %7
  ret void
}

declare dso_local i32 @httpJsonPair(i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @httpJsonItemToken(i32*) #1

declare dso_local i32 @httpJsonPairIntVal(i32*, i8*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
