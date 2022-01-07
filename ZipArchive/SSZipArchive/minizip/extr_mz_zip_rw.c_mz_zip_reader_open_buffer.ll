; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_reader_open_buffer.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_reader_open_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MZ_OK = common dso_local global i64 0, align 8
@MZ_OPEN_MODE_CREATE = common dso_local global i32 0, align 4
@MZ_SEEK_SET = common dso_local global i32 0, align 4
@MZ_OPEN_MODE_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_zip_reader_open_buffer(i8* %0, i64* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %9, align 8
  %13 = load i64, i64* @MZ_OK, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @mz_zip_reader_close(i8* %14)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @mz_stream_mem_create(i32* %17)
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @mz_stream_mem_set_grow_size(i32 %24, i64 %25)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MZ_OPEN_MODE_CREATE, align 4
  %31 = call i32 @mz_stream_mem_open(i32 %29, i32* null, i32 %30)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64*, i64** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @mz_stream_mem_write(i32 %34, i64* %35, i64 %36)
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MZ_SEEK_SET, align 4
  %42 = call i32 @mz_stream_mem_seek(i32 %40, i32 0, i32 %41)
  br label %55

43:                                               ; preds = %4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MZ_OPEN_MODE_READ, align 4
  %48 = call i32 @mz_stream_mem_open(i32 %46, i32* null, i32 %47)
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64*, i64** %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @mz_stream_mem_set_buffer(i32 %51, i64* %52, i64 %53)
  br label %55

55:                                               ; preds = %43, %21
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* @MZ_OK, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i8*, i8** %5, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @mz_zip_reader_open(i8* %60, i32 %63)
  store i64 %64, i64* %10, align 8
  br label %65

65:                                               ; preds = %59, %55
  %66 = load i64, i64* %10, align 8
  ret i64 %66
}

declare dso_local i32 @mz_zip_reader_close(i8*) #1

declare dso_local i32 @mz_stream_mem_create(i32*) #1

declare dso_local i32 @mz_stream_mem_set_grow_size(i32, i64) #1

declare dso_local i32 @mz_stream_mem_open(i32, i32*, i32) #1

declare dso_local i32 @mz_stream_mem_write(i32, i64*, i64) #1

declare dso_local i32 @mz_stream_mem_seek(i32, i32, i32) #1

declare dso_local i32 @mz_stream_mem_set_buffer(i32, i64*, i64) #1

declare dso_local i64 @mz_zip_reader_open(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
