; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_writer_open_file.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_writer_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i8*, i32, i8*)*, i32, i32, i32, i32 }

@MZ_OPEN_MODE_READWRITE = common dso_local global i64 0, align 8
@MZ_OK = common dso_local global i64 0, align 8
@MZ_OPEN_MODE_CREATE = common dso_local global i64 0, align 8
@MZ_OPEN_MODE_APPEND = common dso_local global i64 0, align 8
@MZ_INTERNAL_ERROR = common dso_local global i64 0, align 8
@MZ_STREAM_PROP_DISK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_zip_writer_open_file(i8* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [320 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %10, align 8
  %17 = load i64, i64* @MZ_OPEN_MODE_READWRITE, align 8
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* @MZ_OK, align 8
  store i64 %18, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @mz_zip_writer_close(i8* %19)
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @mz_os_file_exists(i8* %21)
  %23 = load i64, i64* @MZ_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %4
  %26 = load i64, i64* @MZ_OPEN_MODE_CREATE, align 8
  %27 = load i64, i64* %11, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* %11, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32* @strchr(i8* %29, i8 signext 47)
  %31 = icmp ne i32* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = load i8*, i8** %7, align 8
  %34 = call i32* @strrchr(i8* %33, i8 signext 92)
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %32, %25
  %37 = getelementptr inbounds [320 x i8], [320 x i8]* %14, i64 0, i64 0
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @strncpy(i8* %37, i8* %38, i32 320)
  %40 = getelementptr inbounds [320 x i8], [320 x i8]* %14, i64 0, i64 0
  %41 = call i32 @mz_path_remove_filename(i8* %40)
  %42 = getelementptr inbounds [320 x i8], [320 x i8]* %14, i64 0, i64 0
  %43 = call i64 @mz_os_file_exists(i8* %42)
  %44 = load i64, i64* @MZ_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = getelementptr inbounds [320 x i8], [320 x i8]* %14, i64 0, i64 0
  %48 = call i32 @mz_dir_make(i8* %47)
  br label %49

49:                                               ; preds = %46, %36
  br label %50

50:                                               ; preds = %49, %32
  br label %93

51:                                               ; preds = %4
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i64, i64* @MZ_OPEN_MODE_APPEND, align 8
  %56 = load i64, i64* %11, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %11, align 8
  br label %92

58:                                               ; preds = %51
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64 (i8*, i32, i8*)*, i64 (i8*, i32, i8*)** %60, align 8
  %62 = icmp ne i64 (i8*, i32, i8*)* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64 (i8*, i32, i8*)*, i64 (i8*, i32, i8*)** %65, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = call i64 %66(i8* %67, i32 %70, i8* %71)
  store i64 %72, i64* %13, align 8
  br label %73

73:                                               ; preds = %63, %58
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* @MZ_INTERNAL_ERROR, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i64, i64* %12, align 8
  store i64 %78, i64* %5, align 8
  br label %141

79:                                               ; preds = %73
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* @MZ_OK, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i64, i64* @MZ_OPEN_MODE_CREATE, align 8
  %85 = load i64, i64* %11, align 8
  %86 = or i64 %85, %84
  store i64 %86, i64* %11, align 8
  br label %91

87:                                               ; preds = %79
  %88 = load i64, i64* @MZ_OPEN_MODE_APPEND, align 8
  %89 = load i64, i64* %11, align 8
  %90 = or i64 %89, %88
  store i64 %90, i64* %11, align 8
  br label %91

91:                                               ; preds = %87, %83
  br label %92

92:                                               ; preds = %91, %54
  br label %93

93:                                               ; preds = %92, %50
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 3
  %96 = call i32 @mz_stream_os_create(i32* %95)
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = call i32 @mz_stream_buffered_create(i32* %98)
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = call i32 @mz_stream_split_create(i32* %101)
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @mz_stream_set_base(i32 %105, i32 %108)
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @mz_stream_set_base(i32 %112, i32 %115)
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @MZ_STREAM_PROP_DISK_SIZE, align 4
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @mz_stream_split_set_prop_int64(i32 %119, i32 %120, i32 %121)
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = load i64, i64* %11, align 8
  %128 = call i64 @mz_stream_open(i32 %125, i8* %126, i64 %127)
  store i64 %128, i64* %12, align 8
  %129 = load i64, i64* %12, align 8
  %130 = load i64, i64* @MZ_OK, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %93
  %133 = load i8*, i8** %6, align 8
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i64, i64* %11, align 8
  %138 = call i64 @mz_zip_writer_open_int(i8* %133, i32 %136, i64 %137)
  store i64 %138, i64* %12, align 8
  br label %139

139:                                              ; preds = %132, %93
  %140 = load i64, i64* %12, align 8
  store i64 %140, i64* %5, align 8
  br label %141

141:                                              ; preds = %139, %77
  %142 = load i64, i64* %5, align 8
  ret i64 %142
}

declare dso_local i32 @mz_zip_writer_close(i8*) #1

declare dso_local i64 @mz_os_file_exists(i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @mz_path_remove_filename(i8*) #1

declare dso_local i32 @mz_dir_make(i8*) #1

declare dso_local i32 @mz_stream_os_create(i32*) #1

declare dso_local i32 @mz_stream_buffered_create(i32*) #1

declare dso_local i32 @mz_stream_split_create(i32*) #1

declare dso_local i32 @mz_stream_set_base(i32, i32) #1

declare dso_local i32 @mz_stream_split_set_prop_int64(i32, i32, i32) #1

declare dso_local i64 @mz_stream_open(i32, i8*, i64) #1

declare dso_local i64 @mz_zip_writer_open_int(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
