; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_shell.c_open_db.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_shell.c_open_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callback_data = type { i64, i8* }

@db = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"shellstatic\00", align 1
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@shellstaticFunc = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Error: unable to open database \22%s\22: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.callback_data*)* @open_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @open_db(%struct.callback_data* %0) #0 {
  %2 = alloca %struct.callback_data*, align 8
  store %struct.callback_data* %0, %struct.callback_data** %2, align 8
  %3 = load %struct.callback_data*, %struct.callback_data** %2, align 8
  %4 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %52

7:                                                ; preds = %1
  %8 = call i32 (...) @sqlite3_initialize()
  %9 = load %struct.callback_data*, %struct.callback_data** %2, align 8
  %10 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.callback_data*, %struct.callback_data** %2, align 8
  %13 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %12, i32 0, i32 0
  %14 = call i32 @sqlite3_open(i8* %11, i64* %13)
  %15 = load %struct.callback_data*, %struct.callback_data** %2, align 8
  %16 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* @db, align 8
  %18 = load i64, i64* @db, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %7
  %21 = load i64, i64* @db, align 8
  %22 = call i64 @sqlite3_errcode(i64 %21)
  %23 = load i64, i64* @SQLITE_OK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i64, i64* @db, align 8
  %27 = load i32, i32* @SQLITE_UTF8, align 4
  %28 = load i32, i32* @shellstaticFunc, align 4
  %29 = call i32 @sqlite3_create_function(i64 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0, i32 %27, i32 0, i32 %28, i32 0, i32 0)
  br label %30

30:                                               ; preds = %25, %20, %7
  %31 = load i64, i64* @db, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* @SQLITE_OK, align 8
  %35 = load i64, i64* @db, align 8
  %36 = call i64 @sqlite3_errcode(i64 %35)
  %37 = icmp ne i64 %34, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %33, %30
  %39 = load i32, i32* @stderr, align 4
  %40 = load %struct.callback_data*, %struct.callback_data** %2, align 8
  %41 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load i64, i64* @db, align 8
  %44 = call i8* @sqlite3_errmsg(i64 %43)
  %45 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %42, i8* %44)
  %46 = call i32 @exit(i32 1) #3
  unreachable

47:                                               ; preds = %33
  %48 = load %struct.callback_data*, %struct.callback_data** %2, align 8
  %49 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @sqlite3_enable_load_extension(i64 %50, i32 1)
  br label %52

52:                                               ; preds = %47, %1
  ret void
}

declare dso_local i32 @sqlite3_initialize(...) #1

declare dso_local i32 @sqlite3_open(i8*, i64*) #1

declare dso_local i64 @sqlite3_errcode(i64) #1

declare dso_local i32 @sqlite3_create_function(i64, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @sqlite3_errmsg(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sqlite3_enable_load_extension(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
