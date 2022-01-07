; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/network_tests/main/extr_net_suite.c_process_line.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/network_tests/main/extr_net_suite.c_process_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*)* @process_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @process_line(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %84, %2
  %9 = load i64, i64* %6, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %13, label %87

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %7, align 1
  %18 = load i8, i8* %7, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 45
  br i1 %20, label %25, label %21

21:                                               ; preds = %13
  %22 = load i8, i8* %7, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 32
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %13
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %5, align 8
  br label %83

28:                                               ; preds = %21
  %29 = load i8, i8* %7, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp sge i32 %30, 48
  br i1 %31, label %32, label %54

32:                                               ; preds = %28
  %33 = load i8, i8* %7, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sle i32 %34, 57
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load i8*, i8** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = mul nsw i32 %41, 16
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %39, align 1
  %44 = load i8, i8* %7, align 1
  %45 = sext i8 %44 to i32
  %46 = sub nsw i32 %45, 48
  %47 = load i8*, i8** %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, %46
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %49, align 1
  br label %82

54:                                               ; preds = %32, %28
  %55 = load i8, i8* %7, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp sge i32 %56, 97
  br i1 %57, label %58, label %81

58:                                               ; preds = %54
  %59 = load i8, i8* %7, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp sle i32 %60, 102
  br i1 %61, label %62, label %81

62:                                               ; preds = %58
  %63 = load i8*, i8** %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = mul nsw i32 %67, 16
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %65, align 1
  %70 = load i8, i8* %7, align 1
  %71 = sext i8 %70 to i32
  %72 = sub nsw i32 %71, 97
  %73 = add nsw i32 %72, 10
  %74 = load i8*, i8** %4, align 8
  %75 = load i64, i64* %5, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = add nsw i32 %78, %73
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %76, align 1
  br label %81

81:                                               ; preds = %62, %58, %54
  br label %82

82:                                               ; preds = %81, %36
  br label %83

83:                                               ; preds = %82, %25
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %6, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %6, align 8
  br label %8

87:                                               ; preds = %8
  %88 = load i64, i64* %6, align 8
  %89 = icmp ugt i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load i8*, i8** %3, align 8
  %92 = call i64 @strlen(i8* %91)
  %93 = icmp ugt i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i64, i64* %5, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %5, align 8
  br label %97

97:                                               ; preds = %94, %90, %87
  %98 = load i64, i64* %5, align 8
  ret i64 %98
}

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
