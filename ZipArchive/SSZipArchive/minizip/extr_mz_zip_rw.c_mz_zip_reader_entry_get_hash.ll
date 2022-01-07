; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_reader_entry_get_hash.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_reader_entry_get_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }

@MZ_OK = common dso_local global i64 0, align 8
@MZ_EXIST_ERROR = common dso_local global i64 0, align 8
@MZ_ZIP_EXTENSION_HASH = common dso_local global i32 0, align 4
@MZ_HASH_MAX_SIZE = common dso_local global i64 0, align 8
@MZ_SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_zip_reader_entry_get_hash(i8* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %9, align 8
  store i8* null, i8** %10, align 8
  %17 = load i64, i64* @MZ_OK, align 8
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* @MZ_EXIST_ERROR, align 8
  store i64 %18, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %19 = call i32 @mz_stream_mem_create(i8** %10)
  %20 = load i8*, i8** %10, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @mz_stream_mem_set_buffer(i8* %20, i8* %26, i32 %31)
  br label %33

33:                                               ; preds = %82, %4
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* @MZ_ZIP_EXTENSION_HASH, align 4
  %36 = call i64 @mz_zip_extrafield_find(i8* %34, i32 %35, i32* null)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* @MZ_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %86

41:                                               ; preds = %33
  %42 = load i8*, i8** %10, align 8
  %43 = call i64 @mz_stream_read_uint16(i8* %42, i64* %13)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* @MZ_OK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i8*, i8** %10, align 8
  %49 = call i64 @mz_stream_read_uint16(i8* %48, i64* %14)
  store i64 %49, i64* %11, align 8
  br label %50

50:                                               ; preds = %47, %41
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* @MZ_OK, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %50
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %6, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %54
  %59 = load i64, i64* %14, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp sle i64 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load i64, i64* %14, align 8
  %64 = load i64, i64* @MZ_HASH_MAX_SIZE, align 8
  %65 = icmp sle i64 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load i8*, i8** %10, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load i64, i64* %8, align 8
  %70 = call i64 @mz_stream_read(i8* %67, i32* %68, i64 %69)
  %71 = load i64, i64* %14, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i64, i64* @MZ_OK, align 8
  store i64 %74, i64* %12, align 8
  br label %75

75:                                               ; preds = %73, %66
  br label %86

76:                                               ; preds = %62, %58, %54, %50
  %77 = load i8*, i8** %10, align 8
  %78 = load i64, i64* %14, align 8
  %79 = load i32, i32* @MZ_SEEK_CUR, align 4
  %80 = call i64 @mz_stream_seek(i8* %77, i64 %78, i32 %79)
  store i64 %80, i64* %11, align 8
  br label %81

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* @MZ_OK, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %33, label %86

86:                                               ; preds = %82, %75, %40
  %87 = call i32 @mz_stream_mem_delete(i8** %10)
  %88 = load i64, i64* %12, align 8
  ret i64 %88
}

declare dso_local i32 @mz_stream_mem_create(i8**) #1

declare dso_local i32 @mz_stream_mem_set_buffer(i8*, i8*, i32) #1

declare dso_local i64 @mz_zip_extrafield_find(i8*, i32, i32*) #1

declare dso_local i64 @mz_stream_read_uint16(i8*, i64*) #1

declare dso_local i64 @mz_stream_read(i8*, i32*, i64) #1

declare dso_local i64 @mz_stream_seek(i8*, i64, i32) #1

declare dso_local i32 @mz_stream_mem_delete(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
