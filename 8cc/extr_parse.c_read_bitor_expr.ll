; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_bitor_expr.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_bitor_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @read_bitor_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_bitor_expr() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32* (...) @read_bitxor_expr()
  store i32* %2, i32** %1, align 8
  br label %3

3:                                                ; preds = %6, %0
  %4 = call i64 @next_token(i8 signext 124)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @conv(i32* %7)
  %9 = call i32* (...) @read_bitxor_expr()
  %10 = call i32 @conv(i32* %9)
  %11 = call i32* @binop(i8 signext 124, i32 %8, i32 %10)
  store i32* %11, i32** %1, align 8
  br label %3

12:                                               ; preds = %3
  %13 = load i32*, i32** %1, align 8
  ret i32* %13
}

declare dso_local i32* @read_bitxor_expr(...) #1

declare dso_local i64 @next_token(i8 signext) #1

declare dso_local i32* @binop(i8 signext, i32, i32) #1

declare dso_local i32 @conv(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
