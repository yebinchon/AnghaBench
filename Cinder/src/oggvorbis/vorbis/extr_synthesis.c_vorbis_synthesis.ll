; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_synthesis.c_vorbis_synthesis.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_synthesis.c_vorbis_synthesis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 (%struct.TYPE_18__*, i32)* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i8**, i32, i32, i32, i8*, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32*, i32*, %struct.TYPE_15__**, i32* }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32 }

@OV_EBADPACKET = common dso_local global i32 0, align 4
@OV_ENOTAUDIO = common dso_local global i32 0, align 4
@_mapping_P = common dso_local global %struct.TYPE_14__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vorbis_synthesis(%struct.TYPE_18__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %15 = icmp ne %struct.TYPE_18__* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 10
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi %struct.TYPE_17__* [ %19, %16 ], [ null, %20 ]
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %6, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %24 = icmp ne %struct.TYPE_17__* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  br label %30

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi %struct.TYPE_19__* [ %28, %25 ], [ null, %29 ]
  store %struct.TYPE_19__* %31, %struct.TYPE_19__** %7, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %33 = icmp ne %struct.TYPE_17__* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  br label %39

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi %struct.TYPE_16__* [ %37, %34 ], [ null, %38 ]
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %8, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %42 = icmp ne %struct.TYPE_16__* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %45, align 8
  br label %48

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi %struct.TYPE_21__* [ %46, %43 ], [ null, %47 ]
  store %struct.TYPE_21__* %49, %struct.TYPE_21__** %9, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %51 = icmp ne %struct.TYPE_18__* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 9
  br label %56

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i32* [ %54, %52 ], [ null, %55 ]
  store i32* %57, i32** %10, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %59 = icmp ne %struct.TYPE_17__* %58, null
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %62 = icmp ne %struct.TYPE_19__* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %65 = icmp ne %struct.TYPE_16__* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %68 = icmp ne %struct.TYPE_21__* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32*, i32** %10, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %69, %66, %63, %60, %56
  %73 = load i32, i32* @OV_EBADPACKET, align 4
  store i32 %73, i32* %3, align 4
  br label %253

74:                                               ; preds = %69
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %76 = call i32 @_vorbis_block_ripcord(%struct.TYPE_18__* %75)
  %77 = load i32*, i32** %10, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @oggpack_readinit(i32* %77, i32 %80, i32 %83)
  %85 = load i32*, i32** %10, align 8
  %86 = call i8* @oggpack_read(i32* %85, i32 1)
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %74
  %89 = load i32, i32* @OV_ENOTAUDIO, align 4
  store i32 %89, i32* %3, align 4
  br label %253

90:                                               ; preds = %74
  %91 = load i32*, i32** %10, align 8
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @oggpack_read(i32* %91, i32 %94)
  %96 = ptrtoint i8* %95 to i32
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load i32, i32* @OV_EBADPACKET, align 4
  store i32 %100, i32* %3, align 4
  br label %253

101:                                              ; preds = %90
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %106, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %107, i64 %109
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %110, align 8
  %112 = icmp ne %struct.TYPE_15__* %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %101
  %114 = load i32, i32* @OV_EBADPACKET, align 4
  store i32 %114, i32* %3, align 4
  br label %253

115:                                              ; preds = %101
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %118, i64 %120
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %148

131:                                              ; preds = %115
  %132 = load i32*, i32** %10, align 8
  %133 = call i8* @oggpack_read(i32* %132, i32 1)
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 8
  store i8* %133, i8** %135, align 8
  %136 = load i32*, i32** %10, align 8
  %137 = call i8* @oggpack_read(i32* %136, i32 1)
  %138 = ptrtoint i8* %137 to i32
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %145, label %147

145:                                              ; preds = %131
  %146 = load i32, i32* @OV_EBADPACKET, align 4
  store i32 %146, i32* %3, align 4
  br label %253

147:                                              ; preds = %131
  br label %153

148:                                              ; preds = %115
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 8
  store i8* null, i8** %150, align 8
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 2
  store i32 0, i32* %152, align 8
  br label %153

153:                                              ; preds = %148, %147
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 7
  store i32 %156, i32* %158, align 8
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 6
  store i32 %161, i32* %163, align 4
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 5
  store i32 %166, i32* %168, align 8
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %171, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 3
  store i32 %177, i32* %179, align 4
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = mul i64 8, %184
  %186 = trunc i64 %185 to i32
  %187 = call i8* @_vorbis_block_alloc(%struct.TYPE_18__* %180, i32 %186)
  %188 = bitcast i8* %187 to i8**
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 4
  store i8** %188, i8*** %190, align 8
  store i32 0, i32* %13, align 4
  br label %191

191:                                              ; preds = %212, %153
  %192 = load i32, i32* %13, align 4
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp slt i32 %192, %195
  br i1 %196, label %197, label %215

197:                                              ; preds = %191
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  %203 = mul i64 %202, 1
  %204 = trunc i64 %203 to i32
  %205 = call i8* @_vorbis_block_alloc(%struct.TYPE_18__* %198, i32 %204)
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 4
  %208 = load i8**, i8*** %207, align 8
  %209 = load i32, i32* %13, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8*, i8** %208, i64 %210
  store i8* %205, i8** %211, align 8
  br label %212

212:                                              ; preds = %197
  %213 = load i32, i32* %13, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %13, align 4
  br label %191

215:                                              ; preds = %191
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 2
  %221 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %220, align 8
  %222 = load i32, i32* %12, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %221, i64 %223
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = getelementptr inbounds i32, i32* %218, i64 %227
  %229 = load i32, i32* %228, align 4
  store i32 %229, i32* %11, align 4
  %230 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @_mapping_P, align 8
  %231 = load i32, i32* %11, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %230, i64 %232
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 0
  %236 = load i32 (%struct.TYPE_18__*, i32)*, i32 (%struct.TYPE_18__*, i32)** %235, align 8
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 3
  %240 = load i32*, i32** %239, align 8
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 2
  %243 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %242, align 8
  %244 = load i32, i32* %12, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %243, i64 %245
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds i32, i32* %240, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = call i32 %236(%struct.TYPE_18__* %237, i32 %251)
  store i32 %252, i32* %3, align 4
  br label %253

253:                                              ; preds = %215, %145, %113, %99, %88, %72
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

declare dso_local i32 @_vorbis_block_ripcord(%struct.TYPE_18__*) #1

declare dso_local i32 @oggpack_readinit(i32*, i32, i32) #1

declare dso_local i8* @oggpack_read(i32*, i32) #1

declare dso_local i8* @_vorbis_block_alloc(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
