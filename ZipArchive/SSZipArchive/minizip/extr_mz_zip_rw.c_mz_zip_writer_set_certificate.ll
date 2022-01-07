; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_writer_set_certificate.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_writer_set_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64, i32* }

@MZ_OK = common dso_local global i64 0, align 8
@MZ_PARAM_ERROR = common dso_local global i64 0, align 8
@MZ_OPEN_MODE_READ = common dso_local global i32 0, align 4
@MZ_READ_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_zip_writer_set_certificate(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %8, align 8
  store i8* null, i8** %9, align 8
  store i32* null, i32** %10, align 8
  store i64 0, i64* %11, align 8
  %15 = load i64, i64* @MZ_OK, align 8
  store i64 %15, i64* %12, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %19, i64* %4, align 8
  br label %83

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @mz_os_get_file_size(i8* %21)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %26, i64* %4, align 8
  br label %83

27:                                               ; preds = %20
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @MZ_FREE(i32* %35)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %32, %27
  %40 = load i64, i64* %11, align 8
  %41 = call i64 @MZ_ALLOC(i64 %40)
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %10, align 8
  %43 = call i32 @mz_stream_os_create(i8** %9)
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* @MZ_OPEN_MODE_READ, align 4
  %47 = call i64 @mz_stream_os_open(i8* %44, i8* %45, i32 %46)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* @MZ_OK, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %39
  %52 = load i8*, i8** %9, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i64 @mz_stream_os_read(i8* %52, i32* %53, i64 %54)
  %56 = load i64, i64* %11, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i64, i64* @MZ_READ_ERROR, align 8
  store i64 %59, i64* %12, align 8
  br label %60

60:                                               ; preds = %58, %51
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @mz_stream_os_close(i8* %61)
  br label %63

63:                                               ; preds = %60, %39
  %64 = call i32 @mz_stream_os_delete(i8** %9)
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* @MZ_OK, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load i32*, i32** %10, align 8
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i32* %69, i32** %71, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  br label %81

78:                                               ; preds = %63
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @MZ_FREE(i32* %79)
  br label %81

81:                                               ; preds = %78, %68
  %82 = load i64, i64* %12, align 8
  store i64 %82, i64* %4, align 8
  br label %83

83:                                               ; preds = %81, %25, %18
  %84 = load i64, i64* %4, align 8
  ret i64 %84
}

declare dso_local i64 @mz_os_get_file_size(i8*) #1

declare dso_local i32 @MZ_FREE(i32*) #1

declare dso_local i64 @MZ_ALLOC(i64) #1

declare dso_local i32 @mz_stream_os_create(i8**) #1

declare dso_local i64 @mz_stream_os_open(i8*, i8*, i32) #1

declare dso_local i64 @mz_stream_os_read(i8*, i32*, i64) #1

declare dso_local i32 @mz_stream_os_close(i8*) #1

declare dso_local i32 @mz_stream_os_delete(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
