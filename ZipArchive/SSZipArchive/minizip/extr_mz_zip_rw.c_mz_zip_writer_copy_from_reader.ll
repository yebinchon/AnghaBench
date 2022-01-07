; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_writer_copy_from_reader.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_writer_copy_from_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }

@MZ_OK = common dso_local global i64 0, align 8
@MZ_PARAM_ERROR = common dso_local global i64 0, align 8
@mz_zip_entry_read = common dso_local global i32 0, align 4
@MZ_ZIP_FLAG_DATA_DESCRIPTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_zip_writer_copy_from_reader(i8* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i64, i64* @MZ_OK, align 8
  store i64 %17, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @mz_zip_reader_is_open(i8* %18)
  %20 = load i64, i64* @MZ_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %23, i64* %3, align 8
  br label %124

24:                                               ; preds = %2
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = call i64 @mz_zip_writer_is_open(%struct.TYPE_11__* %25)
  %27 = load i64, i64* @MZ_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %30, i64* %3, align 8
  br label %124

31:                                               ; preds = %24
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @mz_zip_reader_entry_get_info(i8* %32, %struct.TYPE_12__** %7)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @MZ_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i64, i64* %11, align 8
  store i64 %38, i64* %3, align 8
  br label %124

39:                                               ; preds = %31
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @mz_zip_reader_get_zip_handle(i8* %40, i8** %13)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = call i32 @mz_zip_writer_get_zip_handle(%struct.TYPE_11__* %42, i8** %14)
  %44 = load i8*, i8** %13, align 8
  %45 = call i64 @mz_zip_entry_read_open(i8* %44, i32 1, i32* null)
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @MZ_OK, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %122

49:                                               ; preds = %39
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %12, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %57 = call i64 @mz_zip_writer_entry_open(%struct.TYPE_11__* %55, %struct.TYPE_12__* %56)
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* @MZ_OK, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %49
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @mz_zip_attrib_is_dir(i32 %65, i32 %69)
  %71 = load i64, i64* @MZ_OK, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %61
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = load i32, i32* @mz_zip_entry_read, align 4
  %77 = call i64 @mz_zip_writer_add(%struct.TYPE_11__* %74, i8* %75, i32 %76)
  store i64 %77, i64* %11, align 8
  br label %78

78:                                               ; preds = %73, %61, %49
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* @MZ_OK, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %78
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @MZ_ZIP_FLAG_DATA_DESCRIPTOR, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %82
  %90 = load i8*, i8** %13, align 8
  %91 = call i64 @mz_zip_entry_read_close(i8* %90, i32* %10, i32* %8, i32* %9)
  store i64 %91, i64* %11, align 8
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* @MZ_OK, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load i8*, i8** %14, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i64 @mz_zip_entry_write_close(i8* %96, i32 %97, i32 %98, i32 %99)
  store i64 %100, i64* %11, align 8
  br label %101

101:                                              ; preds = %95, %89
  br label %102

102:                                              ; preds = %101, %82, %78
  %103 = load i8*, i8** %13, align 8
  %104 = call i64 @mz_zip_entry_is_open(i8* %103)
  %105 = load i64, i64* @MZ_OK, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i8*, i8** %13, align 8
  %109 = call i32 @mz_zip_entry_close(i8* %108)
  br label %110

110:                                              ; preds = %107, %102
  %111 = load i8*, i8** %14, align 8
  %112 = call i64 @mz_zip_entry_is_open(i8* %111)
  %113 = load i64, i64* @MZ_OK, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i8*, i8** %14, align 8
  %117 = call i32 @mz_zip_entry_close(i8* %116)
  br label %118

118:                                              ; preds = %115, %110
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %118, %39
  %123 = load i64, i64* %11, align 8
  store i64 %123, i64* %3, align 8
  br label %124

124:                                              ; preds = %122, %37, %29, %22
  %125 = load i64, i64* %3, align 8
  ret i64 %125
}

declare dso_local i64 @mz_zip_reader_is_open(i8*) #1

declare dso_local i64 @mz_zip_writer_is_open(%struct.TYPE_11__*) #1

declare dso_local i64 @mz_zip_reader_entry_get_info(i8*, %struct.TYPE_12__**) #1

declare dso_local i32 @mz_zip_reader_get_zip_handle(i8*, i8**) #1

declare dso_local i32 @mz_zip_writer_get_zip_handle(%struct.TYPE_11__*, i8**) #1

declare dso_local i64 @mz_zip_entry_read_open(i8*, i32, i32*) #1

declare dso_local i64 @mz_zip_writer_entry_open(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i64 @mz_zip_attrib_is_dir(i32, i32) #1

declare dso_local i64 @mz_zip_writer_add(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i64 @mz_zip_entry_read_close(i8*, i32*, i32*, i32*) #1

declare dso_local i64 @mz_zip_entry_write_close(i8*, i32, i32, i32) #1

declare dso_local i64 @mz_zip_entry_is_open(i8*) #1

declare dso_local i32 @mz_zip_entry_close(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
