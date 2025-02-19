; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp_desc.c_valid_user_segment_selectors.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp_desc.c_valid_user_segment_selectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @valid_user_segment_selectors(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @valid_user_code_selector(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %6
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @valid_user_stack_selector(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @valid_user_data_selector(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @valid_user_data_selector(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i32, i32* %11, align 4
  %30 = call i64 @valid_user_data_selector(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %12, align 4
  %34 = call i64 @valid_user_data_selector(i32 %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %32, %28, %24, %20, %16, %6
  %37 = phi i1 [ false, %28 ], [ false, %24 ], [ false, %20 ], [ false, %16 ], [ false, %6 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  ret i32 %38
}

declare dso_local i64 @valid_user_code_selector(i32) #1

declare dso_local i64 @valid_user_stack_selector(i32) #1

declare dso_local i64 @valid_user_data_selector(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
