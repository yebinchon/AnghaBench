; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_writer_add_file.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_writer_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i32 }
%struct.TYPE_6__ = type { i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32 }

@MZ_OK = common dso_local global i64 0, align 8
@MZ_PARAM_ERROR = common dso_local global i64 0, align 8
@MZ_VERSION_MADEBY = common dso_local global i32 0, align 4
@MZ_ZIP_FLAG_UTF8 = common dso_local global i32 0, align 4
@MZ_ZIP_FLAG_MASK_LOCAL_INFO = common dso_local global i32 0, align 4
@MZ_AES_VERSION = common dso_local global i32 0, align 4
@MZ_HOST_SYSTEM_MSDOS = common dso_local global i64 0, align 8
@MZ_HOST_SYSTEM_WINDOWS_NTFS = common dso_local global i64 0, align 8
@MZ_OPEN_MODE_READ = common dso_local global i32 0, align 4
@mz_stream_read = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_zip_writer_add_file(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [1024 x i8], align 16
  %16 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load i64, i64* @MZ_OK, align 8
  store i64 %19, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i8* null, i8** %14, align 8
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %16, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @mz_zip_writer_is_open(i8* %21)
  %23 = load i64, i64* @MZ_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %26, i64* %4, align 8
  br label %181

27:                                               ; preds = %3
  %28 = load i8*, i8** %6, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %31, i64* %4, align 8
  br label %181

32:                                               ; preds = %27
  %33 = load i8*, i8** %16, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @mz_path_get_filename(i8* %36, i8** %16)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* @MZ_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i64, i64* %12, align 8
  store i64 %42, i64* %4, align 8
  br label %181

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %32
  %45 = call i32 @memset(%struct.TYPE_6__* %9, i32 0, i32 56)
  br label %46

46:                                               ; preds = %60, %44
  %47 = load i8*, i8** %16, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 92
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load i8*, i8** %16, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 47
  br label %58

58:                                               ; preds = %52, %46
  %59 = phi i1 [ true, %46 ], [ %57, %52 ]
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = load i8*, i8** %16, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  store i8* %62, i8** %16, align 8
  br label %46

63:                                               ; preds = %58
  %64 = load i32, i32* @MZ_VERSION_MADEBY, align 4
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  store i32 %64, i32* %65, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 10
  store i32 %68, i32* %69, align 4
  %70 = load i8*, i8** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i8* %70, i8** %71, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @mz_os_get_file_size(i8* %72)
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 9
  store i32 %73, i32* %74, align 8
  %75 = load i32, i32* @MZ_ZIP_FLAG_UTF8, align 4
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 8
  store i32 %75, i32* %76, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %63
  %82 = load i32, i32* @MZ_ZIP_FLAG_MASK_LOCAL_INFO, align 4
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %82
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %81, %63
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* @MZ_AES_VERSION, align 4
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 7
  store i32 %92, i32* %93, align 8
  br label %94

94:                                               ; preds = %91, %86
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 6
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 4
  %99 = call i32 @mz_os_get_file_date(i8* %95, i32* %96, i32* %97, i32* %98)
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 @mz_os_get_file_attribs(i8* %100, i32* %11)
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @MZ_HOST_SYSTEM(i32 %103)
  store i64 %104, i64* %13, align 8
  %105 = load i64, i64* %13, align 8
  %106 = load i64, i64* @MZ_HOST_SYSTEM_MSDOS, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %128

108:                                              ; preds = %94
  %109 = load i64, i64* %13, align 8
  %110 = load i64, i64* @MZ_HOST_SYSTEM_WINDOWS_NTFS, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %128

112:                                              ; preds = %108
  %113 = load i64, i64* %13, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load i64, i64* @MZ_HOST_SYSTEM_MSDOS, align 8
  %116 = call i64 @mz_zip_attrib_convert(i64 %113, i32 %114, i64 %115, i32* %10)
  %117 = load i64, i64* @MZ_OK, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = load i32, i32* %10, align 4
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i32 %120, i32* %121, align 8
  br label %122

122:                                              ; preds = %119, %112
  %123 = load i32, i32* %11, align 4
  %124 = shl i32 %123, 16
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %124
  store i32 %127, i32* %125, align 8
  br label %131

128:                                              ; preds = %108, %94
  %129 = load i32, i32* %11, align 4
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i32 %129, i32* %130, align 8
  br label %131

131:                                              ; preds = %128, %122
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %131
  %137 = load i8*, i8** %6, align 8
  %138 = call i64 @mz_os_is_symlink(i8* %137)
  %139 = load i64, i64* @MZ_OK, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %136
  %142 = load i8*, i8** %6, align 8
  %143 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %144 = call i64 @mz_os_read_symlink(i8* %142, i8* %143, i32 1024)
  store i64 %144, i64* %12, align 8
  %145 = load i64, i64* %12, align 8
  %146 = load i64, i64* @MZ_OK, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  store i8* %149, i8** %150, align 8
  br label %151

151:                                              ; preds = %148, %141
  br label %152

152:                                              ; preds = %151, %136, %131
  %153 = load i8*, i8** %6, align 8
  %154 = call i64 @mz_os_is_dir(i8* %153)
  %155 = load i64, i64* @MZ_OK, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = call i32 @mz_stream_os_create(i8** %14)
  %159 = load i8*, i8** %14, align 8
  %160 = load i8*, i8** %6, align 8
  %161 = load i32, i32* @MZ_OPEN_MODE_READ, align 4
  %162 = call i64 @mz_stream_os_open(i8* %159, i8* %160, i32 %161)
  store i64 %162, i64* %12, align 8
  br label %163

163:                                              ; preds = %157, %152
  %164 = load i64, i64* %12, align 8
  %165 = load i64, i64* @MZ_OK, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = load i8*, i8** %5, align 8
  %169 = load i8*, i8** %14, align 8
  %170 = load i32, i32* @mz_stream_read, align 4
  %171 = call i64 @mz_zip_writer_add_info(i8* %168, i8* %169, i32 %170, %struct.TYPE_6__* %9)
  store i64 %171, i64* %12, align 8
  br label %172

172:                                              ; preds = %167, %163
  %173 = load i8*, i8** %14, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load i8*, i8** %14, align 8
  %177 = call i32 @mz_stream_close(i8* %176)
  %178 = call i32 @mz_stream_delete(i8** %14)
  br label %179

179:                                              ; preds = %175, %172
  %180 = load i64, i64* %12, align 8
  store i64 %180, i64* %4, align 8
  br label %181

181:                                              ; preds = %179, %41, %30, %25
  %182 = load i64, i64* %4, align 8
  ret i64 %182
}

declare dso_local i64 @mz_zip_writer_is_open(i8*) #1

declare dso_local i64 @mz_path_get_filename(i8*, i8**) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @mz_os_get_file_size(i8*) #1

declare dso_local i32 @mz_os_get_file_date(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @mz_os_get_file_attribs(i8*, i32*) #1

declare dso_local i64 @MZ_HOST_SYSTEM(i32) #1

declare dso_local i64 @mz_zip_attrib_convert(i64, i32, i64, i32*) #1

declare dso_local i64 @mz_os_is_symlink(i8*) #1

declare dso_local i64 @mz_os_read_symlink(i8*, i8*, i32) #1

declare dso_local i64 @mz_os_is_dir(i8*) #1

declare dso_local i32 @mz_stream_os_create(i8**) #1

declare dso_local i64 @mz_stream_os_open(i8*, i8*, i32) #1

declare dso_local i64 @mz_zip_writer_add_info(i8*, i8*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @mz_stream_close(i8*) #1

declare dso_local i32 @mz_stream_delete(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
