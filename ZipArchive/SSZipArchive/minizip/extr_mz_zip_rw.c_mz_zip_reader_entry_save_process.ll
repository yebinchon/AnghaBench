; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_reader_entry_save_process.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_reader_entry_save_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@MZ_OK = common dso_local global i64 0, align 8
@MZ_PARAM_ERROR = common dso_local global i64 0, align 8
@MZ_END_OF_STREAM = common dso_local global i64 0, align 8
@MZ_WRITE_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_zip_reader_entry_save_process(i8* %0, i8* %1, i64 (i8*, i32, i64)* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64 (i8*, i32, i64)*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 (i8*, i32, i64)* %2, i64 (i8*, i32, i64)** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %8, align 8
  %14 = load i64, i64* @MZ_OK, align 8
  store i64 %14, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %16 = call i64 @mz_zip_reader_is_open(%struct.TYPE_3__* %15)
  %17 = load i64, i64* @MZ_OK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %20, i64* %4, align 8
  br label %86

21:                                               ; preds = %3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %27, i64* %4, align 8
  br label %86

28:                                               ; preds = %21
  %29 = load i64 (i8*, i32, i64)*, i64 (i8*, i32, i64)** %7, align 8
  %30 = icmp eq i64 (i8*, i32, i64)* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %32, i64* %4, align 8
  br label %86

33:                                               ; preds = %28
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @mz_zip_entry_is_open(i32 %36)
  %38 = load i64, i64* @MZ_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 @mz_zip_reader_entry_open(i8* %41)
  store i64 %42, i64* %9, align 8
  br label %43

43:                                               ; preds = %40, %33
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @MZ_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i64, i64* %9, align 8
  store i64 %48, i64* %4, align 8
  br label %86

49:                                               ; preds = %43
  %50 = load i8*, i8** %5, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @mz_zip_reader_entry_read(i8* %50, i32 %53, i32 4)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %49
  %58 = load i8*, i8** %5, align 8
  %59 = call i64 @mz_zip_reader_entry_close(i8* %58)
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @MZ_OK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i64, i64* %9, align 8
  store i64 %64, i64* %4, align 8
  br label %86

65:                                               ; preds = %57
  %66 = load i64, i64* @MZ_END_OF_STREAM, align 8
  store i64 %66, i64* %4, align 8
  br label %86

67:                                               ; preds = %49
  %68 = load i64, i64* %10, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load i64 (i8*, i32, i64)*, i64 (i8*, i32, i64)** %7, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call i64 %71(i8* %72, i32 %75, i64 %76)
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* %10, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %70
  %82 = load i64, i64* @MZ_WRITE_ERROR, align 8
  store i64 %82, i64* %4, align 8
  br label %86

83:                                               ; preds = %70
  br label %84

84:                                               ; preds = %83, %67
  %85 = load i64, i64* %10, align 8
  store i64 %85, i64* %4, align 8
  br label %86

86:                                               ; preds = %84, %81, %65, %63, %47, %31, %26, %19
  %87 = load i64, i64* %4, align 8
  ret i64 %87
}

declare dso_local i64 @mz_zip_reader_is_open(%struct.TYPE_3__*) #1

declare dso_local i64 @mz_zip_entry_is_open(i32) #1

declare dso_local i64 @mz_zip_reader_entry_open(i8*) #1

declare dso_local i64 @mz_zip_reader_entry_read(i8*, i32, i32) #1

declare dso_local i64 @mz_zip_reader_entry_close(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
