; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_info.c__vorbis_pack_books.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_info.c__vorbis_pack_books.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 (i32, i32*)* }
%struct.TYPE_12__ = type { i32 (i32, i32*)* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_10__*, i32, i32*)* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32*, i32, i32*, i32, i32*, i32, %struct.TYPE_9__**, i32*, i32*, i32*, i32* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@OV_EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"vorbis\00", align 1
@_floor_P = common dso_local global %struct.TYPE_14__** null, align 8
@_residue_P = common dso_local global %struct.TYPE_12__** null, align 8
@_mapping_P = common dso_local global %struct.TYPE_13__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*)* @_vorbis_pack_books to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_vorbis_pack_books(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %6, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %12 = icmp ne %struct.TYPE_11__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @OV_EFAULT, align 4
  store i32 %14, i32* %3, align 4
  br label %279

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @oggpack_write(i32* %16, i32 5, i32 8)
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @_v_writestring(i32* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = call i32 @oggpack_write(i32* %20, i32 %24, i32 8)
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %45, %15
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %26
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 12
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = call i64 @vorbis_staticbook_pack(i32 %39, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %278

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %26

48:                                               ; preds = %26
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @oggpack_write(i32* %49, i32 0, i32 6)
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @oggpack_write(i32* %51, i32 0, i32 16)
  %53 = load i32*, i32** %4, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 1
  %58 = call i32 @oggpack_write(i32* %53, i32 %57, i32 6)
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %114, %48
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %117

65:                                               ; preds = %59
  %66 = load i32*, i32** %4, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @oggpack_write(i32* %66, i32 %73, i32 16)
  %75 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @_floor_P, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %75, i64 %83
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32 (i32, i32*)*, i32 (i32, i32*)** %86, align 8
  %88 = icmp ne i32 (i32, i32*)* %87, null
  br i1 %88, label %89, label %112

89:                                               ; preds = %65
  %90 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @_floor_P, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %90, i64 %98
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32 (i32, i32*)*, i32 (i32, i32*)** %101, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 11
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 %102(i32 %109, i32* %110)
  br label %113

112:                                              ; preds = %65
  br label %278

113:                                              ; preds = %89
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %59

117:                                              ; preds = %59
  %118 = load i32*, i32** %4, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %121, 1
  %123 = call i32 @oggpack_write(i32* %118, i32 %122, i32 6)
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %162, %117
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %165

130:                                              ; preds = %124
  %131 = load i32*, i32** %4, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 4
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @oggpack_write(i32* %131, i32 %138, i32 16)
  %140 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @_residue_P, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %140, i64 %148
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = load i32 (i32, i32*)*, i32 (i32, i32*)** %151, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 10
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32*, i32** %4, align 8
  %161 = call i32 %152(i32 %159, i32* %160)
  br label %162

162:                                              ; preds = %130
  %163 = load i32, i32* %7, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %7, align 4
  br label %124

165:                                              ; preds = %124
  %166 = load i32*, i32** %4, align 8
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 8
  %170 = sub nsw i32 %169, 1
  %171 = call i32 @oggpack_write(i32* %166, i32 %170, i32 6)
  store i32 0, i32* %7, align 4
  br label %172

172:                                              ; preds = %211, %165
  %173 = load i32, i32* %7, align 4
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 8
  %177 = icmp slt i32 %173, %176
  br i1 %177, label %178, label %214

178:                                              ; preds = %172
  %179 = load i32*, i32** %4, align 8
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 6
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @oggpack_write(i32* %179, i32 %186, i32 16)
  %188 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @_mapping_P, align 8
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 6
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %188, i64 %196
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = load i32 (%struct.TYPE_10__*, i32, i32*)*, i32 (%struct.TYPE_10__*, i32, i32*)** %199, align 8
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 9
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %7, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load i32*, i32** %4, align 8
  %210 = call i32 %200(%struct.TYPE_10__* %201, i32 %208, i32* %209)
  br label %211

211:                                              ; preds = %178
  %212 = load i32, i32* %7, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %7, align 4
  br label %172

214:                                              ; preds = %172
  %215 = load i32*, i32** %4, align 8
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 7
  %218 = load i32, i32* %217, align 8
  %219 = sub nsw i32 %218, 1
  %220 = call i32 @oggpack_write(i32* %215, i32 %219, i32 6)
  store i32 0, i32* %7, align 4
  br label %221

221:                                              ; preds = %272, %214
  %222 = load i32, i32* %7, align 4
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 7
  %225 = load i32, i32* %224, align 8
  %226 = icmp slt i32 %222, %225
  br i1 %226, label %227, label %275

227:                                              ; preds = %221
  %228 = load i32*, i32** %4, align 8
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 8
  %231 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %230, align 8
  %232 = load i32, i32* %7, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %231, i64 %233
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @oggpack_write(i32* %228, i32 %237, i32 1)
  %239 = load i32*, i32** %4, align 8
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 8
  %242 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %241, align 8
  %243 = load i32, i32* %7, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %242, i64 %244
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @oggpack_write(i32* %239, i32 %248, i32 16)
  %250 = load i32*, i32** %4, align 8
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 8
  %253 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %252, align 8
  %254 = load i32, i32* %7, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %253, i64 %255
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @oggpack_write(i32* %250, i32 %259, i32 16)
  %261 = load i32*, i32** %4, align 8
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 8
  %264 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %263, align 8
  %265 = load i32, i32* %7, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %264, i64 %266
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @oggpack_write(i32* %261, i32 %270, i32 8)
  br label %272

272:                                              ; preds = %227
  %273 = load i32, i32* %7, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %7, align 4
  br label %221

275:                                              ; preds = %221
  %276 = load i32*, i32** %4, align 8
  %277 = call i32 @oggpack_write(i32* %276, i32 1, i32 1)
  store i32 0, i32* %3, align 4
  br label %279

278:                                              ; preds = %112, %43
  store i32 -1, i32* %3, align 4
  br label %279

279:                                              ; preds = %278, %275, %13
  %280 = load i32, i32* %3, align 4
  ret i32 %280
}

declare dso_local i32 @oggpack_write(i32*, i32, i32) #1

declare dso_local i32 @_v_writestring(i32*, i8*, i32) #1

declare dso_local i64 @vorbis_staticbook_pack(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
