; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_perf_exit_proc.c_main.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_perf_exit_proc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @strtoul(i8* %14, i32* null, i32 10)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %11, %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 2
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 2
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strtoul(i8* %23, i32* null, i32 10)
  store i64 %24, i64* %8, align 8
  br label %25

25:                                               ; preds = %20, %17
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @allocate_and_wire_memory(i64 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %40

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @run_additional_threads(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %40

39:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %37, %30
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @allocate_and_wire_memory(i64) #1

declare dso_local i32 @run_additional_threads(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
