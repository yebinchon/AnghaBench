; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_db.c_db_load_state.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_db.c_db_load_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@db_enabled = common dso_local global i32 0, align 4
@db_load_state.query = internal global i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [35 x i8] c"select x, y, z, rx, ry from state;\00", align 1
@db = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_load_state(float* %0, float* %1, float* %2, float* %3, float* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store float* %0, float** %7, align 8
  store float* %1, float** %8, align 8
  store float* %2, float** %9, align 8
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  %14 = load i32, i32* @db_enabled, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %45

17:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* @db, align 4
  %19 = load i8*, i8** @db_load_state.query, align 8
  %20 = call i32 @sqlite3_prepare_v2(i32 %18, i8* %19, i32 -1, i32** %13, i32* null)
  %21 = load i32*, i32** %13, align 8
  %22 = call i64 @sqlite3_step(i32* %21)
  %23 = load i64, i64* @SQLITE_ROW, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %17
  %26 = load i32*, i32** %13, align 8
  %27 = call float @sqlite3_column_double(i32* %26, i32 0)
  %28 = load float*, float** %7, align 8
  store float %27, float* %28, align 4
  %29 = load i32*, i32** %13, align 8
  %30 = call float @sqlite3_column_double(i32* %29, i32 1)
  %31 = load float*, float** %8, align 8
  store float %30, float* %31, align 4
  %32 = load i32*, i32** %13, align 8
  %33 = call float @sqlite3_column_double(i32* %32, i32 2)
  %34 = load float*, float** %9, align 8
  store float %33, float* %34, align 4
  %35 = load i32*, i32** %13, align 8
  %36 = call float @sqlite3_column_double(i32* %35, i32 3)
  %37 = load float*, float** %10, align 8
  store float %36, float* %37, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = call float @sqlite3_column_double(i32* %38, i32 4)
  %40 = load float*, float** %11, align 8
  store float %39, float* %40, align 4
  store i32 1, i32* %12, align 4
  br label %41

41:                                               ; preds = %25, %17
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @sqlite3_finalize(i32* %42)
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %41, %16
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @sqlite3_prepare_v2(i32, i8*, i32, i32**, i32*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local float @sqlite3_column_double(i32*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
