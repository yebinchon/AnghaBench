; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_reader_entry_save_buffer.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_reader_entry_save_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@MZ_OK = common dso_local global i64 0, align 8
@MZ_PARAM_ERROR = common dso_local global i64 0, align 8
@INT32_MAX = common dso_local global i64 0, align 8
@MZ_OPEN_MODE_READ = common dso_local global i32 0, align 4
@mz_stream_mem_write = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_zip_reader_entry_save_buffer(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %8, align 8
  store i8* null, i8** %9, align 8
  %13 = load i64, i64* @MZ_OK, align 8
  store i64 %13, i64* %10, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %15 = call i64 @mz_zip_reader_is_open(%struct.TYPE_5__* %14)
  %16 = load i64, i64* @MZ_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %19, i64* %4, align 8
  br label %67

20:                                               ; preds = %3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp eq %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %26, i64* %4, align 8
  br label %67

27:                                               ; preds = %20
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @INT32_MAX, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %36, i64* %4, align 8
  br label %67

37:                                               ; preds = %27
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %38, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %46, i64* %4, align 8
  br label %67

47:                                               ; preds = %37
  %48 = call i32 @mz_stream_mem_create(i8** %9)
  %49 = load i8*, i8** %9, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @mz_stream_mem_set_buffer(i8* %49, i8* %50, i64 %51)
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* @MZ_OPEN_MODE_READ, align 4
  %55 = call i64 @mz_stream_mem_open(i8* %53, i32* null, i32 %54)
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* @MZ_OK, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %47
  %60 = load i8*, i8** %5, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* @mz_stream_mem_write, align 4
  %63 = call i64 @mz_zip_reader_entry_save(i8* %60, i8* %61, i32 %62)
  store i64 %63, i64* %10, align 8
  br label %64

64:                                               ; preds = %59, %47
  %65 = call i32 @mz_stream_mem_delete(i8** %9)
  %66 = load i64, i64* %10, align 8
  store i64 %66, i64* %4, align 8
  br label %67

67:                                               ; preds = %64, %45, %35, %25, %18
  %68 = load i64, i64* %4, align 8
  ret i64 %68
}

declare dso_local i64 @mz_zip_reader_is_open(%struct.TYPE_5__*) #1

declare dso_local i32 @mz_stream_mem_create(i8**) #1

declare dso_local i32 @mz_stream_mem_set_buffer(i8*, i8*, i64) #1

declare dso_local i64 @mz_stream_mem_open(i8*, i32*, i32) #1

declare dso_local i64 @mz_zip_reader_entry_save(i8*, i8*, i32) #1

declare dso_local i32 @mz_stream_mem_delete(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
