; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_parsedate.c_my_timegm.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_parsedate.c_my_timegm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.my_tm = type { i32, i32, i32, i32, i32, i32 }

@my_timegm.month_days_cumulative = internal constant [12 x i32] [i32 0, i32 31, i32 59, i32 90, i32 120, i32 151, i32 181, i32 212, i32 243, i32 273, i32 304, i32 334], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.my_tm*, i32*)* @my_timegm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @my_timegm(%struct.my_tm* %0, i32* %1) #0 {
  %3 = alloca %struct.my_tm*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.my_tm* %0, %struct.my_tm** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.my_tm*, %struct.my_tm** %3, align 8
  %9 = getelementptr inbounds %struct.my_tm, %struct.my_tm* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.my_tm*, %struct.my_tm** %3, align 8
  %12 = getelementptr inbounds %struct.my_tm, %struct.my_tm* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 11, %17
  %19 = sdiv i32 %18, 12
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 11, %22
  %24 = srem i32 %23, 12
  %25 = sub nsw i32 11, %24
  store i32 %25, i32* %5, align 4
  br label %37

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = icmp sge i32 %27, 12
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = sdiv i32 %30, 12
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = srem i32 %34, 12
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %29, %26
  br label %37

37:                                               ; preds = %36, %16
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.my_tm*, %struct.my_tm** %3, align 8
  %40 = getelementptr inbounds %struct.my_tm, %struct.my_tm* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sle i32 %41, 1
  %43 = zext i1 %42 to i32
  %44 = sub nsw i32 %38, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = sdiv i32 %45, 4
  %47 = load i32, i32* %7, align 4
  %48 = sdiv i32 %47, 100
  %49 = sub nsw i32 %46, %48
  %50 = load i32, i32* %7, align 4
  %51 = sdiv i32 %50, 400
  %52 = add nsw i32 %49, %51
  %53 = sub nsw i32 %52, 492
  %54 = add nsw i32 %53, 19
  %55 = sub nsw i32 %54, 4
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %56, 1970
  %58 = mul nsw i32 %57, 365
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [12 x i32], [12 x i32]* @my_timegm.month_days_cumulative, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %60, %64
  %66 = load %struct.my_tm*, %struct.my_tm** %3, align 8
  %67 = getelementptr inbounds %struct.my_tm, %struct.my_tm* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %65, %68
  %70 = sub nsw i32 %69, 1
  %71 = mul nsw i32 %70, 24
  %72 = load %struct.my_tm*, %struct.my_tm** %3, align 8
  %73 = getelementptr inbounds %struct.my_tm, %struct.my_tm* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %71, %74
  %76 = mul nsw i32 %75, 60
  %77 = load %struct.my_tm*, %struct.my_tm** %3, align 8
  %78 = getelementptr inbounds %struct.my_tm, %struct.my_tm* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %76, %79
  %81 = mul nsw i32 %80, 60
  %82 = load %struct.my_tm*, %struct.my_tm** %3, align 8
  %83 = getelementptr inbounds %struct.my_tm, %struct.my_tm* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %81, %84
  %86 = load i32*, i32** %4, align 8
  store i32 %85, i32* %86, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
