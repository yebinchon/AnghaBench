; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_writer_entry_open.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_writer_entry_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32, %struct.TYPE_7__, i32, i32, i32, i32 (i8*, i32, %struct.TYPE_7__*, i8*, i32)*, i32, i32 (i8*, i32, %struct.TYPE_7__*)* }
%struct.TYPE_7__ = type { i32, i32, i32 }

@MZ_OK = common dso_local global i64 0, align 8
@MZ_ZIP_FLAG_ENCRYPTED = common dso_local global i32 0, align 4
@MZ_HASH_SHA256 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_zip_writer_entry_open(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [120 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %5, align 8
  %11 = load i64, i64* @MZ_OK, align 8
  store i64 %11, i64* %6, align 8
  store i8* null, i8** %7, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @memcpy(%struct.TYPE_7__* %13, i32* %14, i32 4)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 9
  %18 = load i32 (i8*, i32, %struct.TYPE_7__*)*, i32 (i8*, i32, %struct.TYPE_7__*)** %17, align 8
  %19 = icmp ne i32 (i8*, i32, %struct.TYPE_7__*)* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 9
  %23 = load i32 (i8*, i32, %struct.TYPE_7__*)*, i32 (i8*, i32, %struct.TYPE_7__*)** %22, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 3
  %30 = call i32 %23(i8* %24, i32 %27, %struct.TYPE_7__* %29)
  br label %31

31:                                               ; preds = %20, %2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %7, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MZ_ZIP_FLAG_ENCRYPTED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %31
  %43 = load i8*, i8** %7, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %63

45:                                               ; preds = %42
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 7
  %48 = load i32 (i8*, i32, %struct.TYPE_7__*, i8*, i32)*, i32 (i8*, i32, %struct.TYPE_7__*, i8*, i32)** %47, align 8
  %49 = icmp ne i32 (i8*, i32, %struct.TYPE_7__*, i8*, i32)* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 7
  %53 = load i32 (i8*, i32, %struct.TYPE_7__*, i8*, i32)*, i32 (i8*, i32, %struct.TYPE_7__*, i8*, i32)** %52, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  %60 = getelementptr inbounds [120 x i8], [120 x i8]* %8, i64 0, i64 0
  %61 = call i32 %53(i8* %54, i32 %57, %struct.TYPE_7__* %59, i8* %60, i32 120)
  %62 = getelementptr inbounds [120 x i8], [120 x i8]* %8, i64 0, i64 0
  store i8* %62, i8** %7, align 8
  br label %63

63:                                               ; preds = %50, %45, %42, %31
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @mz_zip_attrib_is_dir(i32 %67, i32 %71)
  %73 = load i64, i64* @MZ_OK, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %63
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 5
  %78 = call i32 @mz_crypt_sha_create(i32* %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @MZ_HASH_SHA256, align 4
  %83 = call i32 @mz_crypt_sha_set_algorithm(i32 %81, i32 %82)
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @mz_crypt_sha_begin(i32 %86)
  br label %88

88:                                               ; preds = %75, %63
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = call i64 @mz_zip_entry_write_open(i32 %91, %struct.TYPE_7__* %93, i32 %96, i32 %99, i8* %100)
  store i64 %101, i64* %6, align 8
  %102 = load i64, i64* %6, align 8
  ret i64 %102
}

declare dso_local i32 @memcpy(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i64 @mz_zip_attrib_is_dir(i32, i32) #1

declare dso_local i32 @mz_crypt_sha_create(i32*) #1

declare dso_local i32 @mz_crypt_sha_set_algorithm(i32, i32) #1

declare dso_local i32 @mz_crypt_sha_begin(i32) #1

declare dso_local i64 @mz_zip_entry_write_open(i32, %struct.TYPE_7__*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
