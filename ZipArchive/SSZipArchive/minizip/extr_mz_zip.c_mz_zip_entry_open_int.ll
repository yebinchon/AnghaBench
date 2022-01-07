; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip.c_mz_zip_entry_open_int.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip.c_mz_zip_entry_open_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64, i32*, i32*, %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i64, i32, i32, i64 }

@MZ_OK = common dso_local global i64 0, align 8
@MZ_PARAM_ERROR = common dso_local global i64 0, align 8
@MZ_SUPPORT_ERROR = common dso_local global i64 0, align 8
@MZ_ZIP_FLAG_ENCRYPTED = common dso_local global i32 0, align 4
@MZ_OPEN_MODE_WRITE = common dso_local global i32 0, align 4
@MZ_OPEN_MODE_READ = common dso_local global i32 0, align 4
@MZ_STREAM_PROP_COMPRESS_LEVEL = common dso_local global i32 0, align 4
@MZ_STREAM_PROP_TOTAL_IN_MAX = common dso_local global i32 0, align 4
@MZ_STREAM_PROP_HEADER_SIZE = common dso_local global i32 0, align 4
@MZ_STREAM_PROP_FOOTER_SIZE = common dso_local global i32 0, align 4
@MZ_ZIP_FLAG_LZMA_EOS_MARKER = common dso_local global i32 0, align 4
@MZ_STREAM_PROP_TOTAL_OUT_MAX = common dso_local global i32 0, align 4
@MZ_ZIP_FLAG_DATA_DESCRIPTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i64, i8*)* @mz_zip_entry_open_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mz_zip_entry_open_int(i8* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %18 = load i64, i64* @MZ_OK, align 8
  store i64 %18, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %20 = icmp eq %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %22, i64* %5, align 8
  br label %277

23:                                               ; preds = %4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %30 [
    i32 128, label %28
    i32 130, label %28
  ]

28:                                               ; preds = %23, %23
  %29 = load i64, i64* @MZ_OK, align 8
  store i64 %29, i64* %14, align 8
  br label %32

30:                                               ; preds = %23
  %31 = load i64, i64* @MZ_SUPPORT_ERROR, align 8
  store i64 %31, i64* %5, align 8
  br label %277

32:                                               ; preds = %28
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 7
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i64, i64* @MZ_SUPPORT_ERROR, align 8
  store i64 %39, i64* %5, align 8
  br label %277

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MZ_ZIP_FLAG_ENCRYPTED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %40
  %52 = load i8*, i8** %9, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %78

54:                                               ; preds = %51
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MZ_OPEN_MODE_WRITE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  store i32 1, i32* %15, align 4
  br label %67

67:                                               ; preds = %66, %61
  br label %77

68:                                               ; preds = %54
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MZ_OPEN_MODE_READ, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 1, i32* %15, align 4
  br label %76

76:                                               ; preds = %75, %68
  br label %77

77:                                               ; preds = %76, %67
  br label %78

78:                                               ; preds = %77, %51, %40
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* @MZ_OK, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %86

86:                                               ; preds = %85, %82, %78
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* @MZ_OK, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %114

90:                                               ; preds = %86
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 5
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 5
  %98 = call i32 @mz_stream_raw_create(i32** %97)
  br label %99

99:                                               ; preds = %95, %90
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 5
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 7
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @mz_stream_set_base(i32* %102, i32* %105)
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 5
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @mz_stream_open(i32* %109, i32* null, i32 %112)
  store i64 %113, i64* %14, align 8
  br label %114

114:                                              ; preds = %99, %86
  %115 = load i64, i64* %14, align 8
  %116 = load i64, i64* @MZ_OK, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %136

118:                                              ; preds = %114
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %118
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 6
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 128
  br i1 %128, label %129, label %133

129:                                              ; preds = %123, %118
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 4
  %132 = call i32 @mz_stream_raw_create(i32** %131)
  br label %135

133:                                              ; preds = %123
  %134 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %134, i64* %14, align 8
  br label %135

135:                                              ; preds = %133, %129
  br label %136

136:                                              ; preds = %135, %114
  %137 = load i64, i64* %14, align 8
  %138 = load i64, i64* @MZ_OK, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %263

140:                                              ; preds = %136
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @MZ_OPEN_MODE_WRITE, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %140
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* @MZ_STREAM_PROP_COMPRESS_LEVEL, align 4
  %152 = load i64, i64* %8, align 8
  %153 = call i32 @mz_stream_set_prop_int64(i32* %150, i32 %151, i64 %152)
  br label %248

154:                                              ; preds = %140
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %173, label %159

159:                                              ; preds = %154
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 6
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %163, 128
  br i1 %164, label %173, label %165

165:                                              ; preds = %159
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 6
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @MZ_ZIP_FLAG_ENCRYPTED, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %214

173:                                              ; preds = %165, %159, %154
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 6
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %11, align 8
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 5
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* @MZ_STREAM_PROP_TOTAL_IN_MAX, align 4
  %182 = load i64, i64* %11, align 8
  %183 = call i32 @mz_stream_set_prop_int64(i32* %180, i32 %181, i64 %182)
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 5
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* @MZ_STREAM_PROP_HEADER_SIZE, align 4
  %188 = call i64 @mz_stream_get_prop_int64(i32* %186, i32 %187, i64* %12)
  %189 = load i64, i64* @MZ_OK, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %173
  %192 = load i64, i64* %12, align 8
  %193 = load i64, i64* %11, align 8
  %194 = sub nsw i64 %193, %192
  store i64 %194, i64* %11, align 8
  br label %195

195:                                              ; preds = %191, %173
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 5
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* @MZ_STREAM_PROP_FOOTER_SIZE, align 4
  %200 = call i64 @mz_stream_get_prop_int64(i32* %198, i32 %199, i64* %13)
  %201 = load i64, i64* @MZ_OK, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %195
  %204 = load i64, i64* %13, align 8
  %205 = load i64, i64* %11, align 8
  %206 = sub nsw i64 %205, %204
  store i64 %206, i64* %11, align 8
  br label %207

207:                                              ; preds = %203, %195
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 4
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* @MZ_STREAM_PROP_TOTAL_IN_MAX, align 4
  %212 = load i64, i64* %11, align 8
  %213 = call i32 @mz_stream_set_prop_int64(i32* %210, i32 %211, i64 %212)
  br label %214

214:                                              ; preds = %207, %165
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 6
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp eq i32 %218, 129
  br i1 %219, label %220, label %247

220:                                              ; preds = %214
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 6
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @MZ_ZIP_FLAG_LZMA_EOS_MARKER, align 4
  %226 = and i32 %224, %225
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %247

228:                                              ; preds = %220
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 4
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* @MZ_STREAM_PROP_TOTAL_IN_MAX, align 4
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 6
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = call i32 @mz_stream_set_prop_int64(i32* %231, i32 %232, i64 %236)
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 4
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* @MZ_STREAM_PROP_TOTAL_OUT_MAX, align 4
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 6
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @mz_stream_set_prop_int64(i32* %240, i32 %241, i64 %245)
  br label %247

247:                                              ; preds = %228, %220, %214
  br label %248

248:                                              ; preds = %247, %147
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 4
  %251 = load i32*, i32** %250, align 8
  %252 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 5
  %254 = load i32*, i32** %253, align 8
  %255 = call i32 @mz_stream_set_base(i32* %251, i32* %254)
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 4
  %258 = load i32*, i32** %257, align 8
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = call i64 @mz_stream_open(i32* %258, i32* null, i32 %261)
  store i64 %262, i64* %14, align 8
  br label %263

263:                                              ; preds = %248, %136
  %264 = load i64, i64* %14, align 8
  %265 = load i64, i64* @MZ_OK, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %272

267:                                              ; preds = %263
  %268 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 2
  store i32 1, i32* %269, align 8
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 3
  store i64 0, i64* %271, align 8
  br label %275

272:                                              ; preds = %263
  %273 = load i8*, i8** %6, align 8
  %274 = call i32 @mz_zip_entry_close_int(i8* %273)
  br label %275

275:                                              ; preds = %272, %267
  %276 = load i64, i64* %14, align 8
  store i64 %276, i64* %5, align 8
  br label %277

277:                                              ; preds = %275, %38, %30, %21
  %278 = load i64, i64* %5, align 8
  ret i64 %278
}

declare dso_local i32 @mz_stream_raw_create(i32**) #1

declare dso_local i32 @mz_stream_set_base(i32*, i32*) #1

declare dso_local i64 @mz_stream_open(i32*, i32*, i32) #1

declare dso_local i32 @mz_stream_set_prop_int64(i32*, i32, i64) #1

declare dso_local i64 @mz_stream_get_prop_int64(i32*, i32, i64*) #1

declare dso_local i32 @mz_zip_entry_close_int(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
