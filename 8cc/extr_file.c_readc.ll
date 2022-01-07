; ModuleID = '/home/carl/AnghaBench/8cc/extr_file.c_readc.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_file.c_readc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@files = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  br label %4

4:                                                ; preds = %28, %15, %0
  %5 = call i32 (...) @get()
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @EOF, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %4
  %10 = load i32, i32* @files, align 4
  %11 = call i32 @vec_len(i32 %10)
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  store i32 %14, i32* %1, align 4
  br label %33

15:                                               ; preds = %9
  %16 = load i32, i32* @files, align 4
  %17 = call i32 @vec_pop(i32 %16)
  %18 = call i32 @close_file(i32 %17)
  br label %4

19:                                               ; preds = %4
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 92
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4
  store i32 %23, i32* %1, align 4
  br label %33

24:                                               ; preds = %19
  %25 = call i32 (...) @get()
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %4

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @unreadc(i32 %30)
  %32 = load i32, i32* %2, align 4
  store i32 %32, i32* %1, align 4
  br label %33

33:                                               ; preds = %29, %22, %13
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @get(...) #1

declare dso_local i32 @vec_len(i32) #1

declare dso_local i32 @close_file(i32) #1

declare dso_local i32 @vec_pop(i32) #1

declare dso_local i32 @unreadc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
