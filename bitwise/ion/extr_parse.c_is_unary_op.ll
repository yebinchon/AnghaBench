; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_parse.c_is_unary_op.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_parse.c_is_unary_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOKEN_ADD = common dso_local global i32 0, align 4
@TOKEN_SUB = common dso_local global i32 0, align 4
@TOKEN_MUL = common dso_local global i32 0, align 4
@TOKEN_AND = common dso_local global i32 0, align 4
@TOKEN_NEG = common dso_local global i32 0, align 4
@TOKEN_NOT = common dso_local global i32 0, align 4
@TOKEN_INC = common dso_local global i32 0, align 4
@TOKEN_DEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_unary_op() #0 {
  %1 = load i32, i32* @TOKEN_ADD, align 4
  %2 = call i64 @is_token(i32 %1)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %32, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @TOKEN_SUB, align 4
  %6 = call i64 @is_token(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  %9 = load i32, i32* @TOKEN_MUL, align 4
  %10 = call i64 @is_token(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* @TOKEN_AND, align 4
  %14 = call i64 @is_token(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @TOKEN_NEG, align 4
  %18 = call i64 @is_token(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @TOKEN_NOT, align 4
  %22 = call i64 @is_token(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @TOKEN_INC, align 4
  %26 = call i64 @is_token(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @TOKEN_DEC, align 4
  %30 = call i64 @is_token(i32 %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %28, %24, %20, %16, %12, %8, %4, %0
  %33 = phi i1 [ true, %24 ], [ true, %20 ], [ true, %16 ], [ true, %12 ], [ true, %8 ], [ true, %4 ], [ true, %0 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local i64 @is_token(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
