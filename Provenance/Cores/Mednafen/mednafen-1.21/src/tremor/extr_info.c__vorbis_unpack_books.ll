; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_info.c__vorbis_unpack_books.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_info.c__vorbis_unpack_books.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (%struct.TYPE_15__*, i32*)* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_15__*, i32*)* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_15__*, i32*)* }
%struct.TYPE_16__ = type { i32, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, %struct.TYPE_14__**, i32*, i32*, i32*, i32* }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

@VI_TIMEB = common dso_local global i64 0, align 8
@VI_FLOORB = common dso_local global i32 0, align 4
@_floor_P = common dso_local global %struct.TYPE_13__** null, align 8
@VI_RESB = common dso_local global i32 0, align 4
@_residue_P = common dso_local global %struct.TYPE_17__** null, align 8
@VI_MAPB = common dso_local global i32 0, align 4
@_mapping_P = common dso_local global %struct.TYPE_12__** null, align 8
@VI_WINDOWB = common dso_local global i64 0, align 8
@OV_EBADHEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32*)* @_vorbis_unpack_books to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_vorbis_unpack_books(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @oggpack_read(i32* %12, i32 8)
  %14 = add nsw i32 %13, 1
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %479

22:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %48, %22
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %23
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @vorbis_staticbook_unpack(i32* %30)
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 14
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %31, i32* %37, align 4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 14
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %29
  br label %479

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %23

51:                                               ; preds = %23
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @oggpack_read(i32* %52, i32 6)
  %54 = add nsw i32 %53, 1
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %479

62:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %99, %62
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %102

69:                                               ; preds = %63
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @oggpack_read(i32* %70, i32 16)
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %69
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* @VI_TIMEB, align 8
  %96 = icmp sge i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %86, %69
  br label %479

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %63

102:                                              ; preds = %63
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @oggpack_read(i32* %103, i32 6)
  %105 = add nsw i32 %104, 1
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = icmp sle i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  br label %479

113:                                              ; preds = %102
  store i32 0, i32* %7, align 4
  br label %114

114:                                              ; preds = %181, %113
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %184

120:                                              ; preds = %114
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 @oggpack_read(i32* %121, i32 16)
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %122, i32* %128, align 4
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 4
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %147, label %137

137:                                              ; preds = %120
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 4
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @VI_FLOORB, align 4
  %146 = icmp sge i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %137, %120
  br label %479

148:                                              ; preds = %137
  %149 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @_floor_P, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 4
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %149, i64 %157
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load i32 (%struct.TYPE_15__*, i32*)*, i32 (%struct.TYPE_15__*, i32*)** %160, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %163 = load i32*, i32** %5, align 8
  %164 = call i32 %161(%struct.TYPE_15__* %162, i32* %163)
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 13
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 %164, i32* %170, align 4
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 13
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %148
  br label %479

180:                                              ; preds = %148
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %7, align 4
  br label %114

184:                                              ; preds = %114
  %185 = load i32*, i32** %5, align 8
  %186 = call i32 @oggpack_read(i32* %185, i32 6)
  %187 = add nsw i32 %186, 1
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 5
  store i32 %187, i32* %189, align 8
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 8
  %193 = icmp sle i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %184
  br label %479

195:                                              ; preds = %184
  store i32 0, i32* %7, align 4
  br label %196

196:                                              ; preds = %263, %195
  %197 = load i32, i32* %7, align 4
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 8
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %202, label %266

202:                                              ; preds = %196
  %203 = load i32*, i32** %5, align 8
  %204 = call i32 @oggpack_read(i32* %203, i32 16)
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 6
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  store i32 %204, i32* %210, align 4
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 6
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %7, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %229, label %219

219:                                              ; preds = %202
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 6
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %7, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @VI_RESB, align 4
  %228 = icmp sge i32 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %219, %202
  br label %479

230:                                              ; preds = %219
  %231 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @_residue_P, align 8
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 6
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %7, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %231, i64 %239
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 0
  %243 = load i32 (%struct.TYPE_15__*, i32*)*, i32 (%struct.TYPE_15__*, i32*)** %242, align 8
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %245 = load i32*, i32** %5, align 8
  %246 = call i32 %243(%struct.TYPE_15__* %244, i32* %245)
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 12
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %7, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  store i32 %246, i32* %252, align 4
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 12
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %7, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %262, label %261

261:                                              ; preds = %230
  br label %479

262:                                              ; preds = %230
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %7, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %7, align 4
  br label %196

266:                                              ; preds = %196
  %267 = load i32*, i32** %5, align 8
  %268 = call i32 @oggpack_read(i32* %267, i32 6)
  %269 = add nsw i32 %268, 1
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 7
  store i32 %269, i32* %271, align 8
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 7
  %274 = load i32, i32* %273, align 8
  %275 = icmp sle i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %266
  br label %479

277:                                              ; preds = %266
  store i32 0, i32* %7, align 4
  br label %278

278:                                              ; preds = %345, %277
  %279 = load i32, i32* %7, align 4
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 7
  %282 = load i32, i32* %281, align 8
  %283 = icmp slt i32 %279, %282
  br i1 %283, label %284, label %348

284:                                              ; preds = %278
  %285 = load i32*, i32** %5, align 8
  %286 = call i32 @oggpack_read(i32* %285, i32 16)
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 8
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %7, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  store i32 %286, i32* %292, align 4
  %293 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i32 0, i32 8
  %295 = load i32*, i32** %294, align 8
  %296 = load i32, i32* %7, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %311, label %301

301:                                              ; preds = %284
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 8
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %7, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @VI_MAPB, align 4
  %310 = icmp sge i32 %308, %309
  br i1 %310, label %311, label %312

311:                                              ; preds = %301, %284
  br label %479

312:                                              ; preds = %301
  %313 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @_mapping_P, align 8
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 8
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %7, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %313, i64 %321
  %323 = load %struct.TYPE_12__*, %struct.TYPE_12__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %323, i32 0, i32 0
  %325 = load i32 (%struct.TYPE_15__*, i32*)*, i32 (%struct.TYPE_15__*, i32*)** %324, align 8
  %326 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %327 = load i32*, i32** %5, align 8
  %328 = call i32 %325(%struct.TYPE_15__* %326, i32* %327)
  %329 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %329, i32 0, i32 11
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %7, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  store i32 %328, i32* %334, align 4
  %335 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %335, i32 0, i32 11
  %337 = load i32*, i32** %336, align 8
  %338 = load i32, i32* %7, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %344, label %343

343:                                              ; preds = %312
  br label %479

344:                                              ; preds = %312
  br label %345

345:                                              ; preds = %344
  %346 = load i32, i32* %7, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %7, align 4
  br label %278

348:                                              ; preds = %278
  %349 = load i32*, i32** %5, align 8
  %350 = call i32 @oggpack_read(i32* %349, i32 6)
  %351 = add nsw i32 %350, 1
  %352 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %353 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %352, i32 0, i32 9
  store i32 %351, i32* %353, align 8
  %354 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %354, i32 0, i32 9
  %356 = load i32, i32* %355, align 8
  %357 = icmp sle i32 %356, 0
  br i1 %357, label %358, label %359

358:                                              ; preds = %348
  br label %479

359:                                              ; preds = %348
  store i32 0, i32* %7, align 4
  br label %360

360:                                              ; preds = %470, %359
  %361 = load i32, i32* %7, align 4
  %362 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %363 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %362, i32 0, i32 9
  %364 = load i32, i32* %363, align 8
  %365 = icmp slt i32 %361, %364
  br i1 %365, label %366, label %473

366:                                              ; preds = %360
  %367 = call i64 @_ogg_calloc(i32 1, i32 16)
  %368 = inttoptr i64 %367 to %struct.TYPE_14__*
  %369 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %370 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %369, i32 0, i32 10
  %371 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %370, align 8
  %372 = load i32, i32* %7, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %371, i64 %373
  store %struct.TYPE_14__* %368, %struct.TYPE_14__** %374, align 8
  %375 = load i32*, i32** %5, align 8
  %376 = call i32 @oggpack_read(i32* %375, i32 1)
  %377 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %378 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %377, i32 0, i32 10
  %379 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %378, align 8
  %380 = load i32, i32* %7, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %379, i64 %381
  %383 = load %struct.TYPE_14__*, %struct.TYPE_14__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %383, i32 0, i32 0
  store i32 %376, i32* %384, align 4
  %385 = load i32*, i32** %5, align 8
  %386 = call i32 @oggpack_read(i32* %385, i32 16)
  %387 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %387, i32 0, i32 10
  %389 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %388, align 8
  %390 = load i32, i32* %7, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %389, i64 %391
  %393 = load %struct.TYPE_14__*, %struct.TYPE_14__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %393, i32 0, i32 1
  store i32 %386, i32* %394, align 4
  %395 = load i32*, i32** %5, align 8
  %396 = call i32 @oggpack_read(i32* %395, i32 16)
  %397 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %398 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %397, i32 0, i32 10
  %399 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %398, align 8
  %400 = load i32, i32* %7, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %399, i64 %401
  %403 = load %struct.TYPE_14__*, %struct.TYPE_14__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %403, i32 0, i32 2
  store i32 %396, i32* %404, align 4
  %405 = load i32*, i32** %5, align 8
  %406 = call i32 @oggpack_read(i32* %405, i32 8)
  %407 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %408 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %407, i32 0, i32 10
  %409 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %408, align 8
  %410 = load i32, i32* %7, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %409, i64 %411
  %413 = load %struct.TYPE_14__*, %struct.TYPE_14__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %413, i32 0, i32 3
  store i32 %406, i32* %414, align 4
  %415 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %416 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %415, i32 0, i32 10
  %417 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %416, align 8
  %418 = load i32, i32* %7, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %417, i64 %419
  %421 = load %struct.TYPE_14__*, %struct.TYPE_14__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 4
  %424 = sext i32 %423 to i64
  %425 = load i64, i64* @VI_WINDOWB, align 8
  %426 = icmp sge i64 %424, %425
  br i1 %426, label %427, label %428

427:                                              ; preds = %366
  br label %479

428:                                              ; preds = %366
  %429 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %430 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %429, i32 0, i32 10
  %431 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %430, align 8
  %432 = load i32, i32* %7, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %431, i64 %433
  %435 = load %struct.TYPE_14__*, %struct.TYPE_14__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %435, i32 0, i32 2
  %437 = load i32, i32* %436, align 4
  %438 = sext i32 %437 to i64
  %439 = load i64, i64* @VI_WINDOWB, align 8
  %440 = icmp sge i64 %438, %439
  br i1 %440, label %441, label %442

441:                                              ; preds = %428
  br label %479

442:                                              ; preds = %428
  %443 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %444 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %443, i32 0, i32 10
  %445 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %444, align 8
  %446 = load i32, i32* %7, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %445, i64 %447
  %449 = load %struct.TYPE_14__*, %struct.TYPE_14__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %449, i32 0, i32 3
  %451 = load i32, i32* %450, align 4
  %452 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %453 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %452, i32 0, i32 7
  %454 = load i32, i32* %453, align 8
  %455 = icmp sge i32 %451, %454
  br i1 %455, label %456, label %457

456:                                              ; preds = %442
  br label %479

457:                                              ; preds = %442
  %458 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %459 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %458, i32 0, i32 10
  %460 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %459, align 8
  %461 = load i32, i32* %7, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %460, i64 %462
  %464 = load %struct.TYPE_14__*, %struct.TYPE_14__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %464, i32 0, i32 3
  %466 = load i32, i32* %465, align 4
  %467 = icmp slt i32 %466, 0
  br i1 %467, label %468, label %469

468:                                              ; preds = %457
  br label %479

469:                                              ; preds = %457
  br label %470

470:                                              ; preds = %469
  %471 = load i32, i32* %7, align 4
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %7, align 4
  br label %360

473:                                              ; preds = %360
  %474 = load i32*, i32** %5, align 8
  %475 = call i32 @oggpack_read(i32* %474, i32 1)
  %476 = icmp ne i32 %475, 1
  br i1 %476, label %477, label %478

477:                                              ; preds = %473
  br label %479

478:                                              ; preds = %473
  store i32 0, i32* %3, align 4
  br label %483

479:                                              ; preds = %477, %468, %456, %441, %427, %358, %343, %311, %276, %261, %229, %194, %179, %147, %112, %97, %61, %46, %21
  %480 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %481 = call i32 @vorbis_info_clear(%struct.TYPE_15__* %480)
  %482 = load i32, i32* @OV_EBADHEADER, align 4
  store i32 %482, i32* %3, align 4
  br label %483

483:                                              ; preds = %479, %478
  %484 = load i32, i32* %3, align 4
  ret i32 %484
}

declare dso_local i32 @oggpack_read(i32*, i32) #1

declare dso_local i32 @vorbis_staticbook_unpack(i32*) #1

declare dso_local i64 @_ogg_calloc(i32, i32) #1

declare dso_local i32 @vorbis_info_clear(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
