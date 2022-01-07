; ModuleID = '/home/carl/AnghaBench/Cello/tests/extr_ptest.c_pt_assert_run.c'
source_filename = "/home/carl/AnghaBench/Cello/tests/extr_ptest.c_pt_assert_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_asserts = common dso_local global i32 0, align 4
@test_passing = common dso_local global i32 0, align 4
@num_assert_passes = common dso_local global i32 0, align 4
@assert_err_buff = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"        %i. Assert [ %s ] (%s:%i)\0A\00", align 1
@assert_err_num = common dso_local global i32 0, align 4
@assert_err = common dso_local global i32 0, align 4
@num_assert_fails = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pt_assert_run(i32 %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* @num_asserts, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @num_asserts, align 4
  %13 = load i32, i32* @test_passing, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %15, %5
  %19 = phi i1 [ false, %5 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* @test_passing, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @num_assert_passes, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @num_assert_passes, align 4
  br label %41

26:                                               ; preds = %18
  %27 = load i32, i32* @assert_err_buff, align 4
  %28 = load i32, i32* @assert_err_num, align 4
  %29 = add nsw i32 %28, 1
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @sprintf(i32 %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %29, i8* %30, i8* %31, i32 %32)
  %34 = load i32, i32* @assert_err, align 4
  %35 = load i32, i32* @assert_err_buff, align 4
  %36 = call i32 @strcat(i32 %34, i32 %35)
  %37 = load i32, i32* @assert_err_num, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @assert_err_num, align 4
  %39 = load i32, i32* @num_assert_fails, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @num_assert_fails, align 4
  br label %41

41:                                               ; preds = %26, %23
  ret void
}

declare dso_local i32 @sprintf(i32, i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @strcat(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
