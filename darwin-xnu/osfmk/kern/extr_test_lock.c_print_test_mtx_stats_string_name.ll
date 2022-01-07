; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_test_lock.c_print_test_mtx_stats_string_name.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_test_lock.c_print_test_mtx_stats_string_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"TEST_MTX_LOCK_STATS\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"TEST_MTX_TRY_LOCK_STATS\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"TEST_MTX_LOCK_SPIN_STATS\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"TEST_MTX_LOCK_SPIN_ALWAYS_STATS\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"TEST_MTX_TRY_LOCK_SPIN_STATS\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"TEST_MTX_TRY_LOCK_SPIN_ALWAYS_STATS\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"TEST_MTX_UNLOCK_MTX_STATS\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"TEST_MTX_UNLOCK_SPIN_STATS\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @print_test_mtx_stats_string_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_test_mtx_stats_string_name(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %17 [
    i32 133, label %9
    i32 130, label %10
    i32 134, label %11
    i32 135, label %12
    i32 131, label %13
    i32 132, label %14
    i32 129, label %15
    i32 128, label %16
  ]

9:                                                ; preds = %3
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %18

10:                                               ; preds = %3
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %18

11:                                               ; preds = %3
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %18

12:                                               ; preds = %3
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %18

13:                                               ; preds = %3
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %18

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %18

15:                                               ; preds = %3
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  br label %18

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  br label %18

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %17, %16, %15, %14, %13, %12, %11, %10, %9
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @snprintf(i8* %19, i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %21)
  ret i32 %22
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
