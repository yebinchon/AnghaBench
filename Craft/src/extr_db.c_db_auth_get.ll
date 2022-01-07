; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_db.c_db_auth_get.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_db.c_db_auth_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@db_enabled = common dso_local global i32 0, align 4
@db_auth_get.query = internal global i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [58 x i8] c"select token from auth.identity_token where username = ?;\00", align 1
@db = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_auth_get(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @db_enabled, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

14:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* @db, align 4
  %16 = load i8*, i8** @db_auth_get.query, align 8
  %17 = call i32 @sqlite3_prepare_v2(i32 %15, i8* %16, i32 -1, i32** %9, i32* null)
  %18 = load i32*, i32** %9, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @sqlite3_bind_text(i32* %18, i32 1, i8* %19, i32 -1, i32* null)
  %21 = load i32*, i32** %9, align 8
  %22 = call i64 @sqlite3_step(i32* %21)
  %23 = load i64, i64* @SQLITE_ROW, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %14
  %26 = load i32*, i32** %9, align 8
  %27 = call i64 @sqlite3_column_text(i32* %26, i32 0)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %31, 1
  %33 = call i32 @strncpy(i8* %29, i8* %30, i32 %32)
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  store i8 0, i8* %38, align 1
  store i32 1, i32* %8, align 4
  br label %39

39:                                               ; preds = %25, %14
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @sqlite3_finalize(i32* %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %13
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @sqlite3_prepare_v2(i32, i8*, i32, i32**, i32*) #1

declare dso_local i32 @sqlite3_bind_text(i32*, i32, i8*, i32, i32*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
