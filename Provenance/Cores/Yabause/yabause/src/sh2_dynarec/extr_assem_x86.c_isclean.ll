; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_isclean.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_isclean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isclean(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = inttoptr i64 %5 to i32*
  store i32* %6, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 5
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 184
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %37

12:                                               ; preds = %1
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 10
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 187
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %37

18:                                               ; preds = %12
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 15
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 185
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %37

24:                                               ; preds = %18
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 20
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 232
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %37

30:                                               ; preds = %24
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 25
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 131
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %37

36:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %35, %29, %23, %17, %11
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
