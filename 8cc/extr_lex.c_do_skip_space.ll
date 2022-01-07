; ModuleID = '/home/carl/AnghaBench/8cc/extr_lex.c_do_skip_space.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_lex.c_do_skip_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @do_skip_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_skip_space() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @readc()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @EOF, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %30

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4
  %10 = call i64 @iswhitespace(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 1, i32* %1, align 4
  br label %30

13:                                               ; preds = %8
  %14 = load i32, i32* %2, align 4
  %15 = icmp eq i32 %14, 47
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = call i64 @next(i8 signext 42)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 (...) @skip_block_comment()
  store i32 1, i32* %1, align 4
  br label %30

21:                                               ; preds = %16
  %22 = call i64 @next(i8 signext 47)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 (...) @skip_line()
  store i32 1, i32* %1, align 4
  br label %30

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %13
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @unreadc(i32 %28)
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %27, %24, %19, %12, %7
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local i32 @readc(...) #1

declare dso_local i64 @iswhitespace(i32) #1

declare dso_local i64 @next(i8 signext) #1

declare dso_local i32 @skip_block_comment(...) #1

declare dso_local i32 @skip_line(...) #1

declare dso_local i32 @unreadc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
