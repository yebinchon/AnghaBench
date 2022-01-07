; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpegenc_common.c_jpeg_table_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpegenc_common.c_jpeg_table_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32* }

@AV_CODEC_ID_LJPEG = common dso_local global i64 0, align 8
@DQT = common dso_local global i32 0, align 4
@FF_THREAD_SLICE = common dso_local global i32 0, align 4
@DRI = common dso_local global i32 0, align 4
@DHT = common dso_local global i32 0, align 4
@HUFFMAN_TABLE_OPTIMAL = common dso_local global i64 0, align 8
@avpriv_mjpeg_bits_dc_luminance = common dso_local global i32 0, align 4
@avpriv_mjpeg_val_dc = common dso_local global i32 0, align 4
@avpriv_mjpeg_bits_dc_chrominance = common dso_local global i32 0, align 4
@avpriv_mjpeg_bits_ac_luminance = common dso_local global i32 0, align 4
@avpriv_mjpeg_val_ac_luminance = common dso_local global i32 0, align 4
@avpriv_mjpeg_bits_ac_chrominance = common dso_local global i32 0, align 4
@avpriv_mjpeg_val_ac_chrominance = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*, %struct.TYPE_8__*, i32*, i32*, i32*)* @jpeg_table_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jpeg_table_header(%struct.TYPE_10__* %0, i32* %1, %struct.TYPE_8__* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %17, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AV_CODEC_ID_LJPEG, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %6
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %17, align 8
  br label %28

28:                                               ; preds = %24, %6
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AV_CODEC_ID_LJPEG, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %116

34:                                               ; preds = %28
  %35 = load i32*, i32** %10, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @memcmp(i32* %35, i32* %36, i32 256)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = add nsw i32 1, %41
  store i32 %42, i32* %18, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %44 = icmp ne %struct.TYPE_9__* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %34
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 2, i32* %18, align 4
  br label %51

51:                                               ; preds = %50, %45, %34
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* @DQT, align 4
  %54 = call i32 @put_marker(i32* %52, i32 %53)
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %18, align 4
  %57 = mul nsw i32 %56, 65
  %58 = add nsw i32 2, %57
  %59 = call i32 @put_bits(i32* %55, i32 16, i32 %58)
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @put_bits(i32* %60, i32 4, i32 0)
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @put_bits(i32* %62, i32 4, i32 0)
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %82, %51
  %65 = load i32, i32* %13, align 4
  %66 = icmp slt i32 %65, 64
  br i1 %66, label %67, label %85

67:                                               ; preds = %64
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %14, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @put_bits(i32* %75, i32 8, i32 %80)
  br label %82

82:                                               ; preds = %67
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %64

85:                                               ; preds = %64
  %86 = load i32, i32* %18, align 4
  %87 = icmp sgt i32 %86, 1
  br i1 %87, label %88, label %115

88:                                               ; preds = %85
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @put_bits(i32* %89, i32 4, i32 0)
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @put_bits(i32* %91, i32 4, i32 1)
  store i32 0, i32* %13, align 4
  br label %93

93:                                               ; preds = %111, %88
  %94 = load i32, i32* %13, align 4
  %95 = icmp slt i32 %94, 64
  br i1 %95, label %96, label %114

96:                                               ; preds = %93
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %14, align 4
  %104 = load i32*, i32** %8, align 8
  %105 = load i32*, i32** %11, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @put_bits(i32* %104, i32 8, i32 %109)
  br label %111

111:                                              ; preds = %96
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  br label %93

114:                                              ; preds = %93
  br label %115

115:                                              ; preds = %114, %85
  br label %116

116:                                              ; preds = %115, %28
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @FF_THREAD_SLICE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %141

123:                                              ; preds = %116
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* @DRI, align 4
  %126 = call i32 @put_marker(i32* %124, i32 %125)
  %127 = load i32*, i32** %8, align 8
  %128 = call i32 @put_bits(i32* %127, i32 16, i32 4)
  %129 = load i32*, i32** %8, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %132, 1
  %134 = load i32*, i32** %12, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 8, %136
  %138 = sdiv i32 %133, %137
  %139 = add nsw i32 %138, 1
  %140 = call i32 @put_bits(i32* %129, i32 16, i32 %139)
  br label %141

141:                                              ; preds = %123, %116
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* @DHT, align 4
  %144 = call i32 @put_marker(i32* %142, i32 %143)
  %145 = load i32*, i32** %8, align 8
  %146 = call i32 @flush_put_bits(i32* %145)
  %147 = load i32*, i32** %8, align 8
  %148 = call i32* @put_bits_ptr(i32* %147)
  store i32* %148, i32** %16, align 8
  %149 = load i32*, i32** %8, align 8
  %150 = call i32 @put_bits(i32* %149, i32 16, i32 0)
  store i32 2, i32* %15, align 4
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %152 = icmp ne %struct.TYPE_9__* %151, null
  br i1 %152, label %153, label %224

153:                                              ; preds = %141
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @HUFFMAN_TABLE_OPTIMAL, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %224

159:                                              ; preds = %153
  %160 = load i32*, i32** %8, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @put_huffman_table(i32* %160, i32 0, i32 0, i32 %165, i32 %170)
  %172 = load i32, i32* %15, align 4
  %173 = sext i32 %172 to i64
  %174 = add nsw i64 %173, %171
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %15, align 4
  %176 = load i32*, i32** %8, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @put_huffman_table(i32* %176, i32 0, i32 1, i32 %181, i32 %186)
  %188 = load i32, i32* %15, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %189, %187
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %15, align 4
  %192 = load i32*, i32** %8, align 8
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = call i64 @put_huffman_table(i32* %192, i32 1, i32 0, i32 %197, i32 %202)
  %204 = load i32, i32* %15, align 4
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %205, %203
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %15, align 4
  %208 = load i32*, i32** %8, align 8
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i64 @put_huffman_table(i32* %208, i32 1, i32 1, i32 %213, i32 %218)
  %220 = load i32, i32* %15, align 4
  %221 = sext i32 %220 to i64
  %222 = add nsw i64 %221, %219
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* %15, align 4
  br label %257

224:                                              ; preds = %153, %141
  %225 = load i32*, i32** %8, align 8
  %226 = load i32, i32* @avpriv_mjpeg_bits_dc_luminance, align 4
  %227 = load i32, i32* @avpriv_mjpeg_val_dc, align 4
  %228 = call i64 @put_huffman_table(i32* %225, i32 0, i32 0, i32 %226, i32 %227)
  %229 = load i32, i32* %15, align 4
  %230 = sext i32 %229 to i64
  %231 = add nsw i64 %230, %228
  %232 = trunc i64 %231 to i32
  store i32 %232, i32* %15, align 4
  %233 = load i32*, i32** %8, align 8
  %234 = load i32, i32* @avpriv_mjpeg_bits_dc_chrominance, align 4
  %235 = load i32, i32* @avpriv_mjpeg_val_dc, align 4
  %236 = call i64 @put_huffman_table(i32* %233, i32 0, i32 1, i32 %234, i32 %235)
  %237 = load i32, i32* %15, align 4
  %238 = sext i32 %237 to i64
  %239 = add nsw i64 %238, %236
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %15, align 4
  %241 = load i32*, i32** %8, align 8
  %242 = load i32, i32* @avpriv_mjpeg_bits_ac_luminance, align 4
  %243 = load i32, i32* @avpriv_mjpeg_val_ac_luminance, align 4
  %244 = call i64 @put_huffman_table(i32* %241, i32 1, i32 0, i32 %242, i32 %243)
  %245 = load i32, i32* %15, align 4
  %246 = sext i32 %245 to i64
  %247 = add nsw i64 %246, %244
  %248 = trunc i64 %247 to i32
  store i32 %248, i32* %15, align 4
  %249 = load i32*, i32** %8, align 8
  %250 = load i32, i32* @avpriv_mjpeg_bits_ac_chrominance, align 4
  %251 = load i32, i32* @avpriv_mjpeg_val_ac_chrominance, align 4
  %252 = call i64 @put_huffman_table(i32* %249, i32 1, i32 1, i32 %250, i32 %251)
  %253 = load i32, i32* %15, align 4
  %254 = sext i32 %253 to i64
  %255 = add nsw i64 %254, %252
  %256 = trunc i64 %255 to i32
  store i32 %256, i32* %15, align 4
  br label %257

257:                                              ; preds = %224, %159
  %258 = load i32*, i32** %16, align 8
  %259 = load i32, i32* %15, align 4
  %260 = call i32 @AV_WB16(i32* %258, i32 %259)
  ret void
}

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @put_marker(i32*, i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @flush_put_bits(i32*) #1

declare dso_local i32* @put_bits_ptr(i32*) #1

declare dso_local i64 @put_huffman_table(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @AV_WB16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
