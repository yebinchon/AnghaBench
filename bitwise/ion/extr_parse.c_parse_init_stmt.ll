; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_init_stmt.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_init_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8*, i32 }

@TOKEN_COLON_ASSIGN = common dso_local global i32 0, align 4
@EXPR_NAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c":= must be preceded by a name\00", align 1
@TOKEN_COLON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c": must be preceded by a name\00", align 1
@TOKEN_ASSIGN = common dso_local global i32 0, align 4
@undef_keyword = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @parse_init_stmt(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %8 = load i32, i32* @TOKEN_COLON_ASSIGN, align 4
  %9 = call i64 @match_token(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @EXPR_NAME, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = call i32 @fatal_error_here(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %66

19:                                               ; preds = %11
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call %struct.TYPE_5__* (...) @parse_expr()
  %27 = call i32* @new_stmt_init(i32 %22, i8* %25, i32* null, %struct.TYPE_5__* %26, i32 0)
  store i32* %27, i32** %2, align 8
  br label %66

28:                                               ; preds = %1
  %29 = load i32, i32* @TOKEN_COLON, align 4
  %30 = call i64 @match_token(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %65

32:                                               ; preds = %28
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @EXPR_NAME, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = call i32 @fatal_error_here(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %66

40:                                               ; preds = %32
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %4, align 8
  %44 = call i32* (...) @parse_type()
  store i32* %44, i32** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  store i32 0, i32* %7, align 4
  %45 = load i32, i32* @TOKEN_ASSIGN, align 4
  %46 = call i64 @match_token(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = load i32, i32* @undef_keyword, align 4
  %50 = call i32 @match_keyword(i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = call %struct.TYPE_5__* (...) @parse_expr()
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %6, align 8
  br label %55

55:                                               ; preds = %53, %48
  br label %56

56:                                               ; preds = %55, %40
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32* @new_stmt_init(i32 %59, i8* %60, i32* %61, %struct.TYPE_5__* %62, i32 %63)
  store i32* %64, i32** %2, align 8
  br label %66

65:                                               ; preds = %28
  store i32* null, i32** %2, align 8
  br label %66

66:                                               ; preds = %65, %56, %38, %19, %17
  %67 = load i32*, i32** %2, align 8
  ret i32* %67
}

declare dso_local i64 @match_token(i32) #1

declare dso_local i32 @fatal_error_here(i8*) #1

declare dso_local i32* @new_stmt_init(i32, i8*, i32*, %struct.TYPE_5__*, i32) #1

declare dso_local %struct.TYPE_5__* @parse_expr(...) #1

declare dso_local i32* @parse_type(...) #1

declare dso_local i32 @match_keyword(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
