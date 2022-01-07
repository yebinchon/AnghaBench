; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_synthesis.c__vorbis_synthesis1.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_synthesis.c__vorbis_synthesis1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 (%struct.TYPE_18__*, i32)* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32**, i32, i32, i32, i8*, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_21__ = type { i32*, i32*, %struct.TYPE_15__** }
%struct.TYPE_15__ = type { i32, i64 }

@OV_EBADPACKET = common dso_local global i32 0, align 4
@OV_ENOTAUDIO = common dso_local global i32 0, align 4
@_mapping_P = common dso_local global %struct.TYPE_14__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_20__*, i32)* @_vorbis_synthesis1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_vorbis_synthesis1(%struct.TYPE_18__* %0, %struct.TYPE_20__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %17 = icmp ne %struct.TYPE_18__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 10
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi %struct.TYPE_17__* [ %21, %18 ], [ null, %22 ]
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %8, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %26 = icmp ne %struct.TYPE_17__* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.TYPE_19__*
  br label %33

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %27
  %34 = phi %struct.TYPE_19__* [ %31, %27 ], [ null, %32 ]
  store %struct.TYPE_19__* %34, %struct.TYPE_19__** %9, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %36 = icmp ne %struct.TYPE_17__* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  br label %42

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %37
  %43 = phi %struct.TYPE_16__* [ %40, %37 ], [ null, %41 ]
  store %struct.TYPE_16__* %43, %struct.TYPE_16__** %10, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %45 = icmp ne %struct.TYPE_16__* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.TYPE_21__*
  br label %52

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %46
  %53 = phi %struct.TYPE_21__* [ %50, %46 ], [ null, %51 ]
  store %struct.TYPE_21__* %53, %struct.TYPE_21__** %11, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %55 = icmp ne %struct.TYPE_18__* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 9
  br label %60

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %56
  %61 = phi i32* [ %58, %56 ], [ null, %59 ]
  store i32* %61, i32** %12, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %63 = icmp ne %struct.TYPE_17__* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %66 = icmp ne %struct.TYPE_19__* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %69 = icmp ne %struct.TYPE_16__* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %72 = icmp ne %struct.TYPE_21__* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32*, i32** %12, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %73, %70, %67, %64, %60
  %77 = load i32, i32* @OV_EBADPACKET, align 4
  store i32 %77, i32* %4, align 4
  br label %259

78:                                               ; preds = %73
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %80 = call i32 @_vorbis_block_ripcord(%struct.TYPE_18__* %79)
  %81 = load i32*, i32** %12, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @oggpack_readinit(i32* %81, i32 %84, i32 %87)
  %89 = load i32*, i32** %12, align 8
  %90 = call i8* @oggpack_read(i32* %89, i32 1)
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %78
  %93 = load i32, i32* @OV_ENOTAUDIO, align 4
  store i32 %93, i32* %4, align 4
  br label %259

94:                                               ; preds = %78
  %95 = load i32*, i32** %12, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @oggpack_read(i32* %95, i32 %98)
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* @OV_EBADPACKET, align 4
  store i32 %104, i32* %4, align 4
  br label %259

105:                                              ; preds = %94
  %106 = load i32, i32* %14, align 4
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %110, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %111, i64 %113
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %114, align 8
  %116 = icmp ne %struct.TYPE_15__* %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %105
  %118 = load i32, i32* @OV_EBADPACKET, align 4
  store i32 %118, i32* %4, align 4
  br label %259

119:                                              ; preds = %105
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %121, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %122, i64 %124
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %152

135:                                              ; preds = %119
  %136 = load i32*, i32** %12, align 8
  %137 = call i8* @oggpack_read(i32* %136, i32 1)
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 8
  store i8* %137, i8** %139, align 8
  %140 = load i32*, i32** %12, align 8
  %141 = call i8* @oggpack_read(i32* %140, i32 1)
  %142 = ptrtoint i8* %141 to i32
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, -1
  br i1 %148, label %149, label %151

149:                                              ; preds = %135
  %150 = load i32, i32* @OV_EBADPACKET, align 4
  store i32 %150, i32* %4, align 4
  br label %259

151:                                              ; preds = %135
  br label %157

152:                                              ; preds = %119
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 8
  store i8* null, i8** %154, align 8
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 2
  store i32 0, i32* %156, align 8
  br label %157

157:                                              ; preds = %152, %151
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 7
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 6
  store i32 %165, i32* %167, align 4
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 5
  store i32 %170, i32* %172, align 8
  %173 = load i32, i32* %7, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %254

175:                                              ; preds = %157
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %178, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 3
  store i32 %184, i32* %186, align 4
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = mul i64 8, %191
  %193 = trunc i64 %192 to i32
  %194 = call i64 @_vorbis_block_alloc(%struct.TYPE_18__* %187, i32 %193)
  %195 = inttoptr i64 %194 to i32**
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 4
  store i32** %195, i32*** %197, align 8
  store i32 0, i32* %15, align 4
  br label %198

198:                                              ; preds = %220, %175
  %199 = load i32, i32* %15, align 4
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp slt i32 %199, %202
  br i1 %203, label %204, label %223

204:                                              ; preds = %198
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = mul i64 %209, 4
  %211 = trunc i64 %210 to i32
  %212 = call i64 @_vorbis_block_alloc(%struct.TYPE_18__* %205, i32 %211)
  %213 = inttoptr i64 %212 to i32*
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 4
  %216 = load i32**, i32*** %215, align 8
  %217 = load i32, i32* %15, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32*, i32** %216, i64 %218
  store i32* %213, i32** %219, align 8
  br label %220

220:                                              ; preds = %204
  %221 = load i32, i32* %15, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %15, align 4
  br label %198

223:                                              ; preds = %198
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %228, align 8
  %230 = load i32, i32* %14, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %229, i64 %231
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds i32, i32* %226, i64 %235
  %237 = load i32, i32* %236, align 4
  store i32 %237, i32* %13, align 4
  %238 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @_mapping_P, align 8
  %239 = load i32, i32* %13, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %238, i64 %240
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 0
  %244 = load i32 (%struct.TYPE_18__*, i32)*, i32 (%struct.TYPE_18__*, i32)** %243, align 8
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %14, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = call i32 %244(%struct.TYPE_18__* %245, i32 %252)
  store i32 %253, i32* %4, align 4
  br label %259

254:                                              ; preds = %157
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 3
  store i32 0, i32* %256, align 4
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i32 0, i32 4
  store i32** null, i32*** %258, align 8
  store i32 0, i32* %4, align 4
  br label %259

259:                                              ; preds = %254, %223, %149, %117, %103, %92, %76
  %260 = load i32, i32* %4, align 4
  ret i32 %260
}

declare dso_local i32 @_vorbis_block_ripcord(%struct.TYPE_18__*) #1

declare dso_local i32 @oggpack_readinit(i32*, i32, i32) #1

declare dso_local i8* @oggpack_read(i32*, i32) #1

declare dso_local i64 @_vorbis_block_alloc(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
