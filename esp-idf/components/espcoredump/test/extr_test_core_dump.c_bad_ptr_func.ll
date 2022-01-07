; ModuleID = '/home/carl/AnghaBench/esp-idf/components/espcoredump/test/extr_test_core_dump.c_bad_ptr_func.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/espcoredump/test/extr_test_core_dump.c_bad_ptr_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crash_flags = common dso_local global i32 0, align 4
@TCI_NULL_PTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Write to bad address 0x%lx.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad_ptr_func() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i64* null, i64** %1, align 8
  store volatile i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %10, %0
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 1000
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = load volatile i32, i32* %2, align 4
  %9 = add nsw i32 %8, 1
  store volatile i32 %9, i32* %2, align 4
  br label %10

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %3, align 4
  br label %4

13:                                               ; preds = %4
  %14 = load i32, i32* @crash_flags, align 4
  %15 = load i32, i32* @TCI_NULL_PTR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i64*, i64** %1, align 8
  %20 = ptrtoint i64* %19 to i64
  %21 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i64*, i64** %1, align 8
  store i64 3735928559, i64* %22, align 8
  br label %23

23:                                               ; preds = %18, %13
  ret void
}

declare dso_local i32 @printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
