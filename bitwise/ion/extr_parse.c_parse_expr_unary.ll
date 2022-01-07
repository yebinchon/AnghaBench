; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_expr_unary.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_expr_unary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@token = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TOKEN_INC = common dso_local global i64 0, align 8
@TOKEN_DEC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @parse_expr_unary() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = call i64 (...) @is_unary_op()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 1), align 8
  store i32 %7, i32* %2, align 4
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 0), align 8
  store i64 %8, i64* %3, align 8
  %9 = call i32 (...) @next_token()
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @TOKEN_INC, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %6
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @TOKEN_DEC, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13, %6
  %18 = load i32, i32* %2, align 4
  %19 = load i64, i64* %3, align 8
  %20 = call i32* @parse_expr_unary()
  %21 = call i32* @new_expr_modify(i32 %18, i64 %19, i32 0, i32* %20)
  store i32* %21, i32** %1, align 8
  br label %29

22:                                               ; preds = %13
  %23 = load i32, i32* %2, align 4
  %24 = load i64, i64* %3, align 8
  %25 = call i32* @parse_expr_unary()
  %26 = call i32* @new_expr_unary(i32 %23, i64 %24, i32* %25)
  store i32* %26, i32** %1, align 8
  br label %29

27:                                               ; preds = %0
  %28 = call i32* (...) @parse_expr_base()
  store i32* %28, i32** %1, align 8
  br label %29

29:                                               ; preds = %27, %22, %17
  %30 = load i32*, i32** %1, align 8
  ret i32* %30
}

declare dso_local i64 @is_unary_op(...) #1

declare dso_local i32 @next_token(...) #1

declare dso_local i32* @new_expr_modify(i32, i64, i32, i32*) #1

declare dso_local i32* @new_expr_unary(i32, i64, i32*) #1

declare dso_local i32* @parse_expr_base(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
