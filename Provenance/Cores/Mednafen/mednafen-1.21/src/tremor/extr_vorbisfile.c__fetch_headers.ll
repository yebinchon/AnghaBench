; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_vorbisfile.c__fetch_headers.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_vorbisfile.c__fetch_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@CHUNKSIZE = common dso_local global i32 0, align 4
@OV_EREAD = common dso_local global i32 0, align 4
@OV_ENOTVORBIS = common dso_local global i32 0, align 4
@OPENED = common dso_local global i8* null, align 8
@OV_EBADHEADER = common dso_local global i32 0, align 4
@STREAMSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32*, i32**, i32*, i32*)* @_fetch_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_fetch_headers(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32** %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %18, align 4
  %22 = load i32*, i32** %13, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %6
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = load i32, i32* @CHUNKSIZE, align 4
  %27 = call i64 @_get_next_page(%struct.TYPE_7__* %25, i32* %14, i32 %26)
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %19, align 4
  %29 = load i32, i32* %19, align 4
  %30 = load i32, i32* @OV_EREAD, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @OV_EREAD, align 4
  store i32 %33, i32* %7, align 4
  br label %239

34:                                               ; preds = %24
  %35 = load i32, i32* %19, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @OV_ENOTVORBIS, align 4
  store i32 %38, i32* %7, align 4
  br label %239

39:                                               ; preds = %34
  store i32* %14, i32** %13, align 8
  br label %40

40:                                               ; preds = %39, %6
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @vorbis_info_init(i32* %41)
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @vorbis_comment_init(i32* %43)
  %45 = load i8*, i8** @OPENED, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %151, %40
  %50 = load i32*, i32** %13, align 8
  %51 = call i64 @ogg_page_bos(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %152

53:                                               ; preds = %49
  %54 = load i32**, i32*** %11, align 8
  %55 = icmp ne i32** %54, null
  br i1 %55, label %56, label %81

56:                                               ; preds = %53
  %57 = load i32*, i32** %13, align 8
  %58 = load i32**, i32*** %11, align 8
  %59 = load i32*, i32** %58, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @_lookup_page_serialno(i32* %57, i32* %59, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %56
  %65 = load i32**, i32*** %11, align 8
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32**, i32*** %11, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @_ogg_free(i32* %70)
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32**, i32*** %11, align 8
  store i32* null, i32** %73, align 8
  %74 = load i32*, i32** %12, align 8
  store i32 0, i32* %74, align 4
  %75 = load i32, i32* @OV_EBADHEADER, align 4
  store i32 %75, i32* %17, align 4
  br label %229

76:                                               ; preds = %56
  %77 = load i32*, i32** %13, align 8
  %78 = load i32**, i32*** %11, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = call i32 @_add_serialno(i32* %77, i32** %78, i32* %79)
  br label %81

81:                                               ; preds = %76, %53
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @STREAMSET, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %116

87:                                               ; preds = %81
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32*, i32** %13, align 8
  %91 = call i64 @ogg_page_serialno(i32* %90)
  %92 = call i32 @ogg_stream_reset_serialno(%struct.TYPE_8__* %89, i64 %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32*, i32** %13, align 8
  %96 = call i32 @ogg_stream_pagein(%struct.TYPE_8__* %94, i32* %95)
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = call i32 @ogg_stream_packetout(%struct.TYPE_8__* %98, i32* %15)
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %87
  %102 = call i64 @vorbis_synthesis_idheader(i32* %15)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %101
  %105 = load i64, i64* @STREAMSET, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = load i32*, i32** %10, align 8
  %110 = call i32 @vorbis_synthesis_headerin(i32* %108, i32* %109, i32* %15)
  store i32 %110, i32* %17, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = load i32, i32* @OV_EBADHEADER, align 4
  store i32 %113, i32* %17, align 4
  br label %229

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %114, %101, %87
  br label %116

116:                                              ; preds = %115, %81
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = load i32, i32* @CHUNKSIZE, align 4
  %120 = call i64 @_get_next_page(%struct.TYPE_7__* %117, i32* %118, i32 %119)
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %20, align 4
  %122 = load i32, i32* %20, align 4
  %123 = load i32, i32* @OV_EREAD, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %116
  %126 = load i32, i32* @OV_EREAD, align 4
  store i32 %126, i32* %17, align 4
  br label %229

127:                                              ; preds = %116
  %128 = load i32, i32* %20, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = load i32, i32* @OV_ENOTVORBIS, align 4
  store i32 %131, i32* %17, align 4
  br label %229

132:                                              ; preds = %127
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @STREAMSET, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %132
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i32*, i32** %13, align 8
  %144 = call i64 @ogg_page_serialno(i32* %143)
  %145 = icmp eq i64 %142, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %138
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load i32*, i32** %13, align 8
  %150 = call i32 @ogg_stream_pagein(%struct.TYPE_8__* %148, i32* %149)
  br label %152

151:                                              ; preds = %138, %132
  br label %49

152:                                              ; preds = %146, %49
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @STREAMSET, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = load i32, i32* @OV_ENOTVORBIS, align 4
  store i32 %159, i32* %17, align 4
  br label %229

160:                                              ; preds = %152
  br label %161

161:                                              ; preds = %160
  store i32 0, i32* %16, align 4
  br label %162

162:                                              ; preds = %227, %161
  %163 = load i32, i32* %16, align 4
  %164 = icmp slt i32 %163, 2
  br i1 %164, label %165, label %228

165:                                              ; preds = %162
  br label %166

166:                                              ; preds = %187, %165
  %167 = load i32, i32* %16, align 4
  %168 = icmp slt i32 %167, 2
  br i1 %168, label %169, label %190

169:                                              ; preds = %166
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 1
  %172 = call i32 @ogg_stream_packetout(%struct.TYPE_8__* %171, i32* %15)
  store i32 %172, i32* %21, align 4
  %173 = load i32, i32* %21, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  br label %190

176:                                              ; preds = %169
  %177 = load i32, i32* %21, align 4
  %178 = icmp eq i32 %177, -1
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = load i32, i32* @OV_EBADHEADER, align 4
  store i32 %180, i32* %17, align 4
  br label %229

181:                                              ; preds = %176
  %182 = load i32*, i32** %9, align 8
  %183 = load i32*, i32** %10, align 8
  %184 = call i32 @vorbis_synthesis_headerin(i32* %182, i32* %183, i32* %15)
  store i32 %184, i32* %17, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %181
  br label %229

187:                                              ; preds = %181
  %188 = load i32, i32* %16, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %16, align 4
  br label %166

190:                                              ; preds = %175, %166
  br label %191

191:                                              ; preds = %226, %190
  %192 = load i32, i32* %16, align 4
  %193 = icmp slt i32 %192, 2
  br i1 %193, label %194, label %227

194:                                              ; preds = %191
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %196 = load i32*, i32** %13, align 8
  %197 = load i32, i32* @CHUNKSIZE, align 4
  %198 = call i64 @_get_next_page(%struct.TYPE_7__* %195, i32* %196, i32 %197)
  %199 = icmp slt i64 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %194
  %201 = load i32, i32* @OV_EBADHEADER, align 4
  store i32 %201, i32* %17, align 4
  br label %229

202:                                              ; preds = %194
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i32*, i32** %13, align 8
  %208 = call i64 @ogg_page_serialno(i32* %207)
  %209 = icmp eq i64 %206, %208
  br i1 %209, label %210, label %215

210:                                              ; preds = %202
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 1
  %213 = load i32*, i32** %13, align 8
  %214 = call i32 @ogg_stream_pagein(%struct.TYPE_8__* %212, i32* %213)
  br label %227

215:                                              ; preds = %202
  %216 = load i32*, i32** %13, align 8
  %217 = call i64 @ogg_page_bos(i32* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %215
  %220 = load i32, i32* %18, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %219
  %223 = load i32, i32* @OV_EBADHEADER, align 4
  store i32 %223, i32* %17, align 4
  br label %229

224:                                              ; preds = %219
  store i32 1, i32* %18, align 4
  br label %225

225:                                              ; preds = %224
  br label %226

226:                                              ; preds = %225, %215
  br label %191

227:                                              ; preds = %210, %191
  br label %162

228:                                              ; preds = %162
  store i32 0, i32* %7, align 4
  br label %239

229:                                              ; preds = %222, %200, %186, %179, %158, %130, %125, %112, %72
  %230 = load i32*, i32** %9, align 8
  %231 = call i32 @vorbis_info_clear(i32* %230)
  %232 = load i32*, i32** %10, align 8
  %233 = call i32 @vorbis_comment_clear(i32* %232)
  %234 = load i8*, i8** @OPENED, align 8
  %235 = ptrtoint i8* %234 to i64
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  store i64 %235, i64* %237, align 8
  %238 = load i32, i32* %17, align 4
  store i32 %238, i32* %7, align 4
  br label %239

239:                                              ; preds = %229, %228, %37, %32
  %240 = load i32, i32* %7, align 4
  ret i32 %240
}

declare dso_local i64 @_get_next_page(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @vorbis_info_init(i32*) #1

declare dso_local i32 @vorbis_comment_init(i32*) #1

declare dso_local i64 @ogg_page_bos(i32*) #1

declare dso_local i64 @_lookup_page_serialno(i32*, i32*, i32) #1

declare dso_local i32 @_ogg_free(i32*) #1

declare dso_local i32 @_add_serialno(i32*, i32**, i32*) #1

declare dso_local i32 @ogg_stream_reset_serialno(%struct.TYPE_8__*, i64) #1

declare dso_local i64 @ogg_page_serialno(i32*) #1

declare dso_local i32 @ogg_stream_pagein(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @ogg_stream_packetout(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @vorbis_synthesis_idheader(i32*) #1

declare dso_local i32 @vorbis_synthesis_headerin(i32*, i32*, i32*) #1

declare dso_local i32 @vorbis_info_clear(i32*) #1

declare dso_local i32 @vorbis_comment_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
