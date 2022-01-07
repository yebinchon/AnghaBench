; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_aggregate.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_aggregate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@token = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TOKEN_LBRACE = common dso_local global i32 0, align 4
@TOKEN_RBRACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @parse_aggregate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 0), align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @TOKEN_LBRACE, align 4
  %7 = call i32 @expect_token(i32 %6)
  store i32* null, i32** %4, align 8
  br label %8

8:                                                ; preds = %18, %1
  %9 = call i32 (...) @is_token_eof()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* @TOKEN_RBRACE, align 4
  %13 = call i32 @is_token(i32 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %11, %8
  %17 = phi i1 [ false, %8 ], [ %15, %11 ]
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 (...) @parse_decl_aggregate_item()
  %21 = call i32 @buf_push(i32* %19, i32 %20)
  br label %8

22:                                               ; preds = %16
  %23 = load i32, i32* @TOKEN_RBRACE, align 4
  %24 = call i32 @expect_token(i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %2, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @buf_len(i32* %28)
  %30 = call i32* @new_aggregate(i32 %25, i32 %26, i32* %27, i32 %29)
  ret i32* %30
}

declare dso_local i32 @expect_token(i32) #1

declare dso_local i32 @is_token_eof(...) #1

declare dso_local i32 @is_token(i32) #1

declare dso_local i32 @buf_push(i32*, i32) #1

declare dso_local i32 @parse_decl_aggregate_item(...) #1

declare dso_local i32* @new_aggregate(i32, i32, i32*, i32) #1

declare dso_local i32 @buf_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
