; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_reader_entry_save_file.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip_rw.c_mz_zip_reader_entry_save_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 (i8*, i32, %struct.TYPE_6__*, i8*)*, %struct.TYPE_6__*, i32, i32, i32, i32 (i8*, i32, %struct.TYPE_6__*, i8*)* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@MZ_OK = common dso_local global i64 0, align 8
@MZ_PARAM_ERROR = common dso_local global i64 0, align 8
@MZ_PATH_SLASH_UNIX = common dso_local global i32 0, align 4
@MZ_OPEN_MODE_CREATE = common dso_local global i32 0, align 4
@mz_stream_write = common dso_local global i32 0, align 4
@MZ_VERSION_MADEBY_HOST_SYSTEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_zip_reader_entry_save_file(i8* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [512 x i8], align 16
  %13 = alloca [512 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %16 = load i64, i64* @MZ_OK, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* @MZ_OK, align 8
  store i64 %17, i64* %11, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = call i64 @mz_zip_reader_is_open(%struct.TYPE_5__* %18)
  %20 = load i64, i64* @MZ_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %23, i64* %3, align 8
  br label %223

24:                                               ; preds = %2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = icmp eq %struct.TYPE_6__* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %24
  %33 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %33, i64* %3, align 8
  br label %223

34:                                               ; preds = %29
  %35 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @strncpy(i8* %35, i8* %36, i32 511)
  %38 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 511
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %40 = load i32, i32* @MZ_PATH_SLASH_UNIX, align 4
  %41 = call i32 @mz_path_convert_slashes(i8* %39, i32 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 5
  %44 = load i32 (i8*, i32, %struct.TYPE_6__*, i8*)*, i32 (i8*, i32, %struct.TYPE_6__*, i8*)** %43, align 8
  %45 = icmp ne i32 (i8*, i32, %struct.TYPE_6__*, i8*)* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %34
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 5
  %49 = load i32 (i8*, i32, %struct.TYPE_6__*, i8*)*, i32 (i8*, i32, %struct.TYPE_6__*, i8*)** %48, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %58 = call i32 %49(i8* %50, i32 %53, %struct.TYPE_6__* %56, i8* %57)
  br label %59

59:                                               ; preds = %46, %34
  %60 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %61 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %62 = call i32 @strncpy(i8* %60, i8* %61, i32 511)
  %63 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 511
  store i8 0, i8* %63, align 1
  %64 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %65 = call i32 @mz_path_remove_filename(i8* %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @mz_zip_entry_is_dir(i32 %68)
  %70 = load i64, i64* @MZ_OK, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %59
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @mz_zip_entry_is_symlink(i32 %75)
  %77 = load i64, i64* @MZ_OK, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %81 = call i64 @mz_dir_make(i8* %80)
  store i64 %81, i64* %10, align 8
  %82 = load i64, i64* %10, align 8
  store i64 %82, i64* %3, align 8
  br label %223

83:                                               ; preds = %72, %59
  %84 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %85 = call i64 @mz_os_file_exists(i8* %84)
  %86 = load i64, i64* @MZ_OK, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %114

88:                                               ; preds = %83
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64 (i8*, i32, %struct.TYPE_6__*, i8*)*, i64 (i8*, i32, %struct.TYPE_6__*, i8*)** %90, align 8
  %92 = icmp ne i64 (i8*, i32, %struct.TYPE_6__*, i8*)* %91, null
  br i1 %92, label %93, label %114

93:                                               ; preds = %88
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64 (i8*, i32, %struct.TYPE_6__*, i8*)*, i64 (i8*, i32, %struct.TYPE_6__*, i8*)** %95, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %105 = call i64 %96(i8* %97, i32 %100, %struct.TYPE_6__* %103, i8* %104)
  store i64 %105, i64* %11, align 8
  %106 = load i64, i64* %11, align 8
  %107 = load i64, i64* @MZ_OK, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %93
  %110 = load i64, i64* %10, align 8
  store i64 %110, i64* %3, align 8
  br label %223

111:                                              ; preds = %93
  %112 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %113 = call i32 @mz_os_unlink(i8* %112)
  br label %114

114:                                              ; preds = %111, %88, %83
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @mz_zip_entry_is_symlink(i32 %117)
  %119 = load i64, i64* @MZ_OK, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %114
  %122 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %123 = call i32 @mz_path_remove_slash(i8* %122)
  %124 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %125 = call i32 @mz_path_remove_filename(i8* %124)
  br label %126

126:                                              ; preds = %121, %114
  %127 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %128 = call i64 @mz_os_is_dir(i8* %127)
  %129 = load i64, i64* @MZ_OK, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %140

131:                                              ; preds = %126
  %132 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %133 = call i64 @mz_dir_make(i8* %132)
  store i64 %133, i64* %10, align 8
  %134 = load i64, i64* %10, align 8
  %135 = load i64, i64* @MZ_OK, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i64, i64* %10, align 8
  store i64 %138, i64* %3, align 8
  br label %223

139:                                              ; preds = %131
  br label %140

140:                                              ; preds = %139, %126
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @mz_zip_entry_is_symlink(i32 %143)
  %145 = load i64, i64* @MZ_OK, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %140
  %148 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @mz_os_make_symlink(i8* %148, i32 %153)
  %155 = load i64, i64* %10, align 8
  store i64 %155, i64* %3, align 8
  br label %223

156:                                              ; preds = %140
  %157 = call i32 @mz_stream_os_create(i8** %7)
  %158 = load i8*, i8** %7, align 8
  %159 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %160 = load i32, i32* @MZ_OPEN_MODE_CREATE, align 4
  %161 = call i64 @mz_stream_os_open(i8* %158, i8* %159, i32 %160)
  store i64 %161, i64* %10, align 8
  %162 = load i64, i64* %10, align 8
  %163 = load i64, i64* @MZ_OK, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %156
  %166 = load i8*, i8** %4, align 8
  %167 = load i8*, i8** %7, align 8
  %168 = load i32, i32* @mz_stream_write, align 4
  %169 = call i64 @mz_zip_reader_entry_save(i8* %166, i8* %167, i32 %168)
  store i64 %169, i64* %10, align 8
  br label %170

170:                                              ; preds = %165, %156
  %171 = load i8*, i8** %7, align 8
  %172 = call i32 @mz_stream_close(i8* %171)
  %173 = call i32 @mz_stream_delete(i8** %7)
  %174 = load i64, i64* %10, align 8
  %175 = load i64, i64* @MZ_OK, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %195

177:                                              ; preds = %170
  %178 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @mz_os_set_file_date(i8* %178, i32 %183, i32 %188, i32 %193)
  br label %195

195:                                              ; preds = %177, %170
  %196 = load i64, i64* %10, align 8
  %197 = load i64, i64* @MZ_OK, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %221

199:                                              ; preds = %195
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @MZ_HOST_SYSTEM(i32 %204)
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @MZ_VERSION_MADEBY_HOST_SYSTEM, align 4
  %212 = call i64 @mz_zip_attrib_convert(i32 %205, i32 %210, i32 %211, i32* %8)
  store i64 %212, i64* %9, align 8
  %213 = load i64, i64* %9, align 8
  %214 = load i64, i64* @MZ_OK, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %199
  %217 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %218 = load i32, i32* %8, align 4
  %219 = call i32 @mz_os_set_file_attribs(i8* %217, i32 %218)
  br label %220

220:                                              ; preds = %216, %199
  br label %221

221:                                              ; preds = %220, %195
  %222 = load i64, i64* %10, align 8
  store i64 %222, i64* %3, align 8
  br label %223

223:                                              ; preds = %221, %147, %137, %109, %79, %32, %22
  %224 = load i64, i64* %3, align 8
  ret i64 %224
}

declare dso_local i64 @mz_zip_reader_is_open(%struct.TYPE_5__*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @mz_path_convert_slashes(i8*, i32) #1

declare dso_local i32 @mz_path_remove_filename(i8*) #1

declare dso_local i64 @mz_zip_entry_is_dir(i32) #1

declare dso_local i64 @mz_zip_entry_is_symlink(i32) #1

declare dso_local i64 @mz_dir_make(i8*) #1

declare dso_local i64 @mz_os_file_exists(i8*) #1

declare dso_local i32 @mz_os_unlink(i8*) #1

declare dso_local i32 @mz_path_remove_slash(i8*) #1

declare dso_local i64 @mz_os_is_dir(i8*) #1

declare dso_local i32 @mz_os_make_symlink(i8*, i32) #1

declare dso_local i32 @mz_stream_os_create(i8**) #1

declare dso_local i64 @mz_stream_os_open(i8*, i8*, i32) #1

declare dso_local i64 @mz_zip_reader_entry_save(i8*, i8*, i32) #1

declare dso_local i32 @mz_stream_close(i8*) #1

declare dso_local i32 @mz_stream_delete(i8**) #1

declare dso_local i32 @mz_os_set_file_date(i8*, i32, i32, i32) #1

declare dso_local i64 @mz_zip_attrib_convert(i32, i32, i32, i32*) #1

declare dso_local i32 @MZ_HOST_SYSTEM(i32) #1

declare dso_local i32 @mz_os_set_file_attribs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
