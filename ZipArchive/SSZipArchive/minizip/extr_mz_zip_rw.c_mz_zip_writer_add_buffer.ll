; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_writer_add_buffer.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_writer_add_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MZ_OK = common dso_local global i64 0, align 8
@MZ_PARAM_ERROR = common dso_local global i64 0, align 8
@MZ_OPEN_MODE_READ = common dso_local global i32 0, align 4
@mz_stream_mem_read = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_zip_writer_add_buffer(i8* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* null, i8** %10, align 8
  %12 = load i64, i64* @MZ_OK, align 8
  store i64 %12, i64* %11, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @mz_zip_writer_is_open(i8* %13)
  %15 = load i64, i64* @MZ_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %18, i64* %5, align 8
  br label %45

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %23, i64* %5, align 8
  br label %45

24:                                               ; preds = %19
  %25 = call i32 @mz_stream_mem_create(i8** %10)
  %26 = load i8*, i8** %10, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @mz_stream_mem_set_buffer(i8* %26, i8* %27, i64 %28)
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* @MZ_OPEN_MODE_READ, align 4
  %32 = call i64 @mz_stream_mem_open(i8* %30, i32* null, i32 %31)
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @MZ_OK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %24
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i32, i32* @mz_stream_mem_read, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = call i64 @mz_zip_writer_add_info(i8* %37, i8* %38, i32 %39, i32* %40)
  store i64 %41, i64* %11, align 8
  br label %42

42:                                               ; preds = %36, %24
  %43 = call i32 @mz_stream_mem_delete(i8** %10)
  %44 = load i64, i64* %11, align 8
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %42, %22, %17
  %46 = load i64, i64* %5, align 8
  ret i64 %46
}

declare dso_local i64 @mz_zip_writer_is_open(i8*) #1

declare dso_local i32 @mz_stream_mem_create(i8**) #1

declare dso_local i32 @mz_stream_mem_set_buffer(i8*, i8*, i64) #1

declare dso_local i64 @mz_stream_mem_open(i8*, i32*, i32) #1

declare dso_local i64 @mz_zip_writer_add_info(i8*, i8*, i32, i32*) #1

declare dso_local i32 @mz_stream_mem_delete(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
