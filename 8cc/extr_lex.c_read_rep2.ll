; ModuleID = '/home/carl/AnghaBench/8cc/extr_lex.c_read_rep2.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_lex.c_read_rep2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8, i32, i8, i32, i8)* @read_rep2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_rep2(i8 signext %0, i32 %1, i8 signext %2, i32 %3, i8 signext %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i8 %0, i8* %7, align 1
  store i32 %1, i32* %8, align 4
  store i8 %2, i8* %9, align 1
  store i32 %3, i32* %10, align 4
  store i8 %4, i8* %11, align 1
  %12 = load i8, i8* %7, align 1
  %13 = call i64 @next(i8 signext %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i32, i32* %8, align 4
  %17 = call i32* @make_keyword(i32 %16)
  store i32* %17, i32** %6, align 8
  br label %30

18:                                               ; preds = %5
  %19 = load i8, i8* %9, align 1
  %20 = call i64 @next(i8 signext %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* %10, align 4
  br label %27

24:                                               ; preds = %18
  %25 = load i8, i8* %11, align 1
  %26 = sext i8 %25 to i32
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi i32 [ %23, %22 ], [ %26, %24 ]
  %29 = call i32* @make_keyword(i32 %28)
  store i32* %29, i32** %6, align 8
  br label %30

30:                                               ; preds = %27, %15
  %31 = load i32*, i32** %6, align 8
  ret i32* %31
}

declare dso_local i64 @next(i8 signext) #1

declare dso_local i32* @make_keyword(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
