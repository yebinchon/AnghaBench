; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_decl_var.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_decl_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOKEN_ASSIGN = common dso_local global i32 0, align 4
@TOKEN_SEMICOLON = common dso_local global i32 0, align 4
@TOKEN_COLON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Expected : or = after var, got %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @parse_decl_var(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %8 = call i8* (...) @parse_name()
  store i8* %8, i8** %4, align 8
  %9 = load i32, i32* @TOKEN_ASSIGN, align 4
  %10 = call i64 @match_token(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = call i32* (...) @parse_expr()
  store i32* %13, i32** %5, align 8
  %14 = load i32, i32* @TOKEN_SEMICOLON, align 4
  %15 = call i32 @expect_token(i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32* @new_decl_var(i32 %16, i8* %17, i32* null, i32* %18)
  store i32* %19, i32** %2, align 8
  br label %42

20:                                               ; preds = %1
  %21 = load i32, i32* @TOKEN_COLON, align 4
  %22 = call i64 @match_token(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = call i32* (...) @parse_type()
  store i32* %25, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %26 = load i32, i32* @TOKEN_ASSIGN, align 4
  %27 = call i64 @match_token(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32* (...) @parse_expr()
  store i32* %30, i32** %7, align 8
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i32, i32* @TOKEN_SEMICOLON, align 4
  %33 = call i32 @expect_token(i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = load i8*, i8** %4, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32* @new_decl_var(i32 %34, i8* %35, i32* %36, i32* %37)
  store i32* %38, i32** %2, align 8
  br label %42

39:                                               ; preds = %20
  %40 = call i32 (...) @token_info()
  %41 = call i32 @fatal_error_here(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i32* null, i32** %2, align 8
  br label %42

42:                                               ; preds = %39, %31, %12
  %43 = load i32*, i32** %2, align 8
  ret i32* %43
}

declare dso_local i8* @parse_name(...) #1

declare dso_local i64 @match_token(i32) #1

declare dso_local i32* @parse_expr(...) #1

declare dso_local i32 @expect_token(i32) #1

declare dso_local i32* @new_decl_var(i32, i8*, i32*, i32*) #1

declare dso_local i32* @parse_type(...) #1

declare dso_local i32 @fatal_error_here(i8*, i32) #1

declare dso_local i32 @token_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
