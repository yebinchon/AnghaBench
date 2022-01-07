; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_expr_base.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_expr_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32 }

@TOKEN_LPAREN = common dso_local global i32 0, align 4
@TOKEN_LBRACKET = common dso_local global i32 0, align 4
@TOKEN_DOT = common dso_local global i32 0, align 4
@TOKEN_INC = common dso_local global i32 0, align 4
@TOKEN_DEC = common dso_local global i32 0, align 4
@token = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TOKEN_RPAREN = common dso_local global i32 0, align 4
@TOKEN_COMMA = common dso_local global i32 0, align 4
@TOKEN_RBRACKET = common dso_local global i32 0, align 4
@TOKEN_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @parse_expr_base() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = call i32* (...) @parse_expr_operand()
  store i32* %7, i32** %1, align 8
  br label %8

8:                                                ; preds = %106, %0
  %9 = load i32, i32* @TOKEN_LPAREN, align 4
  %10 = call i64 @is_token(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* @TOKEN_LBRACKET, align 4
  %14 = call i64 @is_token(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @TOKEN_DOT, align 4
  %18 = call i64 @is_token(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @TOKEN_INC, align 4
  %22 = call i64 @is_token(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @TOKEN_DEC, align 4
  %26 = call i64 @is_token(i32 %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %24, %20, %16, %12, %8
  %29 = phi i1 [ true, %20 ], [ true, %16 ], [ true, %12 ], [ true, %8 ], [ %27, %24 ]
  br i1 %29, label %30, label %107

30:                                               ; preds = %28
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 2), align 4
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* @TOKEN_LPAREN, align 4
  %33 = call i64 @match_token(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  store i32** null, i32*** %3, align 8
  %36 = load i32, i32* @TOKEN_RPAREN, align 4
  %37 = call i64 @is_token(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %35
  %40 = load i32**, i32*** %3, align 8
  %41 = call i32* (...) @parse_expr()
  %42 = call i32 @buf_push(i32** %40, i32* %41)
  br label %43

43:                                               ; preds = %47, %39
  %44 = load i32, i32* @TOKEN_COMMA, align 4
  %45 = call i64 @match_token(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32**, i32*** %3, align 8
  %49 = call i32* (...) @parse_expr()
  %50 = call i32 @buf_push(i32** %48, i32* %49)
  br label %43

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %35
  %53 = load i32, i32* @TOKEN_RPAREN, align 4
  %54 = call i32 @expect_token(i32 %53)
  %55 = load i32, i32* %2, align 4
  %56 = load i32*, i32** %1, align 8
  %57 = load i32**, i32*** %3, align 8
  %58 = load i32**, i32*** %3, align 8
  %59 = call i32 @buf_len(i32** %58)
  %60 = call i32* @new_expr_call(i32 %55, i32* %56, i32** %57, i32 %59)
  store i32* %60, i32** %1, align 8
  br label %106

61:                                               ; preds = %30
  %62 = load i32, i32* @TOKEN_LBRACKET, align 4
  %63 = call i64 @match_token(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = call i32* (...) @parse_expr()
  store i32* %66, i32** %4, align 8
  %67 = load i32, i32* @TOKEN_RBRACKET, align 4
  %68 = call i32 @expect_token(i32 %67)
  %69 = load i32, i32* %2, align 4
  %70 = load i32*, i32** %1, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i32* @new_expr_index(i32 %69, i32* %70, i32* %71)
  store i32* %72, i32** %1, align 8
  br label %105

73:                                               ; preds = %61
  %74 = load i32, i32* @TOKEN_DOT, align 4
  %75 = call i64 @is_token(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = call i32 (...) @next_token()
  %79 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 0), align 8
  store i8* %79, i8** %5, align 8
  %80 = load i32, i32* @TOKEN_NAME, align 4
  %81 = call i32 @expect_token(i32 %80)
  %82 = load i32, i32* %2, align 4
  %83 = load i32*, i32** %1, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = call i32* @new_expr_field(i32 %82, i32* %83, i8* %84)
  store i32* %85, i32** %1, align 8
  br label %104

86:                                               ; preds = %73
  %87 = load i32, i32* @TOKEN_INC, align 4
  %88 = call i64 @is_token(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* @TOKEN_DEC, align 4
  %92 = call i64 @is_token(i32 %91)
  %93 = icmp ne i64 %92, 0
  br label %94

94:                                               ; preds = %90, %86
  %95 = phi i1 [ true, %86 ], [ %93, %90 ]
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 1), align 8
  store i32 %98, i32* %6, align 4
  %99 = call i32 (...) @next_token()
  %100 = load i32, i32* %2, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32*, i32** %1, align 8
  %103 = call i32* @new_expr_modify(i32 %100, i32 %101, i32 1, i32* %102)
  store i32* %103, i32** %1, align 8
  br label %104

104:                                              ; preds = %94, %77
  br label %105

105:                                              ; preds = %104, %65
  br label %106

106:                                              ; preds = %105, %52
  br label %8

107:                                              ; preds = %28
  %108 = load i32*, i32** %1, align 8
  ret i32* %108
}

declare dso_local i32* @parse_expr_operand(...) #1

declare dso_local i64 @is_token(i32) #1

declare dso_local i64 @match_token(i32) #1

declare dso_local i32 @buf_push(i32**, i32*) #1

declare dso_local i32* @parse_expr(...) #1

declare dso_local i32 @expect_token(i32) #1

declare dso_local i32* @new_expr_call(i32, i32*, i32**, i32) #1

declare dso_local i32 @buf_len(i32**) #1

declare dso_local i32* @new_expr_index(i32, i32*, i32*) #1

declare dso_local i32 @next_token(...) #1

declare dso_local i32* @new_expr_field(i32, i32*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @new_expr_modify(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
