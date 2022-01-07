; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm.c_mz_stream_read_value.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm.c_mz_stream_read_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MZ_STREAM_ERROR = common dso_local global i64 0, align 8
@MZ_END_OF_STREAM = common dso_local global i64 0, align 8
@MZ_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64*, i64)* @mz_stream_read_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mz_stream_read_value(i8* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [8 x i64], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load i64*, i64** %6, align 8
  store i64 0, i64* %11, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 0
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @mz_stream_read(i8* %12, i64* %13, i64 %14)
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %19

19:                                               ; preds = %32, %18
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %10, align 8
  %28 = shl i64 %26, %27
  %29 = load i64*, i64** %6, align 8
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, %28
  store i64 %31, i64* %29, align 8
  br label %32

32:                                               ; preds = %23
  %33 = load i64, i64* %9, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = add nsw i64 %35, 8
  store i64 %36, i64* %10, align 8
  br label %19

37:                                               ; preds = %19
  br label %46

38:                                               ; preds = %3
  %39 = load i8*, i8** %5, align 8
  %40 = call i64 @mz_stream_error(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i64, i64* @MZ_STREAM_ERROR, align 8
  store i64 %43, i64* %4, align 8
  br label %48

44:                                               ; preds = %38
  %45 = load i64, i64* @MZ_END_OF_STREAM, align 8
  store i64 %45, i64* %4, align 8
  br label %48

46:                                               ; preds = %37
  %47 = load i64, i64* @MZ_OK, align 8
  store i64 %47, i64* %4, align 8
  br label %48

48:                                               ; preds = %46, %44, %42
  %49 = load i64, i64* %4, align 8
  ret i64 %49
}

declare dso_local i64 @mz_stream_read(i8*, i64*, i64) #1

declare dso_local i64 @mz_stream_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
