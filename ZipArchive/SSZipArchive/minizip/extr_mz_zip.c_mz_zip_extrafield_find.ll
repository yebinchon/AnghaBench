; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip.c_mz_zip_extrafield_find.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip.c_mz_zip_extrafield_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MZ_OK = common dso_local global i64 0, align 8
@MZ_SEEK_CUR = common dso_local global i32 0, align 4
@MZ_EXIST_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_zip_extrafield_find(i8* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i64, i64* @MZ_OK, align 8
  store i64 %11, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %43, %3
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @mz_stream_read_uint16(i8* %13, i64* %9)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @MZ_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @mz_stream_read_uint16(i8* %19, i64* %10)
  store i64 %20, i64* %8, align 8
  br label %21

21:                                               ; preds = %18, %12
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @MZ_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %47

26:                                               ; preds = %21
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i64*, i64** %7, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i64, i64* %10, align 8
  %35 = load i64*, i64** %7, align 8
  store i64 %34, i64* %35, align 8
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i64, i64* @MZ_OK, align 8
  store i64 %37, i64* %4, align 8
  br label %49

38:                                               ; preds = %26
  %39 = load i8*, i8** %5, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i32, i32* @MZ_SEEK_CUR, align 4
  %42 = call i64 @mz_stream_seek(i8* %39, i64 %40, i32 %41)
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %38
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @MZ_OK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %12, label %47

47:                                               ; preds = %43, %25
  %48 = load i64, i64* @MZ_EXIST_ERROR, align 8
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %47, %36
  %50 = load i64, i64* %4, align 8
  ret i64 %50
}

declare dso_local i64 @mz_stream_read_uint16(i8*, i64*) #1

declare dso_local i64 @mz_stream_seek(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
