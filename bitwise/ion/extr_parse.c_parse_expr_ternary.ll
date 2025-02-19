; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_expr_ternary.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_expr_ternary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@token = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TOKEN_QUESTION = common dso_local global i32 0, align 4
@TOKEN_COLON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @parse_expr_ternary() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 0), align 4
  store i32 %5, i32* %1, align 4
  %6 = call i32* (...) @parse_expr_or()
  store i32* %6, i32** %2, align 8
  %7 = load i32, i32* @TOKEN_QUESTION, align 4
  %8 = call i64 @match_token(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %0
  %11 = call i32* @parse_expr_ternary()
  store i32* %11, i32** %3, align 8
  %12 = load i32, i32* @TOKEN_COLON, align 4
  %13 = call i32 @expect_token(i32 %12)
  %14 = call i32* @parse_expr_ternary()
  store i32* %14, i32** %4, align 8
  %15 = load i32, i32* %1, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32* @new_expr_ternary(i32 %15, i32* %16, i32* %17, i32* %18)
  store i32* %19, i32** %2, align 8
  br label %20

20:                                               ; preds = %10, %0
  %21 = load i32*, i32** %2, align 8
  ret i32* %21
}

declare dso_local i32* @parse_expr_or(...) #1

declare dso_local i64 @match_token(i32) #1

declare dso_local i32 @expect_token(i32) #1

declare dso_local i32* @new_expr_ternary(i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
