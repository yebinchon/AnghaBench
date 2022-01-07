; ModuleID = '/home/carl/AnghaBench/Cello/tests/extr_ptest.c_ptest_signal.c'
source_filename = "/home/carl/AnghaBench/Cello/tests/extr_ptest.c_ptest_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_passing = common dso_local global i64 0, align 8
@assert_err_buff = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"        %i. Division by Zero\0A\00", align 1
@assert_err_num = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"        %i. Illegal Instruction\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"        %i. Segmentation Fault\0A\00", align 1
@assert_err = common dso_local global i8* null, align 8
@RED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Failed! \0A\0A%s\0A\00", align 1
@DEFAULT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"    | Stopping Execution.\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ptest_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptest_signal(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i64 0, i64* @test_passing, align 8
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %19 [
    i32 130, label %4
    i32 129, label %9
    i32 128, label %14
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* @assert_err_buff, align 4
  %6 = load i32, i32* @assert_err_num, align 4
  %7 = add nsw i32 %6, 1
  %8 = call i32 @sprintf(i32 %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %7)
  br label %19

9:                                                ; preds = %1
  %10 = load i32, i32* @assert_err_buff, align 4
  %11 = load i32, i32* @assert_err_num, align 4
  %12 = add nsw i32 %11, 1
  %13 = call i32 @sprintf(i32 %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  br label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @assert_err_buff, align 4
  %16 = load i32, i32* @assert_err_num, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i32 @sprintf(i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %1, %14, %9, %4
  %20 = load i32, i32* @assert_err_num, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @assert_err_num, align 4
  %22 = load i8*, i8** @assert_err, align 8
  %23 = load i32, i32* @assert_err_buff, align 4
  %24 = call i32 @strcat(i8* %22, i32 %23)
  %25 = load i32, i32* @RED, align 4
  %26 = call i32 @pt_color(i32 %25)
  %27 = load i8*, i8** @assert_err, align 8
  %28 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* @DEFAULT, align 4
  %30 = call i32 @pt_color(i32 %29)
  %31 = call i32 @puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %32 = load i32, i32* @stdout, align 4
  %33 = call i32 @fflush(i32 %32)
  %34 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i32) #1

declare dso_local i32 @pt_color(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @fflush(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
