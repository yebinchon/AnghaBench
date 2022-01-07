; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm.c_mz_stream_copy_stream.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm.c_mz_stream_copy_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MZ_STREAM_ERROR = common dso_local global i64 0, align 8
@MZ_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_stream_copy_stream(i8* %0, i64 (i8*, i32*, i64)* %1, i8* %2, i64 (i8*, i32*, i64)* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64 (i8*, i32*, i64)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64 (i8*, i32*, i64)*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [16384 x i32], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 (i8*, i32*, i64)* %1, i64 (i8*, i32*, i64)** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 (i8*, i32*, i64)* %3, i64 (i8*, i32*, i64)** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %16 = load i64 (i8*, i32*, i64)*, i64 (i8*, i32*, i64)** %8, align 8
  %17 = icmp eq i64 (i8*, i32*, i64)* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i64 (i8*, i32*, i64)* @mz_stream_write, i64 (i8*, i32*, i64)** %8, align 8
  br label %19

19:                                               ; preds = %18, %5
  %20 = load i64 (i8*, i32*, i64)*, i64 (i8*, i32*, i64)** %10, align 8
  %21 = icmp eq i64 (i8*, i32*, i64)* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i64 (i8*, i32*, i64)* @mz_stream_read, i64 (i8*, i32*, i64)** %10, align 8
  br label %23

23:                                               ; preds = %22, %19
  br label %24

24:                                               ; preds = %53, %23
  %25 = load i64, i64* %11, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %24
  %28 = load i64, i64* %11, align 8
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* %13, align 8
  %30 = icmp sgt i64 %29, 65536
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i64 65536, i64* %13, align 8
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i64 (i8*, i32*, i64)*, i64 (i8*, i32*, i64)** %10, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = getelementptr inbounds [16384 x i32], [16384 x i32]* %12, i64 0, i64 0
  %36 = load i64, i64* %13, align 8
  %37 = call i64 %33(i8* %34, i32* %35, i64 %36)
  store i64 %37, i64* %14, align 8
  %38 = load i64, i64* %14, align 8
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i64, i64* @MZ_STREAM_ERROR, align 8
  store i64 %41, i64* %6, align 8
  br label %59

42:                                               ; preds = %32
  %43 = load i64 (i8*, i32*, i64)*, i64 (i8*, i32*, i64)** %8, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds [16384 x i32], [16384 x i32]* %12, i64 0, i64 0
  %46 = load i64, i64* %14, align 8
  %47 = call i64 %43(i8* %44, i32* %45, i64 %46)
  store i64 %47, i64* %15, align 8
  %48 = load i64, i64* %15, align 8
  %49 = load i64, i64* %14, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i64, i64* @MZ_STREAM_ERROR, align 8
  store i64 %52, i64* %6, align 8
  br label %59

53:                                               ; preds = %42
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* %11, align 8
  %56 = sub nsw i64 %55, %54
  store i64 %56, i64* %11, align 8
  br label %24

57:                                               ; preds = %24
  %58 = load i64, i64* @MZ_OK, align 8
  store i64 %58, i64* %6, align 8
  br label %59

59:                                               ; preds = %57, %51, %40
  %60 = load i64, i64* %6, align 8
  ret i64 %60
}

declare dso_local i64 @mz_stream_write(i8*, i32*, i64) #1

declare dso_local i64 @mz_stream_read(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
