; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_stmt_block.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_stmt_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@token = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TOKEN_LBRACE = common dso_local global i32 0, align 4
@TOKEN_RBRACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_stmt_block() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32**, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 0), align 4
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @TOKEN_LBRACE, align 4
  %5 = call i32 @expect_token(i32 %4)
  store i32** null, i32*** %2, align 8
  br label %6

6:                                                ; preds = %16, %0
  %7 = call i32 (...) @is_token_eof()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* @TOKEN_RBRACE, align 4
  %11 = call i32 @is_token(i32 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %9, %6
  %15 = phi i1 [ false, %6 ], [ %13, %9 ]
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = load i32**, i32*** %2, align 8
  %18 = call i32 (...) @parse_stmt()
  %19 = call i32 @buf_push(i32** %17, i32 %18)
  br label %6

20:                                               ; preds = %14
  %21 = load i32, i32* @TOKEN_RBRACE, align 4
  %22 = call i32 @expect_token(i32 %21)
  %23 = load i32, i32* %1, align 4
  %24 = load i32**, i32*** %2, align 8
  %25 = load i32**, i32*** %2, align 8
  %26 = call i32 @buf_len(i32** %25)
  %27 = call i32 @new_stmt_list(i32 %23, i32** %24, i32 %26)
  ret i32 %27
}

declare dso_local i32 @expect_token(i32) #1

declare dso_local i32 @is_token_eof(...) #1

declare dso_local i32 @is_token(i32) #1

declare dso_local i32 @buf_push(i32**, i32) #1

declare dso_local i32 @parse_stmt(...) #1

declare dso_local i32 @new_stmt_list(i32, i32**, i32) #1

declare dso_local i32 @buf_len(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
