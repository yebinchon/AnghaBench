; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_archive_file_7z.c_sevenzip_file_read.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_archive_file_7z.c_sevenzip_file_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32, i32* }
%struct.TYPE_24__ = type { i8*, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_23__, %struct.TYPE_22__, i32*, i32*, i32*, i32*, i32*, i64, i64 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_25__*, i64, i64, i32*, i32*, i32*, i32* }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_22__ = type { i64, i32* }

@sevenzip_stream_alloc_impl = common dso_local global i32 0, align 4
@sevenzip_stream_free_impl = common dso_local global i8* null, align 8
@sevenzip_stream_alloc_tmp_impl = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i64 0, align 8
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@SZ_ERROR_MEM = common dso_local global i64 0, align 8
@SZ_ERROR_FAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8**, i8*)* @sevenzip_file_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sevenzip_file_read(i8* %0, i8* %1, i8** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_28__, align 4
  %11 = alloca %struct.TYPE_27__, align 8
  %12 = alloca %struct.TYPE_24__, align 8
  %13 = alloca %struct.TYPE_24__, align 8
  %14 = alloca %struct.TYPE_26__, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.TYPE_25__*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* null, i32** %15, align 8
  store i64 -1, i64* %16, align 8
  %32 = load i32, i32* @sevenzip_stream_alloc_impl, align 4
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = load i8*, i8** @sevenzip_stream_free_impl, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = load i32, i32* @sevenzip_stream_alloc_tmp_impl, align 4
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 1
  store i32 %36, i32* %37, align 8
  %38 = load i8*, i8** @sevenzip_stream_free_impl, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %10, i32 0, i32 0
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @InFile_Open(i32* %40, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %226

45:                                               ; preds = %4
  %46 = call i32 @FileInStream_CreateVTable(%struct.TYPE_28__* %10)
  %47 = call i32 @LookToRead_CreateVTable(%struct.TYPE_27__* %11, i32 0)
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %10, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 1
  store i32* %48, i32** %49, align 8
  %50 = call i32 @LookToRead_Init(%struct.TYPE_27__* %11)
  %51 = call i32 (...) @CrcGenerateTable()
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 7
  store i32* null, i32** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 6
  store i32* null, i32** %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 5
  store i32* null, i32** %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 4
  store i32* null, i32** %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 1
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 8
  store i64 0, i64* %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 7
  store i64 0, i64* %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 6
  store i32* null, i32** %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 5
  store i32* null, i32** %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 4
  store i32* null, i32** %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 3
  store i32* null, i32** %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 2
  store i32* null, i32** %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 1
  store i32* null, i32** %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = call i32 @SzArEx_Init(%struct.TYPE_26__* %14)
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 0
  %81 = call i64 @SzArEx_Open(%struct.TYPE_26__* %14, i32* %80, %struct.TYPE_24__* %12, %struct.TYPE_24__* %13)
  %82 = load i64, i64* @SZ_OK, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %220

84:                                               ; preds = %45
  store i32 0, i32* %18, align 4
  store i32* null, i32** %19, align 8
  store i64 0, i64* %20, align 8
  store i64 4294967295, i64* %21, align 8
  %85 = load i64, i64* @SZ_OK, align 8
  store i64 %85, i64* %22, align 8
  store i64 0, i64* %17, align 8
  br label %86

86:                                               ; preds = %200, %84
  %87 = load i64, i64* %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %87, %90
  br i1 %91, label %92, label %203

92:                                               ; preds = %86
  %93 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %94 = zext i32 %93 to i64
  %95 = call i8* @llvm.stacksave()
  store i8* %95, i8** %24, align 8
  %96 = alloca i8, i64 %94, align 16
  store i64 %94, i64* %25, align 8
  store i64 0, i64* %26, align 8
  store i64 0, i64* %27, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %98, align 8
  %100 = load i64, i64* %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i64 %100
  store %struct.TYPE_25__* %101, %struct.TYPE_25__** %28, align 8
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %92
  store i32 4, i32* %29, align 4
  br label %196

107:                                              ; preds = %92
  %108 = load i64, i64* %17, align 8
  %109 = call i64 @SzArEx_GetFileNameUtf16(%struct.TYPE_26__* %14, i64 %108, i32* null)
  store i64 %109, i64* %23, align 8
  %110 = load i64, i64* %23, align 8
  %111 = load i64, i64* %20, align 8
  %112 = icmp ugt i64 %110, %111
  br i1 %112, label %113, label %130

113:                                              ; preds = %107
  %114 = load i32*, i32** %19, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32*, i32** %19, align 8
  %118 = call i32 @free(i32* %117)
  br label %119

119:                                              ; preds = %116, %113
  %120 = load i64, i64* %23, align 8
  store i64 %120, i64* %20, align 8
  %121 = load i64, i64* %20, align 8
  %122 = mul i64 %121, 4
  %123 = call i8* @malloc(i64 %122)
  %124 = bitcast i8* %123 to i32*
  store i32* %124, i32** %19, align 8
  %125 = load i32*, i32** %19, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  %128 = load i64, i64* @SZ_ERROR_MEM, align 8
  store i64 %128, i64* %22, align 8
  store i32 2, i32* %29, align 4
  br label %196

129:                                              ; preds = %119
  br label %130

130:                                              ; preds = %129, %107
  %131 = load i64, i64* %17, align 8
  %132 = load i32*, i32** %19, align 8
  %133 = call i64 @SzArEx_GetFileNameUtf16(%struct.TYPE_26__* %14, i64 %131, i32* %132)
  %134 = load i64, i64* @SZ_ERROR_FAIL, align 8
  store i64 %134, i64* %22, align 8
  %135 = getelementptr inbounds i8, i8* %96, i64 0
  store i8 0, i8* %135, align 16
  %136 = load i32*, i32** %19, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %149

138:                                              ; preds = %130
  %139 = load i32*, i32** %19, align 8
  %140 = trunc i64 %94 to i32
  %141 = call i64 @utf16_to_char_string(i32* %139, i8* %96, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load i64, i64* @SZ_OK, align 8
  br label %147

145:                                              ; preds = %138
  %146 = load i64, i64* @SZ_ERROR_FAIL, align 8
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i64 [ %144, %143 ], [ %146, %145 ]
  store i64 %148, i64* %22, align 8
  br label %149

149:                                              ; preds = %147, %130
  %150 = load i8*, i8** %7, align 8
  %151 = call i64 @string_is_equal(i8* %96, i8* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %195

153:                                              ; preds = %149
  store i64 0, i64* %30, align 8
  store i32 1, i32* %18, align 4
  %154 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 0
  %155 = load i64, i64* %17, align 8
  %156 = call i64 @SzArEx_Extract(%struct.TYPE_26__* %14, i32* %154, i64 %155, i64* %21, i32** %15, i64* %30, i64* %26, i64* %27, %struct.TYPE_24__* %12, %struct.TYPE_24__* %13)
  store i64 %156, i64* %22, align 8
  %157 = load i64, i64* %22, align 8
  %158 = load i64, i64* @SZ_OK, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  store i32 2, i32* %29, align 4
  br label %196

161:                                              ; preds = %153
  %162 = load i64, i64* %27, align 8
  store i64 %162, i64* %16, align 8
  %163 = load i8*, i8** %9, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %178

165:                                              ; preds = %161
  %166 = load i32*, i32** %15, align 8
  %167 = load i64, i64* %26, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = bitcast i32* %168 to i8*
  store i8* %169, i8** %31, align 8
  %170 = load i8*, i8** %9, align 8
  %171 = load i8*, i8** %31, align 8
  %172 = load i64, i64* %16, align 8
  %173 = call i32 @filestream_write_file(i8* %170, i8* %171, i64 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %165
  %176 = load i64, i64* @SZ_OK, align 8
  store i64 %176, i64* %22, align 8
  store i32 1, i32* %18, align 4
  store i64 -1, i64* %16, align 8
  br label %177

177:                                              ; preds = %175, %165
  br label %194

178:                                              ; preds = %161
  %179 = load i64, i64* %16, align 8
  %180 = add nsw i64 %179, 1
  %181 = call i8* @malloc(i64 %180)
  %182 = load i8**, i8*** %8, align 8
  store i8* %181, i8** %182, align 8
  %183 = load i8**, i8*** %8, align 8
  %184 = load i8*, i8** %183, align 8
  %185 = load i64, i64* %16, align 8
  %186 = getelementptr inbounds i8, i8* %184, i64 %185
  store i8 0, i8* %186, align 1
  %187 = load i8**, i8*** %8, align 8
  %188 = load i8*, i8** %187, align 8
  %189 = load i32*, i32** %15, align 8
  %190 = load i64, i64* %26, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  %192 = load i64, i64* %16, align 8
  %193 = call i32 @memcpy(i8* %188, i32* %191, i64 %192)
  br label %194

194:                                              ; preds = %178, %177
  store i32 2, i32* %29, align 4
  br label %196

195:                                              ; preds = %149
  store i32 0, i32* %29, align 4
  br label %196

196:                                              ; preds = %195, %194, %160, %127, %106
  %197 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %197)
  %198 = load i32, i32* %29, align 4
  switch i32 %198, label %228 [
    i32 0, label %199
    i32 4, label %200
    i32 2, label %203
  ]

199:                                              ; preds = %196
  br label %200

200:                                              ; preds = %199, %196
  %201 = load i64, i64* %17, align 8
  %202 = add nsw i64 %201, 1
  store i64 %202, i64* %17, align 8
  br label %86

203:                                              ; preds = %196, %86
  %204 = load i32*, i32** %19, align 8
  %205 = icmp ne i32* %204, null
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load i32*, i32** %19, align 8
  %208 = call i32 @free(i32* %207)
  br label %209

209:                                              ; preds = %206, %203
  %210 = load i32*, i32** %15, align 8
  %211 = call i32 @IAlloc_Free(%struct.TYPE_24__* %12, i32* %210)
  %212 = load i32, i32* %18, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %209
  %215 = load i64, i64* %22, align 8
  %216 = load i64, i64* @SZ_OK, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %219, label %218

218:                                              ; preds = %214, %209
  store i64 -1, i64* %16, align 8
  br label %219

219:                                              ; preds = %218, %214
  br label %220

220:                                              ; preds = %219, %45
  %221 = call i32 @SzArEx_Free(%struct.TYPE_26__* %14, %struct.TYPE_24__* %12)
  %222 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %10, i32 0, i32 0
  %223 = call i32 @File_Close(i32* %222)
  %224 = load i64, i64* %16, align 8
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %5, align 4
  br label %226

226:                                              ; preds = %220, %44
  %227 = load i32, i32* %5, align 4
  ret i32 %227

228:                                              ; preds = %196
  unreachable
}

declare dso_local i64 @InFile_Open(i32*, i8*) #1

declare dso_local i32 @FileInStream_CreateVTable(%struct.TYPE_28__*) #1

declare dso_local i32 @LookToRead_CreateVTable(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @LookToRead_Init(%struct.TYPE_27__*) #1

declare dso_local i32 @CrcGenerateTable(...) #1

declare dso_local i32 @SzArEx_Init(%struct.TYPE_26__*) #1

declare dso_local i64 @SzArEx_Open(%struct.TYPE_26__*, i32*, %struct.TYPE_24__*, %struct.TYPE_24__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @SzArEx_GetFileNameUtf16(%struct.TYPE_26__*, i64, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @utf16_to_char_string(i32*, i8*, i32) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i64 @SzArEx_Extract(%struct.TYPE_26__*, i32*, i64, i64*, i32**, i64*, i64*, i64*, %struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @filestream_write_file(i8*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @IAlloc_Free(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @SzArEx_Free(%struct.TYPE_26__*, %struct.TYPE_24__*) #1

declare dso_local i32 @File_Close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
