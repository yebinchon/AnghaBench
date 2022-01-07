; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_db.c_db_load_signs.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_db.c_db_load_signs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@db_enabled = common dso_local global i32 0, align 4
@load_signs_stmt = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_load_signs(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @db_enabled, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %48

15:                                               ; preds = %3
  %16 = load i32, i32* @load_signs_stmt, align 4
  %17 = call i32 @sqlite3_reset(i32 %16)
  %18 = load i32, i32* @load_signs_stmt, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @sqlite3_bind_int(i32 %18, i32 1, i32 %19)
  %21 = load i32, i32* @load_signs_stmt, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @sqlite3_bind_int(i32 %21, i32 2, i32 %22)
  br label %24

24:                                               ; preds = %29, %15
  %25 = load i32, i32* @load_signs_stmt, align 4
  %26 = call i64 @sqlite3_step(i32 %25)
  %27 = load i64, i64* @SQLITE_ROW, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %24
  %30 = load i32, i32* @load_signs_stmt, align 4
  %31 = call i32 @sqlite3_column_int(i32 %30, i32 0)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @load_signs_stmt, align 4
  %33 = call i32 @sqlite3_column_int(i32 %32, i32 1)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* @load_signs_stmt, align 4
  %35 = call i32 @sqlite3_column_int(i32 %34, i32 2)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* @load_signs_stmt, align 4
  %37 = call i32 @sqlite3_column_int(i32 %36, i32 3)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* @load_signs_stmt, align 4
  %39 = call i64 @sqlite3_column_text(i32 %38, i32 4)
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** %11, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @sign_list_add(i32* %41, i32 %42, i32 %43, i32 %44, i32 %45, i8* %46)
  br label %24

48:                                               ; preds = %14, %24
  ret void
}

declare dso_local i32 @sqlite3_reset(i32) #1

declare dso_local i32 @sqlite3_bind_int(i32, i32, i32) #1

declare dso_local i64 @sqlite3_step(i32) #1

declare dso_local i32 @sqlite3_column_int(i32, i32) #1

declare dso_local i64 @sqlite3_column_text(i32, i32) #1

declare dso_local i32 @sign_list_add(i32*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
