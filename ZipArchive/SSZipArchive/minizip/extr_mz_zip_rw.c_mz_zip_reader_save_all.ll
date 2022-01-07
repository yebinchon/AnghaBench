; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_reader_save_all.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_reader_save_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i32 }

@MZ_OK = common dso_local global i64 0, align 8
@MZ_END_OF_LIST = common dso_local global i64 0, align 8
@MZ_ZIP_FLAG_UTF8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_zip_reader_save_all(i8* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [512 x i8], align 16
  %10 = alloca [256 x i8], align 16
  %11 = alloca [256 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %6, align 8
  %14 = load i64, i64* @MZ_OK, align 8
  store i64 %14, i64* %7, align 8
  store i32* null, i32** %8, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @mz_zip_reader_goto_first_entry(i8* %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @MZ_END_OF_LIST, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i64, i64* %7, align 8
  store i64 %21, i64* %3, align 8
  br label %107

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %98, %22
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @MZ_OK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %99

27:                                               ; preds = %23
  %28 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %28, align 16
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strncpy(i8* %29, i8* %34, i32 255)
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 255
  store i8 0, i8* %36, align 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %70

41:                                               ; preds = %27
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MZ_ZIP_FLAG_UTF8, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %41
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32* @mz_os_utf8_string_create(i8* %55, i64 %58)
  store i32* %59, i32** %8, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %50
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %64 = load i32*, i32** %8, align 8
  %65 = bitcast i32* %64 to i8*
  %66 = call i32 @strncpy(i8* %63, i8* %65, i32 255)
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 255
  store i8 0, i8* %67, align 1
  %68 = call i32 @mz_os_utf8_string_delete(i32** %8)
  br label %69

69:                                               ; preds = %62, %50
  br label %70

70:                                               ; preds = %69, %41, %27
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %73 = call i64 @mz_path_resolve(i8* %71, i8* %72, i32 256)
  store i64 %73, i64* %7, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* @MZ_OK, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %99

78:                                               ; preds = %70
  %79 = load i8*, i8** %5, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @mz_path_combine(i8* %82, i8* %83, i32 512)
  br label %85

85:                                               ; preds = %81, %78
  %86 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %88 = call i32 @mz_path_combine(i8* %86, i8* %87, i32 512)
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %91 = call i64 @mz_zip_reader_entry_save_file(i8* %89, i8* %90)
  store i64 %91, i64* %7, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* @MZ_OK, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %85
  %96 = load i8*, i8** %4, align 8
  %97 = call i64 @mz_zip_reader_goto_next_entry(i8* %96)
  store i64 %97, i64* %7, align 8
  br label %98

98:                                               ; preds = %95, %85
  br label %23

99:                                               ; preds = %77, %23
  %100 = load i64, i64* %7, align 8
  %101 = load i64, i64* @MZ_END_OF_LIST, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i64, i64* @MZ_OK, align 8
  store i64 %104, i64* %3, align 8
  br label %107

105:                                              ; preds = %99
  %106 = load i64, i64* %7, align 8
  store i64 %106, i64* %3, align 8
  br label %107

107:                                              ; preds = %105, %103, %20
  %108 = load i64, i64* %3, align 8
  ret i64 %108
}

declare dso_local i64 @mz_zip_reader_goto_first_entry(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32* @mz_os_utf8_string_create(i8*, i64) #1

declare dso_local i32 @mz_os_utf8_string_delete(i32**) #1

declare dso_local i64 @mz_path_resolve(i8*, i8*, i32) #1

declare dso_local i32 @mz_path_combine(i8*, i8*, i32) #1

declare dso_local i64 @mz_zip_reader_entry_save_file(i8*, i8*) #1

declare dso_local i64 @mz_zip_reader_goto_next_entry(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
