; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_reader_unzip_cd.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_reader_unzip_cd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i64, i32 }

@MZ_OK = common dso_local global i64 0, align 8
@MZ_ZIP_CD_FILENAME = common dso_local global i32 0, align 4
@MZ_ZIP_EXTENSION_CDCD = common dso_local global i32 0, align 4
@MZ_OPEN_MODE_CREATE = common dso_local global i32 0, align 4
@MZ_SEEK_SET = common dso_local global i32 0, align 4
@mz_zip_reader_entry_read = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_zip_reader_unzip_cd(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i64, i64* @MZ_OK, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @mz_zip_reader_goto_first_entry(i8* %14)
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* @MZ_OK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i64, i64* %10, align 8
  store i64 %20, i64* %2, align 8
  br label %129

21:                                               ; preds = %1
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @mz_zip_reader_entry_get_info(i8* %22, %struct.TYPE_5__** %5)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @MZ_OK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i64, i64* %10, align 8
  store i64 %28, i64* %2, align 8
  br label %129

29:                                               ; preds = %21
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MZ_ZIP_CD_FILENAME, align 4
  %34 = call i64 @strcmp(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i8*, i8** %3, align 8
  %38 = call i64 @mz_zip_reader_goto_first_entry(i8* %37)
  store i64 %38, i64* %2, align 8
  br label %129

39:                                               ; preds = %29
  %40 = load i8*, i8** %3, align 8
  %41 = call i64 @mz_zip_reader_entry_open(i8* %40)
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @MZ_OK, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i64, i64* %10, align 8
  store i64 %46, i64* %2, align 8
  br label %129

47:                                               ; preds = %39
  %48 = call i32 @mz_stream_mem_create(i8** %8)
  %49 = load i8*, i8** %8, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @mz_stream_mem_set_buffer(i8* %49, i8* %53, i32 %56)
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* @MZ_ZIP_EXTENSION_CDCD, align 4
  %60 = call i64 @mz_zip_extrafield_find(i8* %58, i32 %59, i32* null)
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* @MZ_OK, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %47
  %65 = load i8*, i8** %8, align 8
  %66 = call i64 @mz_stream_read_uint64(i8* %65, i32* %9)
  store i64 %66, i64* %10, align 8
  br label %67

67:                                               ; preds = %64, %47
  %68 = call i32 @mz_stream_mem_delete(i8** %8)
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* @MZ_OK, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i64, i64* %10, align 8
  store i64 %73, i64* %2, align 8
  br label %129

74:                                               ; preds = %67
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @mz_zip_get_cd_mem_stream(i32 %77, i8** %6)
  %79 = load i8*, i8** %6, align 8
  %80 = call i64 @mz_stream_mem_is_open(i8* %79)
  %81 = load i64, i64* @MZ_OK, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* @MZ_OPEN_MODE_CREATE, align 4
  %86 = call i32 @mz_stream_mem_open(i8* %84, i32* null, i32 %85)
  br label %87

87:                                               ; preds = %83, %74
  %88 = load i8*, i8** %6, align 8
  %89 = load i32, i32* @MZ_SEEK_SET, align 4
  %90 = call i64 @mz_stream_seek(i8* %88, i32 0, i32 %89)
  store i64 %90, i64* %10, align 8
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* @MZ_OK, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %87
  %95 = load i8*, i8** %6, align 8
  %96 = load i8*, i8** %3, align 8
  %97 = load i32, i32* @mz_zip_reader_entry_read, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @mz_stream_copy_stream(i8* %95, i32* null, i8* %96, i32 %97, i64 %100)
  store i64 %101, i64* %10, align 8
  br label %102

102:                                              ; preds = %94, %87
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* @MZ_OK, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %102
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  store i32 1, i32* %108, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %6, align 8
  %113 = call i32 @mz_zip_set_cd_stream(i32 %111, i32 0, i8* %112)
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @mz_zip_set_number_entry(i32 %116, i32 %117)
  %119 = load i8*, i8** %3, align 8
  %120 = call i64 @mz_zip_reader_goto_first_entry(i8* %119)
  store i64 %120, i64* %10, align 8
  br label %121

121:                                              ; preds = %106, %102
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  %127 = call i32 @mz_stream_mem_delete(i8** %7)
  %128 = load i64, i64* %10, align 8
  store i64 %128, i64* %2, align 8
  br label %129

129:                                              ; preds = %121, %72, %45, %36, %27, %19
  %130 = load i64, i64* %2, align 8
  ret i64 %130
}

declare dso_local i64 @mz_zip_reader_goto_first_entry(i8*) #1

declare dso_local i64 @mz_zip_reader_entry_get_info(i8*, %struct.TYPE_5__**) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @mz_zip_reader_entry_open(i8*) #1

declare dso_local i32 @mz_stream_mem_create(i8**) #1

declare dso_local i32 @mz_stream_mem_set_buffer(i8*, i8*, i32) #1

declare dso_local i64 @mz_zip_extrafield_find(i8*, i32, i32*) #1

declare dso_local i64 @mz_stream_read_uint64(i8*, i32*) #1

declare dso_local i32 @mz_stream_mem_delete(i8**) #1

declare dso_local i32 @mz_zip_get_cd_mem_stream(i32, i8**) #1

declare dso_local i64 @mz_stream_mem_is_open(i8*) #1

declare dso_local i32 @mz_stream_mem_open(i8*, i32*, i32) #1

declare dso_local i64 @mz_stream_seek(i8*, i32, i32) #1

declare dso_local i64 @mz_stream_copy_stream(i8*, i32*, i8*, i32, i64) #1

declare dso_local i32 @mz_zip_set_cd_stream(i32, i32, i8*) #1

declare dso_local i32 @mz_zip_set_number_entry(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
