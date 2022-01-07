; ModuleID = '/home/carl/AnghaBench/esp-idf/components/espcoredump/test/extr_test_core_dump.c_recur_func.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/espcoredump/test/extr_test_core_dump.c_recur_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@recur_func.rec_cnt = internal global i32 0, align 4
@crash_flags = common dso_local global i32 0, align 4
@TCI_UNALIGN_PTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Write to unaligned address 0x%lx.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @recur_func() #0 {
  %1 = alloca i16*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i16* inttoptr (i64 5 to i16*), i16** %1, align 8
  store volatile i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @recur_func.rec_cnt, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @recur_func.rec_cnt, align 4
  %6 = icmp sgt i32 %4, 2
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %32

8:                                                ; preds = %0
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %19, %8
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load volatile i32, i32* %2, align 4
  %14 = add nsw i32 %13, 1
  store volatile i32 %14, i32* %2, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  call void @recur_func()
  br label %22

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %9

22:                                               ; preds = %17, %9
  %23 = load i32, i32* @crash_flags, align 4
  %24 = load i32, i32* @TCI_UNALIGN_PTR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i16*, i16** %1, align 8
  %29 = ptrtoint i16* %28 to i64
  %30 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i16*, i16** %1, align 8
  store i16 -8531, i16* %31, align 2
  br label %32

32:                                               ; preds = %7, %27, %22
  ret void
}

declare dso_local i32 @printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
