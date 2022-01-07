; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_imdct_and_windowing.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_imdct_and_windowing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64*, i64*, %struct.TYPE_9__*, %struct.TYPE_13__, %struct.TYPE_14__ }
%struct.TYPE_9__ = type { i32 (i64*, i64*, i64*, i64*, i32)* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, i64*, i64*)* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__*, i64*, i64*)* }
%struct.TYPE_10__ = type { i64*, i64*, i64*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64*, i64* }

@ff_aac_kbd_short_128 = common dso_local global i32 0, align 4
@ff_sine_128 = common dso_local global i32 0, align 4
@ff_aac_kbd_long_1024 = common dso_local global i32 0, align 4
@ff_sine_1024 = common dso_local global i32 0, align 4
@EIGHT_SHORT_SEQUENCE = common dso_local global i64 0, align 8
@ONLY_LONG_SEQUENCE = common dso_local global i64 0, align 8
@LONG_STOP_SEQUENCE = common dso_local global i64 0, align 8
@LONG_START_SEQUENCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_10__*)* @imdct_and_windowing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imdct_and_windowing(%struct.TYPE_12__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 3
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %5, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  store i64* %19, i64** %6, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  store i64* %22, i64** %7, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  store i64* %25, i64** %8, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @ff_aac_kbd_short_128, align 4
  %34 = call i64* @AAC_RENAME(i32 %33)
  br label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @ff_sine_128, align 4
  %37 = call i64* @AAC_RENAME(i32 %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i64* [ %34, %32 ], [ %37, %35 ]
  store i64* %39, i64** %9, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @ff_aac_kbd_long_1024, align 4
  %48 = call i64* @AAC_RENAME(i32 %47)
  br label %52

49:                                               ; preds = %38
  %50 = load i32, i32* @ff_sine_1024, align 4
  %51 = call i64* @AAC_RENAME(i32 %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i64* [ %48, %46 ], [ %51, %49 ]
  store i64* %53, i64** %10, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* @ff_aac_kbd_short_128, align 4
  %62 = call i64* @AAC_RENAME(i32 %61)
  br label %66

63:                                               ; preds = %52
  %64 = load i32, i32* @ff_sine_128, align 4
  %65 = call i64* @AAC_RENAME(i32 %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = phi i64* [ %62, %60 ], [ %65, %63 ]
  store i64* %67, i64** %11, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  store i64* %70, i64** %12, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  store i64* %73, i64** %13, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @EIGHT_SHORT_SEQUENCE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %105

81:                                               ; preds = %66
  store i32 0, i32* %14, align 4
  br label %82

82:                                               ; preds = %101, %81
  %83 = load i32, i32* %14, align 4
  %84 = icmp slt i32 %83, 1024
  br i1 %84, label %85, label %104

85:                                               ; preds = %82
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32 (%struct.TYPE_14__*, i64*, i64*)*, i32 (%struct.TYPE_14__*, i64*, i64*)** %88, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 4
  %92 = load i64*, i64** %12, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64*, i64** %6, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = call i32 %89(%struct.TYPE_14__* %91, i64* %95, i64* %99)
  br label %101

101:                                              ; preds = %85
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %102, 128
  store i32 %103, i32* %14, align 4
  br label %82

104:                                              ; preds = %82
  br label %115

105:                                              ; preds = %66
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i32 (%struct.TYPE_13__*, i64*, i64*)*, i32 (%struct.TYPE_13__*, i64*, i64*)** %108, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 3
  %112 = load i64*, i64** %12, align 8
  %113 = load i64*, i64** %6, align 8
  %114 = call i32 %109(%struct.TYPE_13__* %111, i64* %112, i64* %113)
  br label %115

115:                                              ; preds = %105, %104
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @ONLY_LONG_SEQUENCE, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %131, label %123

123:                                              ; preds = %115
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @LONG_STOP_SEQUENCE, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %158

131:                                              ; preds = %123, %115
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i64*, i64** %133, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @ONLY_LONG_SEQUENCE, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %147, label %139

139:                                              ; preds = %131
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @LONG_START_SEQUENCE, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %158

147:                                              ; preds = %139, %131
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i32 (i64*, i64*, i64*, i64*, i32)*, i32 (i64*, i64*, i64*, i64*, i32)** %151, align 8
  %153 = load i64*, i64** %7, align 8
  %154 = load i64*, i64** %8, align 8
  %155 = load i64*, i64** %12, align 8
  %156 = load i64*, i64** %10, align 8
  %157 = call i32 %152(i64* %153, i64* %154, i64* %155, i64* %156, i32 512)
  br label %266

158:                                              ; preds = %139, %123
  %159 = load i64*, i64** %7, align 8
  %160 = load i64*, i64** %8, align 8
  %161 = call i32 @memcpy(i64* %159, i64* %160, i32 3584)
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i64*, i64** %163, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @EIGHT_SHORT_SEQUENCE, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %247

169:                                              ; preds = %158
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load i32 (i64*, i64*, i64*, i64*, i32)*, i32 (i64*, i64*, i64*, i64*, i32)** %173, align 8
  %175 = load i64*, i64** %7, align 8
  %176 = getelementptr inbounds i64, i64* %175, i64 448
  %177 = getelementptr inbounds i64, i64* %176, i64 0
  %178 = load i64*, i64** %8, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 448
  %180 = load i64*, i64** %12, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 0
  %182 = load i64*, i64** %11, align 8
  %183 = call i32 %174(i64* %177, i64* %179, i64* %181, i64* %182, i32 64)
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load i32 (i64*, i64*, i64*, i64*, i32)*, i32 (i64*, i64*, i64*, i64*, i32)** %187, align 8
  %189 = load i64*, i64** %7, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 448
  %191 = getelementptr inbounds i64, i64* %190, i64 128
  %192 = load i64*, i64** %12, align 8
  %193 = getelementptr inbounds i64, i64* %192, i64 0
  %194 = getelementptr inbounds i64, i64* %193, i64 64
  %195 = load i64*, i64** %12, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 128
  %197 = load i64*, i64** %9, align 8
  %198 = call i32 %188(i64* %191, i64* %194, i64* %196, i64* %197, i32 64)
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = load i32 (i64*, i64*, i64*, i64*, i32)*, i32 (i64*, i64*, i64*, i64*, i32)** %202, align 8
  %204 = load i64*, i64** %7, align 8
  %205 = getelementptr inbounds i64, i64* %204, i64 448
  %206 = getelementptr inbounds i64, i64* %205, i64 256
  %207 = load i64*, i64** %12, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 128
  %209 = getelementptr inbounds i64, i64* %208, i64 64
  %210 = load i64*, i64** %12, align 8
  %211 = getelementptr inbounds i64, i64* %210, i64 256
  %212 = load i64*, i64** %9, align 8
  %213 = call i32 %203(i64* %206, i64* %209, i64* %211, i64* %212, i32 64)
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load i32 (i64*, i64*, i64*, i64*, i32)*, i32 (i64*, i64*, i64*, i64*, i32)** %217, align 8
  %219 = load i64*, i64** %7, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 448
  %221 = getelementptr inbounds i64, i64* %220, i64 384
  %222 = load i64*, i64** %12, align 8
  %223 = getelementptr inbounds i64, i64* %222, i64 256
  %224 = getelementptr inbounds i64, i64* %223, i64 64
  %225 = load i64*, i64** %12, align 8
  %226 = getelementptr inbounds i64, i64* %225, i64 384
  %227 = load i64*, i64** %9, align 8
  %228 = call i32 %218(i64* %221, i64* %224, i64* %226, i64* %227, i32 64)
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 2
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 0
  %233 = load i32 (i64*, i64*, i64*, i64*, i32)*, i32 (i64*, i64*, i64*, i64*, i32)** %232, align 8
  %234 = load i64*, i64** %13, align 8
  %235 = load i64*, i64** %12, align 8
  %236 = getelementptr inbounds i64, i64* %235, i64 384
  %237 = getelementptr inbounds i64, i64* %236, i64 64
  %238 = load i64*, i64** %12, align 8
  %239 = getelementptr inbounds i64, i64* %238, i64 512
  %240 = load i64*, i64** %9, align 8
  %241 = call i32 %233(i64* %234, i64* %237, i64* %239, i64* %240, i32 64)
  %242 = load i64*, i64** %7, align 8
  %243 = getelementptr inbounds i64, i64* %242, i64 448
  %244 = getelementptr inbounds i64, i64* %243, i64 512
  %245 = load i64*, i64** %13, align 8
  %246 = call i32 @memcpy(i64* %244, i64* %245, i32 512)
  br label %265

247:                                              ; preds = %158
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 2
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 0
  %252 = load i32 (i64*, i64*, i64*, i64*, i32)*, i32 (i64*, i64*, i64*, i64*, i32)** %251, align 8
  %253 = load i64*, i64** %7, align 8
  %254 = getelementptr inbounds i64, i64* %253, i64 448
  %255 = load i64*, i64** %8, align 8
  %256 = getelementptr inbounds i64, i64* %255, i64 448
  %257 = load i64*, i64** %12, align 8
  %258 = load i64*, i64** %11, align 8
  %259 = call i32 %252(i64* %254, i64* %256, i64* %257, i64* %258, i32 64)
  %260 = load i64*, i64** %7, align 8
  %261 = getelementptr inbounds i64, i64* %260, i64 576
  %262 = load i64*, i64** %12, align 8
  %263 = getelementptr inbounds i64, i64* %262, i64 64
  %264 = call i32 @memcpy(i64* %261, i64* %263, i32 3584)
  br label %265

265:                                              ; preds = %247, %169
  br label %266

266:                                              ; preds = %265, %147
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 0
  %269 = load i64*, i64** %268, align 8
  %270 = getelementptr inbounds i64, i64* %269, i64 0
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @EIGHT_SHORT_SEQUENCE, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %327

274:                                              ; preds = %266
  %275 = load i64*, i64** %8, align 8
  %276 = load i64*, i64** %13, align 8
  %277 = getelementptr inbounds i64, i64* %276, i64 64
  %278 = call i32 @memcpy(i64* %275, i64* %277, i32 512)
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 2
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 0
  %283 = load i32 (i64*, i64*, i64*, i64*, i32)*, i32 (i64*, i64*, i64*, i64*, i32)** %282, align 8
  %284 = load i64*, i64** %8, align 8
  %285 = getelementptr inbounds i64, i64* %284, i64 64
  %286 = load i64*, i64** %12, align 8
  %287 = getelementptr inbounds i64, i64* %286, i64 512
  %288 = getelementptr inbounds i64, i64* %287, i64 64
  %289 = load i64*, i64** %12, align 8
  %290 = getelementptr inbounds i64, i64* %289, i64 640
  %291 = load i64*, i64** %9, align 8
  %292 = call i32 %283(i64* %285, i64* %288, i64* %290, i64* %291, i32 64)
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 2
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 0
  %297 = load i32 (i64*, i64*, i64*, i64*, i32)*, i32 (i64*, i64*, i64*, i64*, i32)** %296, align 8
  %298 = load i64*, i64** %8, align 8
  %299 = getelementptr inbounds i64, i64* %298, i64 192
  %300 = load i64*, i64** %12, align 8
  %301 = getelementptr inbounds i64, i64* %300, i64 640
  %302 = getelementptr inbounds i64, i64* %301, i64 64
  %303 = load i64*, i64** %12, align 8
  %304 = getelementptr inbounds i64, i64* %303, i64 768
  %305 = load i64*, i64** %9, align 8
  %306 = call i32 %297(i64* %299, i64* %302, i64* %304, i64* %305, i32 64)
  %307 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 2
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 0
  %311 = load i32 (i64*, i64*, i64*, i64*, i32)*, i32 (i64*, i64*, i64*, i64*, i32)** %310, align 8
  %312 = load i64*, i64** %8, align 8
  %313 = getelementptr inbounds i64, i64* %312, i64 320
  %314 = load i64*, i64** %12, align 8
  %315 = getelementptr inbounds i64, i64* %314, i64 768
  %316 = getelementptr inbounds i64, i64* %315, i64 64
  %317 = load i64*, i64** %12, align 8
  %318 = getelementptr inbounds i64, i64* %317, i64 896
  %319 = load i64*, i64** %9, align 8
  %320 = call i32 %311(i64* %313, i64* %316, i64* %318, i64* %319, i32 64)
  %321 = load i64*, i64** %8, align 8
  %322 = getelementptr inbounds i64, i64* %321, i64 448
  %323 = load i64*, i64** %12, align 8
  %324 = getelementptr inbounds i64, i64* %323, i64 896
  %325 = getelementptr inbounds i64, i64* %324, i64 64
  %326 = call i32 @memcpy(i64* %322, i64* %325, i32 512)
  br label %352

327:                                              ; preds = %266
  %328 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 0
  %330 = load i64*, i64** %329, align 8
  %331 = getelementptr inbounds i64, i64* %330, i64 0
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @LONG_START_SEQUENCE, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %335, label %346

335:                                              ; preds = %327
  %336 = load i64*, i64** %8, align 8
  %337 = load i64*, i64** %12, align 8
  %338 = getelementptr inbounds i64, i64* %337, i64 512
  %339 = call i32 @memcpy(i64* %336, i64* %338, i32 3584)
  %340 = load i64*, i64** %8, align 8
  %341 = getelementptr inbounds i64, i64* %340, i64 448
  %342 = load i64*, i64** %12, align 8
  %343 = getelementptr inbounds i64, i64* %342, i64 896
  %344 = getelementptr inbounds i64, i64* %343, i64 64
  %345 = call i32 @memcpy(i64* %341, i64* %344, i32 512)
  br label %351

346:                                              ; preds = %327
  %347 = load i64*, i64** %8, align 8
  %348 = load i64*, i64** %12, align 8
  %349 = getelementptr inbounds i64, i64* %348, i64 512
  %350 = call i32 @memcpy(i64* %347, i64* %349, i32 4096)
  br label %351

351:                                              ; preds = %346, %335
  br label %352

352:                                              ; preds = %351, %274
  ret void
}

declare dso_local i64* @AAC_RENAME(i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
