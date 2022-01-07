; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_simple_stmt.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_simple_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@token = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @parse_simple_stmt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 1), align 4
  store i32 %5, i32* %1, align 4
  %6 = call i32* (...) @parse_expr()
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32* @parse_init_stmt(i32* %7)
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %0
  %12 = call i64 (...) @is_assign_op()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 0), align 4
  store i32 %15, i32* %4, align 4
  %16 = call i32 (...) @next_token()
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = call i32* (...) @parse_expr()
  %21 = call i32* @new_stmt_assign(i32 %17, i32 %18, i32* %19, i32* %20)
  store i32* %21, i32** %3, align 8
  br label %26

22:                                               ; preds = %11
  %23 = load i32, i32* %1, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = call i32* @new_stmt_expr(i32 %23, i32* %24)
  store i32* %25, i32** %3, align 8
  br label %26

26:                                               ; preds = %22, %14
  br label %27

27:                                               ; preds = %26, %0
  %28 = load i32*, i32** %3, align 8
  ret i32* %28
}

declare dso_local i32* @parse_expr(...) #1

declare dso_local i32* @parse_init_stmt(i32*) #1

declare dso_local i64 @is_assign_op(...) #1

declare dso_local i32 @next_token(...) #1

declare dso_local i32* @new_stmt_assign(i32, i32, i32*, i32*) #1

declare dso_local i32* @new_stmt_expr(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
