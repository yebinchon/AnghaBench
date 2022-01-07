; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Internat.c_GetUniType.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Internat.c_GetUniType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetUniType(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call i64 (...) @IsBigEndian()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = getelementptr inbounds i32, i32* %3, i64 2
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = getelementptr inbounds i32, i32* %3, i64 3
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  br label %18

13:                                               ; preds = %1
  %14 = getelementptr inbounds i32, i32* %3, i64 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = getelementptr inbounds i32, i32* %3, i64 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %13, %8
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = icmp sle i32 %22, 127
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %32

25:                                               ; preds = %21
  store i32 2, i32* %2, align 4
  br label %32

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 248
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 2, i32* %2, align 4
  br label %32

31:                                               ; preds = %26
  store i32 3, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %30, %25, %24
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @IsBigEndian(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
