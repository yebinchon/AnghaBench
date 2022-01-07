; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_stmt_do_while.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_stmt_do_while.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@while_keyword = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Expected 'while' after 'do' block\00", align 1
@TOKEN_SEMICOLON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @parse_stmt_do_while(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %6 = call i32 (...) @parse_stmt_block()
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @while_keyword, align 4
  %8 = call i32 @match_keyword(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 @fatal_error_here(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %20

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 (...) @parse_paren_expr()
  %15 = load i32, i32* %4, align 4
  %16 = call i32* @new_stmt_do_while(i32 %13, i32 %14, i32 %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32, i32* @TOKEN_SEMICOLON, align 4
  %18 = call i32 @expect_token(i32 %17)
  %19 = load i32*, i32** %5, align 8
  store i32* %19, i32** %2, align 8
  br label %20

20:                                               ; preds = %12, %10
  %21 = load i32*, i32** %2, align 8
  ret i32* %21
}

declare dso_local i32 @parse_stmt_block(...) #1

declare dso_local i32 @match_keyword(i32) #1

declare dso_local i32 @fatal_error_here(i8*) #1

declare dso_local i32* @new_stmt_do_while(i32, i32, i32) #1

declare dso_local i32 @parse_paren_expr(...) #1

declare dso_local i32 @expect_token(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
