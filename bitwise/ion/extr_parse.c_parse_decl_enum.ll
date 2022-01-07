; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_decl_enum.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_decl_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOKEN_NAME = common dso_local global i32 0, align 4
@TOKEN_ASSIGN = common dso_local global i32 0, align 4
@TOKEN_LBRACE = common dso_local global i32 0, align 4
@TOKEN_RBRACE = common dso_local global i32 0, align 4
@TOKEN_COMMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @parse_decl_enum(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %3, align 8
  %6 = load i32, i32* @TOKEN_NAME, align 4
  %7 = call i64 @is_token(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i8* (...) @parse_name()
  store i8* %10, i8** %3, align 8
  br label %11

11:                                               ; preds = %9, %1
  store i32* null, i32** %4, align 8
  %12 = load i32, i32* @TOKEN_ASSIGN, align 4
  %13 = call i64 @match_token(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32* (...) @parse_type()
  store i32* %16, i32** %4, align 8
  br label %17

17:                                               ; preds = %15, %11
  %18 = load i32, i32* @TOKEN_LBRACE, align 4
  %19 = call i32 @expect_token(i32 %18)
  store i32* null, i32** %5, align 8
  br label %20

20:                                               ; preds = %33, %17
  %21 = load i32, i32* @TOKEN_RBRACE, align 4
  %22 = call i64 @is_token(i32 %21)
  %23 = icmp ne i64 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 (...) @parse_decl_enum_item()
  %28 = call i32 @buf_push(i32* %26, i32 %27)
  %29 = load i32, i32* @TOKEN_COMMA, align 4
  %30 = call i64 @match_token(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  br label %34

33:                                               ; preds = %25
  br label %20

34:                                               ; preds = %32, %20
  %35 = load i32, i32* @TOKEN_RBRACE, align 4
  %36 = call i32 @expect_token(i32 %35)
  %37 = load i32, i32* %2, align 4
  %38 = load i8*, i8** %3, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @buf_len(i32* %41)
  %43 = call i32* @new_decl_enum(i32 %37, i8* %38, i32* %39, i32* %40, i32 %42)
  ret i32* %43
}

declare dso_local i64 @is_token(i32) #1

declare dso_local i8* @parse_name(...) #1

declare dso_local i64 @match_token(i32) #1

declare dso_local i32* @parse_type(...) #1

declare dso_local i32 @expect_token(i32) #1

declare dso_local i32 @buf_push(i32*, i32) #1

declare dso_local i32 @parse_decl_enum_item(...) #1

declare dso_local i32* @new_decl_enum(i32, i8*, i32*, i32*, i32) #1

declare dso_local i32 @buf_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
