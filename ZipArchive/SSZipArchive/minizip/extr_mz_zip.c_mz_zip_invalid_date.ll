; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip.c_mz_zip_invalid_date.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip.c_mz_zip_invalid_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm*)* @mz_zip_invalid_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mz_zip_invalid_date(%struct.tm* %0) #0 {
  %2 = alloca %struct.tm*, align 8
  store %struct.tm* %0, %struct.tm** %2, align 8
  %3 = load %struct.tm*, %struct.tm** %2, align 8
  %4 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 4
  %6 = icmp sle i32 0, %5
  br i1 %6, label %7, label %65

7:                                                ; preds = %1
  %8 = load %struct.tm*, %struct.tm** %2, align 8
  %9 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = icmp sle i32 %10, 207
  br i1 %11, label %12, label %65

12:                                               ; preds = %7
  %13 = load %struct.tm*, %struct.tm** %2, align 8
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = icmp sle i32 0, %15
  br i1 %16, label %17, label %65

17:                                               ; preds = %12
  %18 = load %struct.tm*, %struct.tm** %2, align 8
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %20, 11
  br i1 %21, label %22, label %65

22:                                               ; preds = %17
  %23 = load %struct.tm*, %struct.tm** %2, align 8
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = icmp sle i32 1, %25
  br i1 %26, label %27, label %65

27:                                               ; preds = %22
  %28 = load %struct.tm*, %struct.tm** %2, align 8
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp sle i32 %30, 31
  br i1 %31, label %32, label %65

32:                                               ; preds = %27
  %33 = load %struct.tm*, %struct.tm** %2, align 8
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp sle i32 0, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %32
  %38 = load %struct.tm*, %struct.tm** %2, align 8
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp sle i32 %40, 23
  br i1 %41, label %42, label %65

42:                                               ; preds = %37
  %43 = load %struct.tm*, %struct.tm** %2, align 8
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sle i32 0, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %42
  %48 = load %struct.tm*, %struct.tm** %2, align 8
  %49 = getelementptr inbounds %struct.tm, %struct.tm* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp sle i32 %50, 59
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = load %struct.tm*, %struct.tm** %2, align 8
  %54 = getelementptr inbounds %struct.tm, %struct.tm* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sle i32 0, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.tm*, %struct.tm** %2, align 8
  %59 = getelementptr inbounds %struct.tm, %struct.tm* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sle i32 %60, 59
  br label %62

62:                                               ; preds = %57, %52
  %63 = phi i1 [ false, %52 ], [ %61, %57 ]
  %64 = xor i1 %63, true
  br label %65

65:                                               ; preds = %62, %47, %42, %37, %32, %27, %22, %17, %12, %7, %1
  %66 = phi i1 [ true, %47 ], [ true, %42 ], [ true, %37 ], [ true, %32 ], [ true, %27 ], [ true, %22 ], [ true, %17 ], [ true, %12 ], [ true, %7 ], [ true, %1 ], [ %64, %62 ]
  %67 = zext i1 %66 to i32
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
