; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm.c_mz_stream_copy_stream_to_end.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm.c_mz_stream_copy_stream_to_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MZ_STREAM_ERROR = common dso_local global i64 0, align 8
@MZ_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_stream_copy_stream_to_end(i8* %0, i64 (i8*, i32*, i64)* %1, i8* %2, i64 (i8*, i32*, i32)* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64 (i8*, i32*, i64)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64 (i8*, i32*, i32)*, align 8
  %10 = alloca [16384 x i32], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 (i8*, i32*, i64)* %1, i64 (i8*, i32*, i64)** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 (i8*, i32*, i32)* %3, i64 (i8*, i32*, i32)** %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %13 = load i64 (i8*, i32*, i64)*, i64 (i8*, i32*, i64)** %7, align 8
  %14 = icmp eq i64 (i8*, i32*, i64)* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i64 (i8*, i32*, i64)* @mz_stream_write, i64 (i8*, i32*, i64)** %7, align 8
  br label %16

16:                                               ; preds = %15, %4
  %17 = load i64 (i8*, i32*, i32)*, i64 (i8*, i32*, i32)** %9, align 8
  %18 = icmp eq i64 (i8*, i32*, i32)* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i64 (i8*, i32*, i32)* @mz_stream_read, i64 (i8*, i32*, i32)** %9, align 8
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i64 (i8*, i32*, i32)*, i64 (i8*, i32*, i32)** %9, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds [16384 x i32], [16384 x i32]* %10, i64 0, i64 0
  %24 = call i64 %21(i8* %22, i32* %23, i32 65536)
  store i64 %24, i64* %11, align 8
  br label %25

25:                                               ; preds = %39, %20
  %26 = load i64, i64* %11, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = load i64 (i8*, i32*, i64)*, i64 (i8*, i32*, i64)** %7, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds [16384 x i32], [16384 x i32]* %10, i64 0, i64 0
  %32 = load i64, i64* %11, align 8
  %33 = call i64 %29(i8* %30, i32* %31, i64 %32)
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %11, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i64, i64* @MZ_STREAM_ERROR, align 8
  store i64 %38, i64* %5, align 8
  br label %51

39:                                               ; preds = %28
  %40 = load i64 (i8*, i32*, i32)*, i64 (i8*, i32*, i32)** %9, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds [16384 x i32], [16384 x i32]* %10, i64 0, i64 0
  %43 = call i64 %40(i8* %41, i32* %42, i32 65536)
  store i64 %43, i64* %11, align 8
  br label %25

44:                                               ; preds = %25
  %45 = load i64, i64* %11, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i64, i64* @MZ_STREAM_ERROR, align 8
  store i64 %48, i64* %5, align 8
  br label %51

49:                                               ; preds = %44
  %50 = load i64, i64* @MZ_OK, align 8
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %49, %47, %37
  %52 = load i64, i64* %5, align 8
  ret i64 %52
}

declare dso_local i64 @mz_stream_write(i8*, i32*, i64) #1

declare dso_local i64 @mz_stream_read(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
