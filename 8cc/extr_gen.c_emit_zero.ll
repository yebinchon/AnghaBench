; ModuleID = '/home/carl/AnghaBench/8cc/extr_gen.c_emit_zero.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_gen.c_emit_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c".quad 0\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c".long 0\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c".byte 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @emit_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_zero(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @SAVE, align 4
  br label %4

4:                                                ; preds = %9, %1
  %5 = load i32, i32* %2, align 4
  %6 = icmp sge i32 %5, 8
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = call i32 @emit(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7
  %10 = load i32, i32* %2, align 4
  %11 = sub nsw i32 %10, 8
  store i32 %11, i32* %2, align 4
  br label %4

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %18, %12
  %14 = load i32, i32* %2, align 4
  %15 = icmp sge i32 %14, 4
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = call i32 @emit(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16
  %19 = load i32, i32* %2, align 4
  %20 = sub nsw i32 %19, 4
  store i32 %20, i32* %2, align 4
  br label %13

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %27, %21
  %23 = load i32, i32* %2, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = call i32 @emit(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %2, align 4
  br label %22

30:                                               ; preds = %22
  ret void
}

declare dso_local i32 @emit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
