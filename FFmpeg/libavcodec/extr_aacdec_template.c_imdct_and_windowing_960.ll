; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_imdct_and_windowing_960.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_imdct_and_windowing_960.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__*, %struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i32* }
%struct.TYPE_9__ = type { i32 (i32*, i32*, i32*, i32*, i32)* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, i32*, i32*, i32)* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__*, i32*, i32*, i32)* }
%struct.TYPE_10__ = type { i32*, i32*, i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64*, i64* }

@ff_aac_kbd_short_120 = common dso_local global i32 0, align 4
@ff_sine_120 = common dso_local global i32 0, align 4
@ff_aac_kbd_long_960 = common dso_local global i32 0, align 4
@ff_sine_960 = common dso_local global i32 0, align 4
@EIGHT_SHORT_SEQUENCE = common dso_local global i64 0, align 8
@ONLY_LONG_SEQUENCE = common dso_local global i64 0, align 8
@LONG_STOP_SEQUENCE = common dso_local global i64 0, align 8
@LONG_START_SEQUENCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_10__*)* @imdct_and_windowing_960 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imdct_and_windowing_960(%struct.TYPE_12__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 3
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %5, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %6, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %7, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %8, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @ff_aac_kbd_short_120, align 4
  %34 = call i32* @AAC_RENAME(i32 %33)
  br label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @ff_sine_120, align 4
  %37 = call i32* @AAC_RENAME(i32 %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i32* [ %34, %32 ], [ %37, %35 ]
  store i32* %39, i32** %9, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @ff_aac_kbd_long_960, align 4
  %48 = call i32* @AAC_RENAME(i32 %47)
  br label %52

49:                                               ; preds = %38
  %50 = load i32, i32* @ff_sine_960, align 4
  %51 = call i32* @AAC_RENAME(i32 %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i32* [ %48, %46 ], [ %51, %49 ]
  store i32* %53, i32** %10, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* @ff_aac_kbd_short_120, align 4
  %62 = call i32* @AAC_RENAME(i32 %61)
  br label %66

63:                                               ; preds = %52
  %64 = load i32, i32* @ff_sine_120, align 4
  %65 = call i32* @AAC_RENAME(i32 %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = phi i32* [ %62, %60 ], [ %65, %63 ]
  store i32* %67, i32** %11, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %12, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %13, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @EIGHT_SHORT_SEQUENCE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %109

81:                                               ; preds = %66
  store i32 0, i32* %14, align 4
  br label %82

82:                                               ; preds = %105, %81
  %83 = load i32, i32* %14, align 4
  %84 = icmp slt i32 %83, 8
  br i1 %84, label %85, label %108

85:                                               ; preds = %82
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i32 (%struct.TYPE_14__*, i32*, i32*, i32)*, i32 (%struct.TYPE_14__*, i32*, i32*, i32)** %89, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %92, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = load i32, i32* %14, align 4
  %96 = mul nsw i32 %95, 120
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* %14, align 4
  %101 = mul nsw i32 %100, 128
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = call i32 %90(%struct.TYPE_14__* %93, i32* %98, i32* %103, i32 1)
  br label %105

105:                                              ; preds = %85
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %14, align 4
  br label %82

108:                                              ; preds = %82
  br label %121

109:                                              ; preds = %66
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i32 (%struct.TYPE_13__*, i32*, i32*, i32)*, i32 (%struct.TYPE_13__*, i32*, i32*, i32)** %113, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = load i32*, i32** %12, align 8
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 %114(%struct.TYPE_13__* %117, i32* %118, i32* %119, i32 1)
  br label %121

121:                                              ; preds = %109, %108
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @ONLY_LONG_SEQUENCE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %137, label %129

129:                                              ; preds = %121
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @LONG_STOP_SEQUENCE, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %164

137:                                              ; preds = %129, %121
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i64*, i64** %139, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @ONLY_LONG_SEQUENCE, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %153, label %145

145:                                              ; preds = %137
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i64*, i64** %147, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @LONG_START_SEQUENCE, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %145, %137
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i32 (i32*, i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32*, i32)** %157, align 8
  %159 = load i32*, i32** %7, align 8
  %160 = load i32*, i32** %8, align 8
  %161 = load i32*, i32** %12, align 8
  %162 = load i32*, i32** %10, align 8
  %163 = call i32 %158(i32* %159, i32* %160, i32* %161, i32* %162, i32 480)
  br label %272

164:                                              ; preds = %145, %129
  %165 = load i32*, i32** %7, align 8
  %166 = load i32*, i32** %8, align 8
  %167 = call i32 @memcpy(i32* %165, i32* %166, i32 1680)
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i64*, i64** %169, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @EIGHT_SHORT_SEQUENCE, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %253

175:                                              ; preds = %164
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i32 (i32*, i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32*, i32)** %179, align 8
  %181 = load i32*, i32** %7, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 420
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  %184 = load i32*, i32** %8, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 420
  %186 = load i32*, i32** %12, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32*, i32** %11, align 8
  %189 = call i32 %180(i32* %183, i32* %185, i32* %187, i32* %188, i32 60)
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load i32 (i32*, i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32*, i32)** %193, align 8
  %195 = load i32*, i32** %7, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 420
  %197 = getelementptr inbounds i32, i32* %196, i64 120
  %198 = load i32*, i32** %12, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = getelementptr inbounds i32, i32* %199, i64 60
  %201 = load i32*, i32** %12, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 120
  %203 = load i32*, i32** %9, align 8
  %204 = call i32 %194(i32* %197, i32* %200, i32* %202, i32* %203, i32 60)
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = load i32 (i32*, i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32*, i32)** %208, align 8
  %210 = load i32*, i32** %7, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 420
  %212 = getelementptr inbounds i32, i32* %211, i64 240
  %213 = load i32*, i32** %12, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 120
  %215 = getelementptr inbounds i32, i32* %214, i64 60
  %216 = load i32*, i32** %12, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 240
  %218 = load i32*, i32** %9, align 8
  %219 = call i32 %209(i32* %212, i32* %215, i32* %217, i32* %218, i32 60)
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  %224 = load i32 (i32*, i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32*, i32)** %223, align 8
  %225 = load i32*, i32** %7, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 420
  %227 = getelementptr inbounds i32, i32* %226, i64 360
  %228 = load i32*, i32** %12, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 240
  %230 = getelementptr inbounds i32, i32* %229, i64 60
  %231 = load i32*, i32** %12, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 360
  %233 = load i32*, i32** %9, align 8
  %234 = call i32 %224(i32* %227, i32* %230, i32* %232, i32* %233, i32 60)
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 0
  %239 = load i32 (i32*, i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32*, i32)** %238, align 8
  %240 = load i32*, i32** %13, align 8
  %241 = load i32*, i32** %12, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 360
  %243 = getelementptr inbounds i32, i32* %242, i64 60
  %244 = load i32*, i32** %12, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 480
  %246 = load i32*, i32** %9, align 8
  %247 = call i32 %239(i32* %240, i32* %243, i32* %245, i32* %246, i32 60)
  %248 = load i32*, i32** %7, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 420
  %250 = getelementptr inbounds i32, i32* %249, i64 480
  %251 = load i32*, i32** %13, align 8
  %252 = call i32 @memcpy(i32* %250, i32* %251, i32 240)
  br label %271

253:                                              ; preds = %164
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 0
  %258 = load i32 (i32*, i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32*, i32)** %257, align 8
  %259 = load i32*, i32** %7, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 420
  %261 = load i32*, i32** %8, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 420
  %263 = load i32*, i32** %12, align 8
  %264 = load i32*, i32** %11, align 8
  %265 = call i32 %258(i32* %260, i32* %262, i32* %263, i32* %264, i32 60)
  %266 = load i32*, i32** %7, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 540
  %268 = load i32*, i32** %12, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 60
  %270 = call i32 @memcpy(i32* %267, i32* %269, i32 1680)
  br label %271

271:                                              ; preds = %253, %175
  br label %272

272:                                              ; preds = %271, %153
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 0
  %275 = load i64*, i64** %274, align 8
  %276 = getelementptr inbounds i64, i64* %275, i64 0
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @EIGHT_SHORT_SEQUENCE, align 8
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %280, label %333

280:                                              ; preds = %272
  %281 = load i32*, i32** %8, align 8
  %282 = load i32*, i32** %13, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 60
  %284 = call i32 @memcpy(i32* %281, i32* %283, i32 240)
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 0
  %289 = load i32 (i32*, i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32*, i32)** %288, align 8
  %290 = load i32*, i32** %8, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 60
  %292 = load i32*, i32** %12, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 480
  %294 = getelementptr inbounds i32, i32* %293, i64 60
  %295 = load i32*, i32** %12, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 600
  %297 = load i32*, i32** %9, align 8
  %298 = call i32 %289(i32* %291, i32* %294, i32* %296, i32* %297, i32 60)
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_9__*, %struct.TYPE_9__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 0
  %303 = load i32 (i32*, i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32*, i32)** %302, align 8
  %304 = load i32*, i32** %8, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 180
  %306 = load i32*, i32** %12, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 600
  %308 = getelementptr inbounds i32, i32* %307, i64 60
  %309 = load i32*, i32** %12, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 720
  %311 = load i32*, i32** %9, align 8
  %312 = call i32 %303(i32* %305, i32* %308, i32* %310, i32* %311, i32 60)
  %313 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i32 0, i32 0
  %315 = load %struct.TYPE_9__*, %struct.TYPE_9__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 0
  %317 = load i32 (i32*, i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32*, i32)** %316, align 8
  %318 = load i32*, i32** %8, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 300
  %320 = load i32*, i32** %12, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 720
  %322 = getelementptr inbounds i32, i32* %321, i64 60
  %323 = load i32*, i32** %12, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 840
  %325 = load i32*, i32** %9, align 8
  %326 = call i32 %317(i32* %319, i32* %322, i32* %324, i32* %325, i32 60)
  %327 = load i32*, i32** %8, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 420
  %329 = load i32*, i32** %12, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 840
  %331 = getelementptr inbounds i32, i32* %330, i64 60
  %332 = call i32 @memcpy(i32* %328, i32* %331, i32 240)
  br label %358

333:                                              ; preds = %272
  %334 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %334, i32 0, i32 0
  %336 = load i64*, i64** %335, align 8
  %337 = getelementptr inbounds i64, i64* %336, i64 0
  %338 = load i64, i64* %337, align 8
  %339 = load i64, i64* @LONG_START_SEQUENCE, align 8
  %340 = icmp eq i64 %338, %339
  br i1 %340, label %341, label %352

341:                                              ; preds = %333
  %342 = load i32*, i32** %8, align 8
  %343 = load i32*, i32** %12, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 480
  %345 = call i32 @memcpy(i32* %342, i32* %344, i32 1680)
  %346 = load i32*, i32** %8, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 420
  %348 = load i32*, i32** %12, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 840
  %350 = getelementptr inbounds i32, i32* %349, i64 60
  %351 = call i32 @memcpy(i32* %347, i32* %350, i32 240)
  br label %357

352:                                              ; preds = %333
  %353 = load i32*, i32** %8, align 8
  %354 = load i32*, i32** %12, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 480
  %356 = call i32 @memcpy(i32* %353, i32* %355, i32 1920)
  br label %357

357:                                              ; preds = %352, %341
  br label %358

358:                                              ; preds = %357, %280
  ret void
}

declare dso_local i32* @AAC_RENAME(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
