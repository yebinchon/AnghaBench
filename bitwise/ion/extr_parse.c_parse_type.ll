; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_type.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@token = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TOKEN_LBRACKET = common dso_local global i32 0, align 4
@TOKEN_MUL = common dso_local global i32 0, align 4
@const_keyword = common dso_local global i32 0, align 4
@TOKEN_RBRACKET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @parse_type() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = call i32* (...) @parse_type_base()
  store i32* %4, i32** %1, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 0), align 4
  store i32 %5, i32* %2, align 4
  br label %6

6:                                                ; preds = %54, %0
  %7 = load i32, i32* @TOKEN_LBRACKET, align 4
  %8 = call i64 @is_token(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* @TOKEN_MUL, align 4
  %12 = call i64 @is_token(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* @const_keyword, align 4
  %16 = call i64 @is_keyword(i32 %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %14, %10, %6
  %19 = phi i1 [ true, %10 ], [ true, %6 ], [ %17, %14 ]
  br i1 %19, label %20, label %55

20:                                               ; preds = %18
  %21 = load i32, i32* @TOKEN_LBRACKET, align 4
  %22 = call i64 @match_token(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  store i32* null, i32** %3, align 8
  %25 = load i32, i32* @TOKEN_RBRACKET, align 4
  %26 = call i64 @is_token(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = call i32* (...) @parse_expr()
  store i32* %29, i32** %3, align 8
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i32, i32* @TOKEN_RBRACKET, align 4
  %32 = call i32 @expect_token(i32 %31)
  %33 = load i32, i32* %2, align 4
  %34 = load i32*, i32** %1, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i32* @new_typespec_array(i32 %33, i32* %34, i32* %35)
  store i32* %36, i32** %1, align 8
  br label %54

37:                                               ; preds = %20
  %38 = load i32, i32* @const_keyword, align 4
  %39 = call i64 @match_keyword(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* %2, align 4
  %43 = load i32*, i32** %1, align 8
  %44 = call i32* @new_typespec_const(i32 %42, i32* %43)
  store i32* %44, i32** %1, align 8
  br label %53

45:                                               ; preds = %37
  %46 = load i32, i32* @TOKEN_MUL, align 4
  %47 = call i64 @is_token(i32 %46)
  %48 = call i32 @assert(i64 %47)
  %49 = call i32 (...) @next_token()
  %50 = load i32, i32* %2, align 4
  %51 = load i32*, i32** %1, align 8
  %52 = call i32* @new_typespec_ptr(i32 %50, i32* %51)
  store i32* %52, i32** %1, align 8
  br label %53

53:                                               ; preds = %45, %41
  br label %54

54:                                               ; preds = %53, %30
  br label %6

55:                                               ; preds = %18
  %56 = load i32*, i32** %1, align 8
  ret i32* %56
}

declare dso_local i32* @parse_type_base(...) #1

declare dso_local i64 @is_token(i32) #1

declare dso_local i64 @is_keyword(i32) #1

declare dso_local i64 @match_token(i32) #1

declare dso_local i32* @parse_expr(...) #1

declare dso_local i32 @expect_token(i32) #1

declare dso_local i32* @new_typespec_array(i32, i32*, i32*) #1

declare dso_local i64 @match_keyword(i32) #1

declare dso_local i32* @new_typespec_const(i32, i32*) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i32 @next_token(...) #1

declare dso_local i32* @new_typespec_ptr(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
