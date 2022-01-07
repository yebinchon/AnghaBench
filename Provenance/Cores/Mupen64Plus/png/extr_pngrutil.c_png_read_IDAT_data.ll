; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngrutil.c_png_read_IDAT_data.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngrutil.c_png_read_IDAT_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i64, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i32, i64, i8*, i32*, i32* }

@PNG_INFLATE_BUF_SIZE = common dso_local global i32 0, align 4
@png_IDAT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Not enough image data\00", align 1
@ZLIB_IO_MAX = common dso_local global i64 0, align 8
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@PNG_AFTER_IDAT = common dso_local global i32 0, align 4
@PNG_FLAG_ZSTREAM_ENDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Extra compressed data\00", align 1
@Z_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"incorrect data check\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"ADLER32 checksum mismatch\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Too much image data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_read_IDAT_data(%struct.TYPE_14__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  store i32* %14, i32** %17, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i64 0, i64* %6, align 8
  br label %24

24:                                               ; preds = %23, %3
  br label %25

25:                                               ; preds = %219, %24
  %26 = load i32, i32* @PNG_INFLATE_BUF_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %8, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %9, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %91

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %56, %35
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = call i32 @png_crc_finish(%struct.TYPE_14__* %42, i32 0)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = call i64 @png_read_chunk_header(%struct.TYPE_14__* %44)
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @png_IDAT, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = call i32 @png_error(%struct.TYPE_14__* %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %41
  br label %36

57:                                               ; preds = %36
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %61, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %10, align 8
  br label %70

70:                                               ; preds = %66, %57
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %72 = load i64, i64* %10, align 8
  %73 = call i32* @png_read_buffer(%struct.TYPE_14__* %71, i64 %72, i32 0)
  store i32* %73, i32** %11, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @png_crc_read(%struct.TYPE_14__* %74, i32* %75, i64 %76)
  %78 = load i64, i64* %10, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %81, %78
  store i64 %82, i64* %80, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 4
  store i32* %83, i32** %86, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  store i64 %87, i64* %90, align 8
  br label %91

91:                                               ; preds = %70, %25
  %92 = load i32*, i32** %5, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %110

94:                                               ; preds = %91
  %95 = load i64, i64* @ZLIB_IO_MAX, align 8
  store i64 %95, i64* %12, align 8
  %96 = load i64, i64* %12, align 8
  %97 = load i64, i64* %6, align 8
  %98 = icmp sgt i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i64, i64* %6, align 8
  store i64 %100, i64* %12, align 8
  br label %101

101:                                              ; preds = %99, %94
  %102 = load i64, i64* %12, align 8
  %103 = load i64, i64* %6, align 8
  %104 = sub nsw i64 %103, %102
  store i64 %104, i64* %6, align 8
  %105 = load i64, i64* %12, align 8
  %106 = trunc i64 %105 to i32
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 8
  br label %119

110:                                              ; preds = %91
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 3
  store i32* %29, i32** %113, align 8
  %114 = mul nuw i64 4, %27
  %115 = trunc i64 %114 to i32
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 8
  br label %119

119:                                              ; preds = %110, %101
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %121 = load i32, i32* @Z_NO_FLUSH, align 4
  %122 = call i32 @PNG_INFLATE(%struct.TYPE_14__* %120, i32 %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32*, i32** %5, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %133

125:                                              ; preds = %119
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* %6, align 8
  %132 = add nsw i64 %131, %130
  store i64 %132, i64* %6, align 8
  br label %143

133:                                              ; preds = %119
  %134 = mul nuw i64 4, %27
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = sub i64 %134, %139
  %141 = load i64, i64* %6, align 8
  %142 = add i64 %141, %140
  store i64 %142, i64* %6, align 8
  br label %143

143:                                              ; preds = %133, %125
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  store i32 0, i32* %146, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @Z_STREAM_END, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %178

150:                                              ; preds = %143
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 3
  store i32* null, i32** %153, align 8
  %154 = load i32, i32* @PNG_AFTER_IDAT, align 4
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  %159 = load i32, i32* @PNG_FLAG_ZSTREAM_ENDED, align 4
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 8
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp sgt i64 %167, 0
  br i1 %168, label %174, label %169

169:                                              ; preds = %150
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp sgt i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %169, %150
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %176 = call i32 @png_chunk_benign_error(%struct.TYPE_14__* %175, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %177

177:                                              ; preds = %174, %169
  store i32 2, i32* %13, align 4
  br label %215

178:                                              ; preds = %143
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* @Z_OK, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %214

182:                                              ; preds = %178
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %184 = load i32, i32* %7, align 4
  %185 = call i32 @png_zstream_error(%struct.TYPE_14__* %183, i32 %184)
  %186 = load i32*, i32** %5, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %206

188:                                              ; preds = %182
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 2
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @strncmp(i8* %192, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 20)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %188
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %197 = call i32 @png_chunk_benign_error(%struct.TYPE_14__* %196, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 3, i32* %13, align 4
  br label %215

198:                                              ; preds = %188
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 2
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 @png_chunk_error(%struct.TYPE_14__* %199, i8* %203)
  br label %205

205:                                              ; preds = %198
  br label %213

206:                                              ; preds = %182
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 2
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 @png_chunk_benign_error(%struct.TYPE_14__* %207, i8* %211)
  store i32 1, i32* %13, align 4
  br label %215

213:                                              ; preds = %205
  br label %214

214:                                              ; preds = %213, %178
  store i32 0, i32* %13, align 4
  br label %215

215:                                              ; preds = %214, %206, %195, %177
  %216 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %216)
  %217 = load i32, i32* %13, align 4
  switch i32 %217, label %236 [
    i32 0, label %218
    i32 2, label %222
    i32 3, label %219
    i32 1, label %235
  ]

218:                                              ; preds = %215
  br label %219

219:                                              ; preds = %218, %215
  %220 = load i64, i64* %6, align 8
  %221 = icmp sgt i64 %220, 0
  br i1 %221, label %25, label %222

222:                                              ; preds = %219, %215
  %223 = load i64, i64* %6, align 8
  %224 = icmp sgt i64 %223, 0
  br i1 %224, label %225, label %235

225:                                              ; preds = %222
  %226 = load i32*, i32** %5, align 8
  %227 = icmp ne i32* %226, null
  br i1 %227, label %228, label %231

228:                                              ; preds = %225
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %230 = call i32 @png_error(%struct.TYPE_14__* %229, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %234

231:                                              ; preds = %225
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %233 = call i32 @png_chunk_benign_error(%struct.TYPE_14__* %232, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %234

234:                                              ; preds = %231, %228
  br label %235

235:                                              ; preds = %215, %234, %222
  ret void

236:                                              ; preds = %215
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @png_crc_finish(%struct.TYPE_14__*, i32) #2

declare dso_local i64 @png_read_chunk_header(%struct.TYPE_14__*) #2

declare dso_local i32 @png_error(%struct.TYPE_14__*, i8*) #2

declare dso_local i32* @png_read_buffer(%struct.TYPE_14__*, i64, i32) #2

declare dso_local i32 @png_crc_read(%struct.TYPE_14__*, i32*, i64) #2

declare dso_local i32 @PNG_INFLATE(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @png_chunk_benign_error(%struct.TYPE_14__*, i8*) #2

declare dso_local i32 @png_zstream_error(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @png_chunk_error(%struct.TYPE_14__*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
