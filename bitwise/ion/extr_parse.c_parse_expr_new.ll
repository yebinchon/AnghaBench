; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_expr_new.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_expr_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOKEN_LPAREN = common dso_local global i32 0, align 4
@TOKEN_RPAREN = common dso_local global i32 0, align 4
@TOKEN_LBRACKET = common dso_local global i32 0, align 4
@TOKEN_RBRACKET = common dso_local global i32 0, align 4
@undef_keyword = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @parse_expr_new(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  %6 = load i32, i32* @TOKEN_LPAREN, align 4
  %7 = call i64 @match_token(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = call i32* (...) @parse_expr()
  store i32* %10, i32** %3, align 8
  %11 = load i32, i32* @TOKEN_RPAREN, align 4
  %12 = call i32 @expect_token(i32 %11)
  br label %13

13:                                               ; preds = %9, %1
  store i32* null, i32** %4, align 8
  %14 = load i32, i32* @TOKEN_LBRACKET, align 4
  %15 = call i64 @match_token(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = call i32* (...) @parse_expr()
  store i32* %18, i32** %4, align 8
  %19 = load i32, i32* @TOKEN_RBRACKET, align 4
  %20 = call i32 @expect_token(i32 %19)
  br label %21

21:                                               ; preds = %17, %13
  store i32* null, i32** %5, align 8
  %22 = load i32, i32* @undef_keyword, align 4
  %23 = call i32 @match_keyword(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = call i32* (...) @parse_expr()
  store i32* %26, i32** %5, align 8
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i32, i32* %2, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32* @new_expr_new(i32 %28, i32* %29, i32* %30, i32* %31)
  ret i32* %32
}

declare dso_local i64 @match_token(i32) #1

declare dso_local i32* @parse_expr(...) #1

declare dso_local i32 @expect_token(i32) #1

declare dso_local i32 @match_keyword(i32) #1

declare dso_local i32* @new_expr_new(i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
