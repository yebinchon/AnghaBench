; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_sql-tokenizer-gen.c_main.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_sql-tokenizer-gen.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@g_ascii_strcasecmp = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"TK_SQL_\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"static int sql_keywords[] = {\00", align 1
@trav = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"\0A};\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"int *sql_keywords_get() { return sql_keywords; }\0A\00", align 1
@.str.4 = private unnamed_addr constant [89 x i8] c"int sql_keywords_get_count() { return sizeof(sql_keywords) / sizeof(sql_keywords[0]); }\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %5 = load i32, i32* @TRUE, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i64, i64* @g_ascii_strcasecmp, align 8
  %7 = trunc i64 %6 to i32
  %8 = call i32* @g_tree_new(i32 %7)
  store i32* %8, i32** %2, align 8
  store i64 0, i64* %4, align 8
  br label %9

9:                                                ; preds = %30, %0
  %10 = load i64, i64* %4, align 8
  %11 = call i64 (...) @sql_token_get_last_id()
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @sql_token_get_name(i64 %14, i32* null)
  %16 = call i64 @strncmp(i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %17 = icmp ne i64 0, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %30

19:                                               ; preds = %13
  %20 = load i32*, i32** %2, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @sql_token_get_name(i64 %21, i32* null)
  %23 = sext i32 %22 to i64
  %24 = add i64 %23, 8
  %25 = sub i64 %24, 1
  %26 = trunc i64 %25 to i32
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @GINT_TO_POINTER(i64 %27)
  %29 = call i32 @g_tree_insert(i32* %20, i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %19, %18
  %31 = load i64, i64* %4, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %4, align 8
  br label %9

33:                                               ; preds = %9
  %34 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* @trav, align 4
  %37 = call i32 @g_tree_foreach(i32* %35, i32 %36, i32* %3)
  %38 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %39 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %40 = call i32 @printf(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.4, i64 0, i64 0))
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @g_tree_destroy(i32* %41)
  ret i32 0
}

declare dso_local i32* @g_tree_new(i32) #1

declare dso_local i64 @sql_token_get_last_id(...) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @sql_token_get_name(i64, i32*) #1

declare dso_local i32 @g_tree_insert(i32*, i32, i32) #1

declare dso_local i32 @GINT_TO_POINTER(i64) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @g_tree_foreach(i32*, i32, i32*) #1

declare dso_local i32 @g_tree_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
