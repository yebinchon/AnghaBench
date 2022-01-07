; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_writer_entry_close.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_writer_entry_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__, i64, i32, i32, i32*, i32, i32* }
%struct.TYPE_3__ = type { i64, i32, i32, i32*, i32 }

@MZ_OK = common dso_local global i64 0, align 8
@MZ_HASH_SHA256_SIZE = common dso_local global i32 0, align 4
@MZ_OPEN_MODE_CREATE = common dso_local global i32 0, align 4
@MZ_ZIP_EXTENSION_HASH = common dso_local global i32 0, align 4
@MZ_HASH_SHA256 = common dso_local global i32 0, align 4
@MZ_WRITE_ERROR = common dso_local global i64 0, align 8
@MZ_ZIP_CD_FILENAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_zip_writer_entry_close(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %3, align 8
  %12 = load i64, i64* @MZ_OK, align 8
  store i64 %12, i64* %4, align 8
  store i32* null, i32** %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @MZ_HASH_SHA256_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 8
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %124

21:                                               ; preds = %1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 8
  %24 = load i32*, i32** %23, align 8
  %25 = mul nuw i64 4, %14
  %26 = trunc i64 %25 to i32
  %27 = call i32 @mz_crypt_sha_end(i32* %24, i32* %16, i32 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 8
  %30 = call i32 @mz_crypt_sha_delete(i32** %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  %33 = call i32 @mz_stream_mem_create(i32* %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MZ_OPEN_MODE_CREATE, align 4
  %38 = call i32 @mz_stream_mem_open(i32 %36, i32* null, i32 %37)
  %39 = load i32, i32* @MZ_HASH_SHA256_SIZE, align 4
  %40 = add nsw i32 4, %39
  store i32 %40, i32* %7, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MZ_ZIP_EXTENSION_HASH, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @mz_zip_extrafield_write(i32 %43, i32 %44, i32 %45)
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @MZ_OK, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %21
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @MZ_HASH_SHA256, align 4
  %55 = call i64 @mz_stream_write_uint16(i32 %53, i32 %54)
  store i64 %55, i64* %4, align 8
  br label %56

56:                                               ; preds = %50, %21
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @MZ_OK, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @MZ_HASH_SHA256_SIZE, align 4
  %65 = call i64 @mz_stream_write_uint16(i32 %63, i32 %64)
  store i64 %65, i64* %4, align 8
  br label %66

66:                                               ; preds = %60, %56
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* @MZ_OK, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = mul nuw i64 4, %14
  %75 = trunc i64 %74 to i32
  %76 = call i32 @mz_stream_write(i32 %73, i32* %16, i32 %75)
  %77 = load i32, i32* @MZ_HASH_SHA256_SIZE, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i64, i64* @MZ_WRITE_ERROR, align 8
  store i64 %80, i64* %4, align 8
  br label %81

81:                                               ; preds = %79, %70
  br label %82

82:                                               ; preds = %81, %66
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %107

88:                                               ; preds = %82
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %88
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @mz_stream_mem_write(i32 %97, i32* %101, i64 %105)
  br label %107

107:                                              ; preds = %94, %88, %82
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = bitcast i32** %5 to i8**
  %112 = call i32 @mz_stream_mem_get_buffer(i32 %110, i8** %111)
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @mz_stream_mem_get_buffer_length(i32 %115, i64* %6)
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = load i64, i64* %6, align 8
  %122 = trunc i64 %121 to i32
  %123 = call i32 @mz_zip_entry_set_extrafield(i32 %119, i32* %120, i32 %122)
  br label %124

124:                                              ; preds = %107, %1
  %125 = load i64, i64* %4, align 8
  %126 = load i64, i64* @MZ_OK, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %152

128:                                              ; preds = %124
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %128
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i64 @mz_zip_entry_close_raw(i32 %136, i32 %140, i32 %144)
  store i64 %145, i64* %4, align 8
  br label %151

146:                                              ; preds = %128
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @mz_zip_entry_close(i32 %149)
  store i64 %150, i64* %4, align 8
  br label %151

151:                                              ; preds = %146, %133
  br label %152

152:                                              ; preds = %151, %124
  %153 = load i64, i64* %4, align 8
  %154 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %154)
  ret i64 %153
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mz_crypt_sha_end(i32*, i32*, i32) #2

declare dso_local i32 @mz_crypt_sha_delete(i32**) #2

declare dso_local i32 @mz_stream_mem_create(i32*) #2

declare dso_local i32 @mz_stream_mem_open(i32, i32*, i32) #2

declare dso_local i64 @mz_zip_extrafield_write(i32, i32, i32) #2

declare dso_local i64 @mz_stream_write_uint16(i32, i32) #2

declare dso_local i32 @mz_stream_write(i32, i32*, i32) #2

declare dso_local i32 @mz_stream_mem_write(i32, i32*, i64) #2

declare dso_local i32 @mz_stream_mem_get_buffer(i32, i8**) #2

declare dso_local i32 @mz_stream_mem_get_buffer_length(i32, i64*) #2

declare dso_local i32 @mz_zip_entry_set_extrafield(i32, i32*, i32) #2

declare dso_local i64 @mz_zip_entry_close_raw(i32, i32, i32) #2

declare dso_local i64 @mz_zip_entry_close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
