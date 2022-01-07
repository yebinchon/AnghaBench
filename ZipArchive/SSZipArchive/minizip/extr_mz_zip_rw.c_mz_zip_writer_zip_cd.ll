; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_writer_zip_cd.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_writer_zip_cd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i64, i32, i32, i32, i32 }

@MZ_OK = common dso_local global i64 0, align 8
@MZ_SEEK_END = common dso_local global i32 0, align 4
@MZ_SEEK_SET = common dso_local global i32 0, align 4
@MZ_ZIP_CD_FILENAME = common dso_local global i32 0, align 4
@MZ_VERSION_MADEBY = common dso_local global i32 0, align 4
@MZ_ZIP_FLAG_UTF8 = common dso_local global i32 0, align 4
@MZ_ZIP_FLAG_ENCRYPTED = common dso_local global i32 0, align 4
@MZ_OPEN_MODE_CREATE = common dso_local global i32 0, align 4
@MZ_ZIP_EXTENSION_CDCD = common dso_local global i32 0, align 4
@mz_zip_writer_entry_write = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_zip_writer_zip_cd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %13 = load i64, i64* @MZ_OK, align 8
  store i64 %13, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %14 = call i32 @memset(%struct.TYPE_7__* %4, i32 0, i32 40)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mz_zip_get_number_entry(i32 %17, i32* %5)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mz_zip_get_cd_mem_stream(i32 %21, i8** %10)
  %23 = load i8*, i8** %10, align 8
  %24 = load i32, i32* @MZ_SEEK_END, align 4
  %25 = call i32 @mz_stream_seek(i8* %23, i32 0, i32 %24)
  %26 = load i8*, i8** %10, align 8
  %27 = call i64 @mz_stream_tell(i8* %26)
  store i64 %27, i64* %6, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* @MZ_SEEK_SET, align 4
  %30 = call i32 @mz_stream_seek(i8* %28, i32 0, i32 %29)
  %31 = load i32, i32* @MZ_ZIP_CD_FILENAME, align 4
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 7
  store i32 %31, i32* %32, align 4
  %33 = call i32 @time(i32* null)
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 6
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* @MZ_VERSION_MADEBY, align 4
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 5
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 4
  store i32 %39, i32* %40, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 3
  store i64 %41, i64* %42, align 8
  %43 = load i32, i32* @MZ_ZIP_FLAG_UTF8, align 4
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  store i32 %43, i32* %44, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %1
  %50 = load i32, i32* @MZ_ZIP_FLAG_ENCRYPTED, align 4
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %49, %1
  %55 = call i32 @mz_stream_mem_create(i8** %9)
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* @MZ_OPEN_MODE_CREATE, align 4
  %58 = call i32 @mz_stream_mem_open(i8* %56, i32* null, i32 %57)
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* @MZ_ZIP_EXTENSION_CDCD, align 4
  %61 = call i32 @mz_zip_extrafield_write(i8* %59, i32 %60, i32 8)
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @mz_stream_write_uint64(i8* %62, i32 %63)
  %65 = load i8*, i8** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %67 = bitcast i32* %66 to i8**
  %68 = call i32 @mz_stream_mem_get_buffer(i8* %65, i8** %67)
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @mz_stream_mem_get_buffer_length(i8* %69, i64* %8)
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i64 %71, i64* %72, align 8
  %73 = load i8*, i8** %2, align 8
  %74 = call i64 @mz_zip_writer_entry_open(i8* %73, %struct.TYPE_7__* %4)
  store i64 %74, i64* %7, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @MZ_OK, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %54
  %79 = load i8*, i8** %2, align 8
  %80 = load i32, i32* @mz_zip_writer_entry_write, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @mz_stream_copy_stream(i8* %79, i32 %80, i8* %81, i32* null, i64 %82)
  %84 = load i8*, i8** %10, align 8
  %85 = load i32, i32* @MZ_SEEK_SET, align 4
  %86 = call i32 @mz_stream_seek(i8* %84, i32 0, i32 %85)
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @mz_stream_mem_set_buffer_limit(i8* %87, i32 0)
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %90 = call i64 @mz_zip_writer_entry_close(%struct.TYPE_6__* %89)
  store i64 %90, i64* %7, align 8
  br label %91

91:                                               ; preds = %78, %54
  %92 = call i32 @mz_stream_mem_delete(i8** %9)
  %93 = load i64, i64* %7, align 8
  ret i64 %93
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @mz_zip_get_number_entry(i32, i32*) #1

declare dso_local i32 @mz_zip_get_cd_mem_stream(i32, i8**) #1

declare dso_local i32 @mz_stream_seek(i8*, i32, i32) #1

declare dso_local i64 @mz_stream_tell(i8*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @mz_stream_mem_create(i8**) #1

declare dso_local i32 @mz_stream_mem_open(i8*, i32*, i32) #1

declare dso_local i32 @mz_zip_extrafield_write(i8*, i32, i32) #1

declare dso_local i32 @mz_stream_write_uint64(i8*, i32) #1

declare dso_local i32 @mz_stream_mem_get_buffer(i8*, i8**) #1

declare dso_local i32 @mz_stream_mem_get_buffer_length(i8*, i64*) #1

declare dso_local i64 @mz_zip_writer_entry_open(i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @mz_stream_copy_stream(i8*, i32, i8*, i32*, i64) #1

declare dso_local i32 @mz_stream_mem_set_buffer_limit(i8*, i32) #1

declare dso_local i64 @mz_zip_writer_entry_close(%struct.TYPE_6__*) #1

declare dso_local i32 @mz_stream_mem_delete(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
