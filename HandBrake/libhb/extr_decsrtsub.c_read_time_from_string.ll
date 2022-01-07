; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decsrtsub.c_read_time_from_string.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decsrtsub.c_read_time_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.start_and_end = type { i64, i64 }

@.str = private unnamed_addr constant [37 x i8] c"%ld:%ld:%ld,%ld --> %ld:%ld:%ld,%ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"%ld:%ld:%ld.%ld --> %ld:%ld:%ld.%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.start_and_end*)* @read_time_from_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_time_from_string(i8* %0, %struct.start_and_end* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.start_and_end*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.start_and_end* %1, %struct.start_and_end** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @sscanf(i8* %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64* %6, i64* %7, i64* %8, i64* %9, i64* %10, i64* %11, i64* %12, i64* %13)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = icmp ne i32 %17, 8
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @sscanf(i8* %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64* %6, i64* %7, i64* %8, i64* %9, i64* %10, i64* %11, i64* %12, i64* %13)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 8
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %57

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %2
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %8, align 8
  %29 = mul nsw i64 %28, 1000
  %30 = add nsw i64 %27, %29
  %31 = load i64, i64* %7, align 8
  %32 = mul nsw i64 %31, 60
  %33 = mul nsw i64 %32, 1000
  %34 = add nsw i64 %30, %33
  %35 = load i64, i64* %6, align 8
  %36 = mul nsw i64 %35, 60
  %37 = mul nsw i64 %36, 60
  %38 = mul nsw i64 %37, 1000
  %39 = add nsw i64 %34, %38
  %40 = load %struct.start_and_end*, %struct.start_and_end** %5, align 8
  %41 = getelementptr inbounds %struct.start_and_end, %struct.start_and_end* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %12, align 8
  %44 = mul nsw i64 %43, 1000
  %45 = add nsw i64 %42, %44
  %46 = load i64, i64* %11, align 8
  %47 = mul nsw i64 %46, 60
  %48 = mul nsw i64 %47, 1000
  %49 = add nsw i64 %45, %48
  %50 = load i64, i64* %10, align 8
  %51 = mul nsw i64 %50, 60
  %52 = mul nsw i64 %51, 60
  %53 = mul nsw i64 %52, 1000
  %54 = add nsw i64 %49, %53
  %55 = load %struct.start_and_end*, %struct.start_and_end** %5, align 8
  %56 = getelementptr inbounds %struct.start_and_end, %struct.start_and_end* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %26, %24
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
