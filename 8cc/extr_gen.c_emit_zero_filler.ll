; ModuleID = '/home/carl/AnghaBench/8cc/extr_gen.c_emit_zero_filler.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_gen.c_emit_zero_filler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"movl $0, %d(#rbp)\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"movb $0, %d(#rbp)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @emit_zero_filler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_zero_filler(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @SAVE, align 4
  br label %6

6:                                                ; preds = %14, %2
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = sub nsw i32 %8, 4
  %10 = icmp sle i32 %7, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 4
  store i32 %16, i32* %3, align 4
  br label %6

17:                                               ; preds = %6
  br label %18

18:                                               ; preds = %25, %17
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %18

28:                                               ; preds = %18
  ret void
}

declare dso_local i32 @emit(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
