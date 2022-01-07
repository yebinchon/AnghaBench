; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngrutil.c_png_handle_sPLT.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngrutil.c_png_handle_sPLT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_18__*, i64 }
%struct.TYPE_18__ = type { i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [19 x i8] c"in png_handle_sPLT\00", align 1
@PNG_HAVE_IHDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"missing IHDR\00", align 1
@PNG_HAVE_IDAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"out of place\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"malformed sPLT chunk\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"sPLT chunk has bad length\00", align 1
@PNG_SIZE_MAX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"sPLT chunk too long\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"sPLT chunk requires too much memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_handle_sPLT(%struct.TYPE_16__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_17__, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %14, align 4
  %17 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PNG_HAVE_IHDR, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = call i32 @png_chunk_error(%struct.TYPE_16__* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %41

27:                                               ; preds = %3
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @png_crc_finish(%struct.TYPE_16__* %35, i32 %36)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = call i32 @png_chunk_benign_error(%struct.TYPE_16__* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %265

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %24
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = add i32 %43, 1
  %45 = call i64* @png_read_buffer(%struct.TYPE_16__* %42, i32 %44, i32 2)
  store i64* %45, i64** %8, align 8
  %46 = load i64*, i64** %8, align 8
  %47 = icmp eq i64* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @png_crc_finish(%struct.TYPE_16__* %49, i32 %50)
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %53 = call i32 @png_chunk_benign_error(%struct.TYPE_16__* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %265

54:                                               ; preds = %41
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %56 = load i64*, i64** %8, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @png_crc_read(%struct.TYPE_16__* %55, i64* %56, i32 %57)
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call i64 @png_crc_finish(%struct.TYPE_16__* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %265

64:                                               ; preds = %54
  %65 = load i64*, i64** %8, align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  store i64 0, i64* %68, align 8
  %69 = load i64*, i64** %8, align 8
  store i64* %69, i64** %7, align 8
  br label %70

70:                                               ; preds = %75, %64
  %71 = load i64*, i64** %7, align 8
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74
  %76 = load i64*, i64** %7, align 8
  %77 = getelementptr inbounds i64, i64* %76, i32 1
  store i64* %77, i64** %7, align 8
  br label %70

78:                                               ; preds = %70
  %79 = load i64*, i64** %7, align 8
  %80 = getelementptr inbounds i64, i64* %79, i32 1
  store i64* %80, i64** %7, align 8
  %81 = load i32, i32* %6, align 4
  %82 = icmp ult i32 %81, 2
  br i1 %82, label %91, label %83

83:                                               ; preds = %78
  %84 = load i64*, i64** %7, align 8
  %85 = load i64*, i64** %8, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sub i32 %86, 2
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %85, i64 %88
  %90 = icmp ugt i64* %84, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %83, %78
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %93 = call i32 @png_warning(%struct.TYPE_16__* %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %265

94:                                               ; preds = %83
  %95 = load i64*, i64** %7, align 8
  %96 = getelementptr inbounds i64, i64* %95, i32 1
  store i64* %96, i64** %7, align 8
  %97 = load i64, i64* %95, align 8
  %98 = trunc i64 %97 to i32
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  store i32 %98, i32* %99, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 8
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 6, i32 10
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i64*, i64** %7, align 8
  %107 = load i64*, i64** %8, align 8
  %108 = ptrtoint i64* %106 to i64
  %109 = ptrtoint i64* %107 to i64
  %110 = sub i64 %108, %109
  %111 = sdiv exact i64 %110, 8
  %112 = trunc i64 %111 to i32
  %113 = sub i32 %105, %112
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %12, align 4
  %116 = urem i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %94
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %120 = call i32 @png_warning(%struct.TYPE_16__* %119, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %265

121:                                              ; preds = %94
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %12, align 4
  %124 = udiv i32 %122, %123
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* @PNG_SIZE_MAX, align 4
  %126 = sext i32 %125 to i64
  %127 = udiv i64 %126, 4
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %16, align 4
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* %16, align 4
  %131 = icmp ugt i32 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %121
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %134 = call i32 @png_warning(%struct.TYPE_16__* %133, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %265

135:                                              ; preds = %121
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %12, align 4
  %138 = udiv i32 %136, %137
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  store i32 %138, i32* %139, align 4
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = mul i64 %143, 4
  %145 = trunc i64 %144 to i32
  %146 = call i64 @png_malloc_warn(%struct.TYPE_16__* %140, i32 %145)
  %147 = inttoptr i64 %146 to %struct.TYPE_18__*
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 2
  store %struct.TYPE_18__* %147, %struct.TYPE_18__** %148, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 2
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %149, align 8
  %151 = icmp eq %struct.TYPE_18__* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %135
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %154 = call i32 @png_warning(%struct.TYPE_16__* %153, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  br label %265

155:                                              ; preds = %135
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 2
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %156, align 8
  store %struct.TYPE_18__* %157, %struct.TYPE_18__** %10, align 8
  store i32 0, i32* %13, align 4
  br label %158

158:                                              ; preds = %251, %155
  %159 = load i32, i32* %13, align 4
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp slt i32 %159, %161
  br i1 %162, label %163, label %254

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %165, 8
  br i1 %166, label %167, label %204

167:                                              ; preds = %163
  %168 = load i64*, i64** %7, align 8
  %169 = getelementptr inbounds i64, i64* %168, i32 1
  store i64* %169, i64** %7, align 8
  %170 = load i64, i64* %168, align 8
  %171 = inttoptr i64 %170 to i8*
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 4
  store i8* %171, i8** %176, align 8
  %177 = load i64*, i64** %7, align 8
  %178 = getelementptr inbounds i64, i64* %177, i32 1
  store i64* %178, i64** %7, align 8
  %179 = load i64, i64* %177, align 8
  %180 = inttoptr i64 %179 to i8*
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 3
  store i8* %180, i8** %185, align 8
  %186 = load i64*, i64** %7, align 8
  %187 = getelementptr inbounds i64, i64* %186, i32 1
  store i64* %187, i64** %7, align 8
  %188 = load i64, i64* %186, align 8
  %189 = inttoptr i64 %188 to i8*
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %191 = load i32, i32* %13, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 2
  store i8* %189, i8** %194, align 8
  %195 = load i64*, i64** %7, align 8
  %196 = getelementptr inbounds i64, i64* %195, i32 1
  store i64* %196, i64** %7, align 8
  %197 = load i64, i64* %195, align 8
  %198 = inttoptr i64 %197 to i8*
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %200 = load i32, i32* %13, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 1
  store i8* %198, i8** %203, align 8
  br label %241

204:                                              ; preds = %163
  %205 = load i64*, i64** %7, align 8
  %206 = call i8* @png_get_uint_16(i64* %205)
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 4
  store i8* %206, i8** %211, align 8
  %212 = load i64*, i64** %7, align 8
  %213 = getelementptr inbounds i64, i64* %212, i64 2
  store i64* %213, i64** %7, align 8
  %214 = load i64*, i64** %7, align 8
  %215 = call i8* @png_get_uint_16(i64* %214)
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %217 = load i32, i32* %13, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 3
  store i8* %215, i8** %220, align 8
  %221 = load i64*, i64** %7, align 8
  %222 = getelementptr inbounds i64, i64* %221, i64 2
  store i64* %222, i64** %7, align 8
  %223 = load i64*, i64** %7, align 8
  %224 = call i8* @png_get_uint_16(i64* %223)
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %226 = load i32, i32* %13, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 2
  store i8* %224, i8** %229, align 8
  %230 = load i64*, i64** %7, align 8
  %231 = getelementptr inbounds i64, i64* %230, i64 2
  store i64* %231, i64** %7, align 8
  %232 = load i64*, i64** %7, align 8
  %233 = call i8* @png_get_uint_16(i64* %232)
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %235 = load i32, i32* %13, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 1
  store i8* %233, i8** %238, align 8
  %239 = load i64*, i64** %7, align 8
  %240 = getelementptr inbounds i64, i64* %239, i64 2
  store i64* %240, i64** %7, align 8
  br label %241

241:                                              ; preds = %204, %167
  %242 = load i64*, i64** %7, align 8
  %243 = call i8* @png_get_uint_16(i64* %242)
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %245 = load i32, i32* %13, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 0
  store i8* %243, i8** %248, align 8
  %249 = load i64*, i64** %7, align 8
  %250 = getelementptr inbounds i64, i64* %249, i64 2
  store i64* %250, i64** %7, align 8
  br label %251

251:                                              ; preds = %241
  %252 = load i32, i32* %13, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %13, align 4
  br label %158

254:                                              ; preds = %158
  %255 = load i64*, i64** %8, align 8
  %256 = ptrtoint i64* %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 3
  store i64 %256, i64* %257, align 8
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %259 = load i32, i32* %5, align 4
  %260 = call i32 @png_set_sPLT(%struct.TYPE_16__* %258, i32 %259, %struct.TYPE_17__* %9, i32 1)
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 2
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %262, align 8
  %264 = call i32 @png_free(%struct.TYPE_16__* %261, %struct.TYPE_18__* %263)
  br label %265

265:                                              ; preds = %254, %152, %132, %118, %91, %63, %48, %34
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_chunk_error(%struct.TYPE_16__*, i8*) #1

declare dso_local i64 @png_crc_finish(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @png_chunk_benign_error(%struct.TYPE_16__*, i8*) #1

declare dso_local i64* @png_read_buffer(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @png_crc_read(%struct.TYPE_16__*, i64*, i32) #1

declare dso_local i32 @png_warning(%struct.TYPE_16__*, i8*) #1

declare dso_local i64 @png_malloc_warn(%struct.TYPE_16__*, i32) #1

declare dso_local i8* @png_get_uint_16(i64*) #1

declare dso_local i32 @png_set_sPLT(%struct.TYPE_16__*, i32, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @png_free(%struct.TYPE_16__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
