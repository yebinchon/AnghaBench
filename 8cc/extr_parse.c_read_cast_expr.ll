; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_cast_expr.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_cast_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OP_CAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @read_cast_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_cast_expr() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = call i32* (...) @get()
  store i32* %5, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i64 @is_keyword(i32* %6, i8 signext 40)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %0
  %10 = call i32* (...) @peek()
  %11 = call i64 @is_type(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = call i32* (...) @read_cast_type()
  store i32* %14, i32** %3, align 8
  %15 = call i32 @expect(i8 signext 41)
  %16 = call i32* (...) @peek()
  %17 = call i64 @is_keyword(i32* %16, i8 signext 123)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load i32*, i32** %3, align 8
  %21 = call i32* @read_compound_literal(i32* %20)
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32* @read_postfix_expr_tail(i32* %22)
  store i32* %23, i32** %1, align 8
  br label %33

24:                                               ; preds = %13
  %25 = load i32, i32* @OP_CAST, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = call i32* @read_cast_expr()
  %28 = call i32* @ast_uop(i32 %25, i32* %26, i32* %27)
  store i32* %28, i32** %1, align 8
  br label %33

29:                                               ; preds = %9, %0
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @unget_token(i32* %30)
  %32 = call i32* (...) @read_unary_expr()
  store i32* %32, i32** %1, align 8
  br label %33

33:                                               ; preds = %29, %24, %19
  %34 = load i32*, i32** %1, align 8
  ret i32* %34
}

declare dso_local i32* @get(...) #1

declare dso_local i64 @is_keyword(i32*, i8 signext) #1

declare dso_local i64 @is_type(i32*) #1

declare dso_local i32* @peek(...) #1

declare dso_local i32* @read_cast_type(...) #1

declare dso_local i32 @expect(i8 signext) #1

declare dso_local i32* @read_compound_literal(i32*) #1

declare dso_local i32* @read_postfix_expr_tail(i32*) #1

declare dso_local i32* @ast_uop(i32, i32*, i32*) #1

declare dso_local i32 @unget_token(i32*) #1

declare dso_local i32* @read_unary_expr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
