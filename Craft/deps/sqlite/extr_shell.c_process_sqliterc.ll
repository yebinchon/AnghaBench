; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_shell.c_process_sqliterc.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_shell.c_process_sqliterc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callback_data = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%s: Error: cannot locate your home directory\0A\00", align 1
@Argv0 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"%s/.sqliterc\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stdin_is_interactive = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"-- Loading resources from %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.callback_data*, i8*)* @process_sqliterc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_sqliterc(%struct.callback_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.callback_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.callback_data* %0, %struct.callback_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = call i8* (...) @find_home_dir()
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* @stderr, align 4
  %20 = load i8*, i8** @Argv0, align 8
  %21 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 1, i32* %3, align 4
  br label %49

22:                                               ; preds = %14
  %23 = call i32 (...) @sqlite3_initialize()
  %24 = load i8*, i8** %6, align 8
  %25 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  store i8* %26, i8** %7, align 8
  br label %27

27:                                               ; preds = %22, %2
  %28 = load i8*, i8** %7, align 8
  %29 = call i32* @fopen(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %29, i32** %9, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load i64, i64* @stdin_is_interactive, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* @stderr, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %35, %32
  %40 = load %struct.callback_data*, %struct.callback_data** %4, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @process_input(%struct.callback_data* %40, i32* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @fclose(i32* %43)
  br label %45

45:                                               ; preds = %39, %27
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @sqlite3_free(i8* %46)
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %18
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i8* @find_home_dir(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @sqlite3_initialize(...) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @process_input(%struct.callback_data*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
