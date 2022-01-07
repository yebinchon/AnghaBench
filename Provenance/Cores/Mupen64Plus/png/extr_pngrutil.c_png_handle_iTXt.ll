; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngrutil.c_png_handle_iTXt.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngrutil.c_png_handle_iTXt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_14__ = type { i32, i64, i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"in png_handle_iTXt\00", align 1
@PNG_HAVE_IHDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"missing IHDR\00", align 1
@PNG_HAVE_IDAT = common dso_local global i32 0, align 4
@PNG_AFTER_IDAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"bad keyword\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"truncated\00", align 1
@PNG_COMPRESSION_TYPE_BASE = common dso_local global i32 0, align 4
@PNG_SIZE_MAX = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i64 0, align 8
@PNG_ITXT_COMPRESSION_NONE = common dso_local global i32 0, align 4
@PNG_ITXT_COMPRESSION_zTXt = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"insufficient memory\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"bad compression info\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_handle_iTXt(%struct.TYPE_15__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %15 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PNG_HAVE_IHDR, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = call i32 @png_chunk_error(%struct.TYPE_15__* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %3
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load i32, i32* @PNG_AFTER_IDAT, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %25
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i32* @png_read_buffer(%struct.TYPE_15__* %39, i32 %41, i32 1)
  store i32* %42, i32** %8, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @png_crc_finish(%struct.TYPE_15__* %46, i32 %47)
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %50 = call i32 @png_chunk_benign_error(%struct.TYPE_15__* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %265

51:                                               ; preds = %38
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @png_crc_read(%struct.TYPE_15__* %52, i32* %53, i32 %54)
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %57 = call i64 @png_crc_finish(%struct.TYPE_15__* %56, i32 0)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %265

60:                                               ; preds = %51
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %75, %60
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br label %72

72:                                               ; preds = %65, %61
  %73 = phi i1 [ false, %61 ], [ %71, %65 ]
  br i1 %73, label %74, label %78

74:                                               ; preds = %72
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %61

78:                                               ; preds = %72
  %79 = load i32, i32* %9, align 4
  %80 = icmp sgt i32 %79, 79
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %81, %78
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %258

85:                                               ; preds = %81
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 5
  %88 = load i32, i32* %6, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %257

91:                                               ; preds = %85
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %116, label %99

99:                                               ; preds = %91
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %255

107:                                              ; preds = %99
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 2
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @PNG_COMPRESSION_TYPE_BASE, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %255

116:                                              ; preds = %107, %91
  %117 = load i32*, i32** %8, align 8
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 3
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %142, %116
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %128
  %133 = load i32*, i32** %8, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br label %139

139:                                              ; preds = %132, %128
  %140 = phi i1 [ false, %128 ], [ %138, %132 ]
  br i1 %140, label %141, label %145

141:                                              ; preds = %139
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  br label %128

145:                                              ; preds = %139
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %9, align 4
  store i32 %147, i32* %12, align 4
  br label %148

148:                                              ; preds = %162, %145
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %6, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %148
  %153 = load i32*, i32** %8, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br label %159

159:                                              ; preds = %152, %148
  %160 = phi i1 [ false, %148 ], [ %158, %152 ]
  br i1 %160, label %161, label %165

161:                                              ; preds = %159
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %9, align 4
  br label %148

165:                                              ; preds = %159
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %9, align 4
  %168 = load i32, i32* %10, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %165
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %6, align 4
  %173 = icmp sle i32 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* %9, align 4
  %177 = sub nsw i32 %175, %176
  store i32 %177, i32* %13, align 4
  br label %205

178:                                              ; preds = %170, %165
  %179 = load i32, i32* %10, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %203

181:                                              ; preds = %178
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %6, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %203

185:                                              ; preds = %181
  %186 = load i32, i32* @PNG_SIZE_MAX, align 4
  store i32 %186, i32* %13, align 4
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* %9, align 4
  %190 = call i64 @png_decompress_chunk(%struct.TYPE_15__* %187, i32 %188, i32 %189, i32* %13, i32 1)
  %191 = load i64, i64* @Z_STREAM_END, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %185
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 2
  %196 = load i32*, i32** %195, align 8
  store i32* %196, i32** %8, align 8
  br label %202

197:                                              ; preds = %185
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  store i8* %201, i8** %7, align 8
  br label %202

202:                                              ; preds = %197, %193
  br label %204

203:                                              ; preds = %181, %178
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %204

204:                                              ; preds = %203, %202
  br label %205

205:                                              ; preds = %204, %174
  %206 = load i8*, i8** %7, align 8
  %207 = icmp eq i8* %206, null
  br i1 %207, label %208, label %254

208:                                              ; preds = %205
  %209 = load i32*, i32** %8, align 8
  %210 = load i32, i32* %13, align 4
  %211 = load i32, i32* %9, align 4
  %212 = add nsw i32 %210, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %209, i64 %213
  store i32 0, i32* %214, align 4
  %215 = load i32, i32* %10, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %208
  %218 = load i32, i32* @PNG_ITXT_COMPRESSION_NONE, align 4
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 6
  store i32 %218, i32* %219, align 8
  br label %223

220:                                              ; preds = %208
  %221 = load i32, i32* @PNG_ITXT_COMPRESSION_zTXt, align 4
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 6
  store i32 %221, i32* %222, align 8
  br label %223

223:                                              ; preds = %220, %217
  %224 = load i32*, i32** %8, align 8
  %225 = bitcast i32* %224 to i8*
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 5
  store i8* %225, i8** %226, align 8
  %227 = load i32*, i32** %8, align 8
  %228 = bitcast i32* %227 to i8*
  %229 = load i32, i32* %11, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr i8, i8* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 4
  store i8* %231, i8** %232, align 8
  %233 = load i32*, i32** %8, align 8
  %234 = bitcast i32* %233 to i8*
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr i8, i8* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 3
  store i8* %237, i8** %238, align 8
  %239 = load i32*, i32** %8, align 8
  %240 = bitcast i32* %239 to i8*
  %241 = load i32, i32* %9, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr i8, i8* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  store i8* %243, i8** %244, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  store i64 0, i64* %245, align 8
  %246 = load i32, i32* %13, align 4
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  store i32 %246, i32* %247, align 8
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %249 = load i32, i32* %5, align 4
  %250 = call i64 @png_set_text_2(%struct.TYPE_15__* %248, i32 %249, %struct.TYPE_14__* %14, i32 1)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %223
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %253

253:                                              ; preds = %252, %223
  br label %254

254:                                              ; preds = %253, %205
  br label %256

255:                                              ; preds = %107, %99
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %256

256:                                              ; preds = %255, %254
  br label %257

257:                                              ; preds = %256, %90
  br label %258

258:                                              ; preds = %257, %84
  %259 = load i8*, i8** %7, align 8
  %260 = icmp ne i8* %259, null
  br i1 %260, label %261, label %265

261:                                              ; preds = %258
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %263 = load i8*, i8** %7, align 8
  %264 = call i32 @png_chunk_benign_error(%struct.TYPE_15__* %262, i8* %263)
  br label %265

265:                                              ; preds = %45, %59, %261, %258
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_chunk_error(%struct.TYPE_15__*, i8*) #1

declare dso_local i32* @png_read_buffer(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @png_crc_finish(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @png_chunk_benign_error(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @png_crc_read(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i64 @png_decompress_chunk(%struct.TYPE_15__*, i32, i32, i32*, i32) #1

declare dso_local i64 @png_set_text_2(%struct.TYPE_15__*, i32, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
