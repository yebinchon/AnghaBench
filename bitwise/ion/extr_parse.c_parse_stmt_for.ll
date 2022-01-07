; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_stmt_for.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_stmt_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@TOKEN_LBRACE = common dso_local global i32 0, align 4
@TOKEN_LPAREN = common dso_local global i32 0, align 4
@TOKEN_SEMICOLON = common dso_local global i32 0, align 4
@TOKEN_RPAREN = common dso_local global i32 0, align 4
@STMT_INIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"Init statements not allowed in for-statement's next clause\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @parse_stmt_for(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  store i32* null, i32** %4, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  %6 = load i32, i32* @TOKEN_LBRACE, align 4
  %7 = call i32 @is_token(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %50, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @TOKEN_LPAREN, align 4
  %11 = call i32 @expect_token(i32 %10)
  %12 = load i32, i32* @TOKEN_SEMICOLON, align 4
  %13 = call i32 @is_token(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = call %struct.TYPE_7__* (...) @parse_simple_stmt()
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %3, align 8
  br label %17

17:                                               ; preds = %15, %9
  %18 = load i32, i32* @TOKEN_SEMICOLON, align 4
  %19 = call i64 @match_token(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %17
  %22 = load i32, i32* @TOKEN_SEMICOLON, align 4
  %23 = call i32 @is_token(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = call i32* (...) @parse_expr()
  store i32* %26, i32** %4, align 8
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i32, i32* @TOKEN_SEMICOLON, align 4
  %29 = call i64 @match_token(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = load i32, i32* @TOKEN_RPAREN, align 4
  %33 = call i32 @is_token(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %31
  %36 = call %struct.TYPE_7__* (...) @parse_simple_stmt()
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %5, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @STMT_INIT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = call i32 @error_here(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %35
  br label %45

45:                                               ; preds = %44, %31
  br label %46

46:                                               ; preds = %45, %27
  br label %47

47:                                               ; preds = %46, %17
  %48 = load i32, i32* @TOKEN_RPAREN, align 4
  %49 = call i32 @expect_token(i32 %48)
  br label %50

50:                                               ; preds = %47, %1
  %51 = load i32, i32* %2, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = call i32 (...) @parse_stmt_block()
  %56 = call %struct.TYPE_7__* @new_stmt_for(i32 %51, %struct.TYPE_7__* %52, i32* %53, %struct.TYPE_7__* %54, i32 %55)
  ret %struct.TYPE_7__* %56
}

declare dso_local i32 @is_token(i32) #1

declare dso_local i32 @expect_token(i32) #1

declare dso_local %struct.TYPE_7__* @parse_simple_stmt(...) #1

declare dso_local i64 @match_token(i32) #1

declare dso_local i32* @parse_expr(...) #1

declare dso_local i32 @error_here(i8*) #1

declare dso_local %struct.TYPE_7__* @new_stmt_for(i32, %struct.TYPE_7__*, i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @parse_stmt_block(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
