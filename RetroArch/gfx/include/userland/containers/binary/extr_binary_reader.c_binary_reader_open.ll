; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/binary/extr_binary_reader.c_binary_reader_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/binary/extr_binary_reader.c_binary_reader_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i64, i32 }
%struct.TYPE_13__ = type { i64, i32, i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_18__** }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32 }

@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"container\00", align 1
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i32 0, align 4
@extension_to_format_table = common dso_local global %struct.TYPE_19__* null, align 8
@bin_extension_to_format_table = common dso_local global %struct.TYPE_13__* null, align 8
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@DEFAULT_BLOCK_SIZE = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_JPEG = common dso_local global i64 0, align 8
@DEFAULT_JPEG_BLOCK_SIZE = common dso_local global i32 0, align 4
@binary_reader_close = common dso_local global i32 0, align 4
@binary_reader_read = common dso_local global i32 0, align 4
@binary_reader_seek = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"binary: error opening stream (%i)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @binary_reader_open(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i8* @vc_uri_path_extension(i32 %14)
  store i8* %15, i8** %4, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  %16 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 4
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @vc_uri_find_query(i32 %21, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %4)
  %23 = load i8*, i8** %4, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @vc_uri_path(i32 %30)
  %32 = icmp ne i8* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %25, %1
  %34 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 4
  store i32 %34, i32* %2, align 4
  br label %240

35:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %68, %35
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** @extension_to_format_table, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %71

44:                                               ; preds = %36
  %45 = load i8*, i8** %4, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** @extension_to_format_table, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @strcasecmp(i8* %45, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %68

55:                                               ; preds = %44
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** @extension_to_format_table, align 8
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %7, align 4
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** @extension_to_format_table, align 8
  %63 = load i32, i32* %9, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %8, align 8
  br label %71

68:                                               ; preds = %54
  %69 = load i32, i32* %9, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %36

71:                                               ; preds = %55, %36
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** @extension_to_format_table, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %71
  %80 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 4
  store i32 %80, i32* %2, align 4
  br label %240

81:                                               ; preds = %71
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %134, %81
  %83 = load i64, i64* %8, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %82
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** @bin_extension_to_format_table, align 8
  %87 = load i32, i32* %9, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br label %93

93:                                               ; preds = %85, %82
  %94 = phi i1 [ false, %82 ], [ %92, %85 ]
  br i1 %94, label %95, label %137

95:                                               ; preds = %93
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = call i8* @vc_uri_path(i32 %100)
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** @bin_extension_to_format_table, align 8
  %103 = load i32, i32* %9, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @strstr(i8* %101, i64 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %95
  %111 = load i8*, i8** %4, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** @bin_extension_to_format_table, align 8
  %113 = load i32, i32* %9, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @strstr(i8* %111, i64 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %110
  br label %134

121:                                              ; preds = %110, %95
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** @bin_extension_to_format_table, align 8
  %123 = load i32, i32* %9, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %7, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** @bin_extension_to_format_table, align 8
  %129 = load i32, i32* %9, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %8, align 8
  br label %137

134:                                              ; preds = %120
  %135 = load i32, i32* %9, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %82

137:                                              ; preds = %121, %93
  %138 = load i64, i64* %8, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 4
  store i32 %141, i32* %2, align 4
  br label %240

142:                                              ; preds = %137
  %143 = call %struct.TYPE_17__* @malloc(i32 24)
  store %struct.TYPE_17__* %143, %struct.TYPE_17__** %5, align 8
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %145 = icmp ne %struct.TYPE_17__* %144, null
  br i1 %145, label %148, label %146

146:                                              ; preds = %142
  %147 = load i32, i32* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 4
  store i32 %147, i32* %6, align 4
  br label %235

148:                                              ; preds = %142
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %150 = call i32 @memset(%struct.TYPE_17__* %149, i32 0, i32 24)
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 3
  store %struct.TYPE_17__* %151, %struct.TYPE_17__** %155, align 8
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  store i32 1, i32* %157, align 8
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 2
  store %struct.TYPE_18__** %159, %struct.TYPE_18__*** %161, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %163 = call %struct.TYPE_18__* @vc_container_allocate_track(%struct.TYPE_16__* %162, i32 0)
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %166, i64 0
  store %struct.TYPE_18__* %163, %struct.TYPE_18__** %167, align 8
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %170, i64 0
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %171, align 8
  %173 = icmp ne %struct.TYPE_18__* %172, null
  br i1 %173, label %176, label %174

174:                                              ; preds = %148
  %175 = load i32, i32* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 4
  store i32 %175, i32* %2, align 4
  br label %240

176:                                              ; preds = %148
  %177 = load i32, i32* %7, align 4
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %180, i64 0
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 1
  store i32 %177, i32* %185, align 8
  %186 = load i64, i64* %8, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %189, i64 0
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  store i64 %186, i64* %194, align 8
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %197, i64 0
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 0
  store i32 1, i32* %200, align 8
  %201 = load i32, i32* @DEFAULT_BLOCK_SIZE, align 4
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  %204 = load i64, i64* %8, align 8
  %205 = load i64, i64* @VC_CONTAINER_CODEC_JPEG, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %176
  %208 = load i32, i32* @DEFAULT_JPEG_BLOCK_SIZE, align 4
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 1
  store i32 %208, i32* %210, align 4
  br label %211

211:                                              ; preds = %207, %176
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 2
  store i32 %214, i32* %216, align 8
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 0
  store i32 1, i32* %218, align 8
  %219 = load i32, i32* @binary_reader_close, align 4
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 2
  store i32 %219, i32* %223, align 8
  %224 = load i32, i32* @binary_reader_read, align 4
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 1
  store i32 %224, i32* %228, align 4
  %229 = load i32, i32* @binary_reader_seek, align 4
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 0
  store i32 %229, i32* %233, align 8
  %234 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %234, i32* %2, align 4
  br label %240

235:                                              ; preds = %146
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %237 = load i32, i32* %6, align 4
  %238 = call i32 @LOG_DEBUG(%struct.TYPE_16__* %236, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %237)
  %239 = load i32, i32* %6, align 4
  store i32 %239, i32* %2, align 4
  br label %240

240:                                              ; preds = %235, %211, %174, %140, %79, %33
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

declare dso_local i8* @vc_uri_path_extension(i32) #1

declare dso_local i32 @vc_uri_find_query(i32, i32, i8*, i8**) #1

declare dso_local i8* @vc_uri_path(i32) #1

declare dso_local i64 @strcasecmp(i8*, i64) #1

declare dso_local i32 @strstr(i8*, i64) #1

declare dso_local %struct.TYPE_17__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local %struct.TYPE_18__* @vc_container_allocate_track(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @LOG_DEBUG(%struct.TYPE_16__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
