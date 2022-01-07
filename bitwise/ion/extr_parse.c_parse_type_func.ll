; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_type_func.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_type_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@token = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TOKEN_LPAREN = common dso_local global i32 0, align 4
@TOKEN_RPAREN = common dso_local global i32 0, align 4
@TOKEN_COMMA = common dso_local global i32 0, align 4
@TOKEN_ELLIPSIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Multiple ellipsis instances in function type\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Ellipsis must be last parameter in function type\00", align 1
@TOKEN_COLON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @parse_type_func() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 0), align 4
  store i32 %5, i32* %1, align 4
  store i32** null, i32*** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @TOKEN_LPAREN, align 4
  %7 = call i32 @expect_token(i32 %6)
  %8 = load i32, i32* @TOKEN_RPAREN, align 4
  %9 = call i32 @is_token(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %40, label %11

11:                                               ; preds = %0
  %12 = load i32**, i32*** %2, align 8
  %13 = call i32 (...) @parse_type_func_param()
  %14 = call i32 @buf_push(i32** %12, i32 %13)
  br label %15

15:                                               ; preds = %38, %11
  %16 = load i32, i32* @TOKEN_COMMA, align 4
  %17 = call i64 @match_token(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = load i32, i32* @TOKEN_ELLIPSIS, align 4
  %21 = call i64 @match_token(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @error_here(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %23
  store i32 1, i32* %3, align 4
  br label %38

29:                                               ; preds = %19
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @error_here(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i32**, i32*** %2, align 8
  %36 = call i32 (...) @parse_type_func_param()
  %37 = call i32 @buf_push(i32** %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %28
  br label %15

39:                                               ; preds = %15
  br label %40

40:                                               ; preds = %39, %0
  %41 = load i32, i32* @TOKEN_RPAREN, align 4
  %42 = call i32 @expect_token(i32 %41)
  store i32* null, i32** %4, align 8
  %43 = load i32, i32* @TOKEN_COLON, align 4
  %44 = call i64 @match_token(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32* (...) @parse_type()
  store i32* %47, i32** %4, align 8
  br label %48

48:                                               ; preds = %46, %40
  %49 = load i32, i32* %1, align 4
  %50 = load i32**, i32*** %2, align 8
  %51 = load i32**, i32*** %2, align 8
  %52 = call i32 @buf_len(i32** %51)
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32* @new_typespec_func(i32 %49, i32** %50, i32 %52, i32* %53, i32 %54)
  ret i32* %55
}

declare dso_local i32 @expect_token(i32) #1

declare dso_local i32 @is_token(i32) #1

declare dso_local i32 @buf_push(i32**, i32) #1

declare dso_local i32 @parse_type_func_param(...) #1

declare dso_local i64 @match_token(i32) #1

declare dso_local i32 @error_here(i8*) #1

declare dso_local i32* @parse_type(...) #1

declare dso_local i32* @new_typespec_func(i32, i32**, i32, i32*, i32) #1

declare dso_local i32 @buf_len(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
