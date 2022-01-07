; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip.c_mz_zip_tm_to_dosdate.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip.c_mz_zip_tm_to_dosdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mz_zip_tm_to_dosdate(%struct.tm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tm*, align 8
  %4 = alloca %struct.tm, align 8
  store %struct.tm* %0, %struct.tm** %3, align 8
  %5 = load %struct.tm*, %struct.tm** %3, align 8
  %6 = call i32 @memcpy(%struct.tm* %4, %struct.tm* %5, i32 48)
  %7 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sge i32 %8, 1980
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 1980
  store i32 %13, i32* %11, align 8
  br label %27

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %16, 80
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 80
  store i32 %21, i32* %19, align 8
  br label %26

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 20
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %22, %18
  br label %27

27:                                               ; preds = %26, %10
  %28 = call i64 @mz_zip_invalid_date(%struct.tm* %4)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %61

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = add nsw i32 %37, 1
  %39 = mul nsw i32 32, %38
  %40 = add nsw i32 %34, %39
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 512, %42
  %44 = add nsw i32 %40, %43
  %45 = shl i32 %44, 16
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = sdiv i32 %48, 2
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = mul nsw i32 32, %52
  %54 = add nsw i32 %49, %53
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = mul nsw i32 2048, %57
  %59 = add nsw i32 %54, %58
  %60 = or i32 %45, %59
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %31, %30
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @memcpy(%struct.tm*, %struct.tm*, i32) #1

declare dso_local i64 @mz_zip_invalid_date(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
