; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_reader_open_file_in_memory.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_reader_open_file_in_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MZ_OPEN_MODE_READ = common dso_local global i32 0, align 4
@MZ_OK = common dso_local global i64 0, align 8
@MZ_SEEK_END = common dso_local global i32 0, align 4
@MZ_SEEK_SET = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i64 0, align 8
@MZ_MEM_ERROR = common dso_local global i64 0, align 8
@MZ_OPEN_MODE_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_zip_reader_open_file_in_memory(i8* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %6, align 8
  store i8* null, i8** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @mz_zip_reader_close(i8* %12)
  %14 = call i32 @mz_stream_os_create(i8** %7)
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* @MZ_OPEN_MODE_READ, align 4
  %18 = call i64 @mz_stream_os_open(i8* %15, i8* %16, i32 %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @MZ_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = call i32 @mz_stream_os_delete(i8** %7)
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @mz_zip_reader_close(i8* %24)
  %26 = load i64, i64* %9, align 8
  store i64 %26, i64* %3, align 8
  br label %90

27:                                               ; preds = %2
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* @MZ_SEEK_END, align 4
  %30 = call i32 @mz_stream_os_seek(i8* %28, i32 0, i32 %29)
  %31 = load i8*, i8** %7, align 8
  %32 = call i64 @mz_stream_os_tell(i8* %31)
  store i64 %32, i64* %8, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* @MZ_SEEK_SET, align 4
  %35 = call i32 @mz_stream_os_seek(i8* %33, i32 0, i32 %34)
  %36 = load i64, i64* %8, align 8
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %27
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @UINT32_MAX, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38, %27
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @mz_stream_os_close(i8* %43)
  %45 = call i32 @mz_stream_os_delete(i8** %7)
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @mz_zip_reader_close(i8* %46)
  %48 = load i64, i64* @MZ_MEM_ERROR, align 8
  store i64 %48, i64* %3, align 8
  br label %90

49:                                               ; preds = %38
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @mz_stream_mem_create(i32* %51)
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @mz_stream_mem_set_grow_size(i32 %55, i64 %56)
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MZ_OPEN_MODE_CREATE, align 4
  %62 = call i32 @mz_stream_mem_open(i32 %60, i32* null, i32 %61)
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = call i64 @mz_stream_copy(i32 %65, i8* %66, i64 %67)
  store i64 %68, i64* %9, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @mz_stream_os_close(i8* %69)
  %71 = call i32 @mz_stream_os_delete(i8** %7)
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* @MZ_OK, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %49
  %76 = load i8*, i8** %4, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @mz_zip_reader_open(i8* %76, i32 %79)
  store i64 %80, i64* %9, align 8
  br label %81

81:                                               ; preds = %75, %49
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* @MZ_OK, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @mz_zip_reader_close(i8* %86)
  br label %88

88:                                               ; preds = %85, %81
  %89 = load i64, i64* %9, align 8
  store i64 %89, i64* %3, align 8
  br label %90

90:                                               ; preds = %88, %42, %22
  %91 = load i64, i64* %3, align 8
  ret i64 %91
}

declare dso_local i32 @mz_zip_reader_close(i8*) #1

declare dso_local i32 @mz_stream_os_create(i8**) #1

declare dso_local i64 @mz_stream_os_open(i8*, i8*, i32) #1

declare dso_local i32 @mz_stream_os_delete(i8**) #1

declare dso_local i32 @mz_stream_os_seek(i8*, i32, i32) #1

declare dso_local i64 @mz_stream_os_tell(i8*) #1

declare dso_local i32 @mz_stream_os_close(i8*) #1

declare dso_local i32 @mz_stream_mem_create(i32*) #1

declare dso_local i32 @mz_stream_mem_set_grow_size(i32, i64) #1

declare dso_local i32 @mz_stream_mem_open(i32, i32*, i32) #1

declare dso_local i64 @mz_stream_copy(i32, i8*, i64) #1

declare dso_local i64 @mz_zip_reader_open(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
