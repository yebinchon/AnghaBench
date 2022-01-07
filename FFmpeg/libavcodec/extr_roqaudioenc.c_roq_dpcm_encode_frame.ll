; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_roqaudioenc.c_roq_dpcm_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_roqaudioenc.c_roq_dpcm_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64, i32*, i32, i32* }
%struct.TYPE_11__ = type { i32, i32, i32* }
%struct.TYPE_12__ = type { i32, i64* }

@ROQ_HEADER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_11__*, %struct.TYPE_12__*, i32*)* @roq_dpcm_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @roq_dpcm_encode_frame(%struct.TYPE_13__* %0, %struct.TYPE_11__* %1, %struct.TYPE_12__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %18 = icmp ne %struct.TYPE_12__* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  br label %27

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %26, %19
  %28 = phi i32* [ %25, %19 ], [ null, %26 ]
  store i32* %28, i32** %14, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %16, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %11, align 4
  %37 = load i32*, i32** %14, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %27
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sge i32 %42, 8
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %263

45:                                               ; preds = %39, %27
  %46 = load i32*, i32** %14, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %107

48:                                               ; preds = %45
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %51, 8
  br i1 %52, label %53, label %107

53:                                               ; preds = %48
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = mul i64 %59, %63
  %65 = getelementptr inbounds i32, i32* %56, i64 %64
  %66 = load i32*, i32** %14, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = mul nsw i32 %69, %72
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = call i32 @memcpy(i32* %65, i32* %66, i32 %76)
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %84, %81
  store i64 %85, i64* %83, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %53
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %90, %53
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %99, 7
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  store i32 0, i32* %5, align 4
  br label %263

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106, %48, %45
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %110, 8
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  store i32* %115, i32** %14, align 8
  br label %116

116:                                              ; preds = %112, %107
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %116
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 65280
  store i32 %125, i32* %123, align 4
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 65280
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %119, %116
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 7
  br i1 %136, label %137, label %147

137:                                              ; preds = %132
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = mul i64 %141, %144
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %12, align 4
  br label %155

147:                                              ; preds = %132
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = mul nsw i32 %150, %153
  store i32 %154, i32* %12, align 4
  br label %155

155:                                              ; preds = %147, %137
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %158 = load i64, i64* @ROQ_HEADER_SIZE, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %158, %160
  %162 = call i32 @ff_alloc_packet2(%struct.TYPE_13__* %156, %struct.TYPE_11__* %157, i64 %161, i32 0)
  store i32 %162, i32* %13, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %155
  %165 = load i32, i32* %13, align 4
  store i32 %165, i32* %5, align 4
  br label %263

166:                                              ; preds = %155
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  store i32* %169, i32** %15, align 8
  %170 = load i32, i32* %11, align 4
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i32 33, i32 32
  %174 = call i32 @bytestream_put_byte(i32** %15, i32 %173)
  %175 = call i32 @bytestream_put_byte(i32** %15, i32 16)
  %176 = load i32, i32* %12, align 4
  %177 = call i32 @bytestream_put_le32(i32** %15, i32 %176)
  %178 = load i32, i32* %11, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %195

180:                                              ; preds = %166
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 2
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = ashr i32 %185, 8
  %187 = call i32 @bytestream_put_byte(i32** %15, i32 %186)
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = ashr i32 %192, 8
  %194 = call i32 @bytestream_put_byte(i32** %15, i32 %193)
  br label %202

195:                                              ; preds = %166
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @bytestream_put_le16(i32** %15, i32 %200)
  br label %202

202:                                              ; preds = %195, %180
  store i32 0, i32* %10, align 4
  br label %203

203:                                              ; preds = %221, %202
  %204 = load i32, i32* %10, align 4
  %205 = load i32, i32* %12, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %224

207:                                              ; preds = %203
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %10, align 4
  %212 = and i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %210, i64 %213
  %215 = load i32*, i32** %14, align 8
  %216 = getelementptr inbounds i32, i32* %215, i32 1
  store i32* %216, i32** %14, align 8
  %217 = load i32, i32* %215, align 4
  %218 = call i32 @dpcm_predict(i32* %214, i32 %217)
  %219 = load i32*, i32** %15, align 8
  %220 = getelementptr inbounds i32, i32* %219, i32 1
  store i32* %220, i32** %15, align 8
  store i32 %218, i32* %219, align 4
  br label %221

221:                                              ; preds = %207
  %222 = load i32, i32* %10, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %10, align 4
  br label %203

224:                                              ; preds = %203
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = icmp sle i32 %227, 7
  br i1 %228, label %229, label %233

229:                                              ; preds = %224
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  br label %237

233:                                              ; preds = %224
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  br label %237

237:                                              ; preds = %233, %229
  %238 = phi i32 [ %232, %229 ], [ %236, %233 ]
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 1
  store i32 %238, i32* %240, align 4
  %241 = load i32, i32* %12, align 4
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = sdiv i32 %241, %244
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 8
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %249, align 8
  %252 = load i32*, i32** %14, align 8
  %253 = icmp ne i32* %252, null
  br i1 %253, label %261, label %254

254:                                              ; preds = %237
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @FFMAX(i32 %257, i32 8)
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 0
  store i32 %258, i32* %260, align 8
  br label %261

261:                                              ; preds = %254, %237
  %262 = load i32*, i32** %9, align 8
  store i32 1, i32* %262, align 4
  store i32 0, i32* %5, align 4
  br label %263

263:                                              ; preds = %261, %164, %101, %44
  %264 = load i32, i32* %5, align 4
  ret i32 %264
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_13__*, %struct.TYPE_11__*, i64, i32) #1

declare dso_local i32 @bytestream_put_byte(i32**, i32) #1

declare dso_local i32 @bytestream_put_le32(i32**, i32) #1

declare dso_local i32 @bytestream_put_le16(i32**, i32) #1

declare dso_local i32 @dpcm_predict(i32*, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
