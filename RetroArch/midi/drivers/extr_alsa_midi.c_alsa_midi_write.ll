; ModuleID = '/home/carl/AnghaBench/RetroArch/midi/drivers/extr_alsa_midi.c_alsa_midi_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/midi/drivers/extr_alsa_midi.c_alsa_midi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32*, i32, i32 }
%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_16__, %struct.TYPE_26__, %struct.TYPE_22__, %struct.TYPE_20__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32, i64 }
%struct.TYPE_26__ = type { %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_25__ = type { i32*, i32 }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_27__, i32, %struct.TYPE_21__, i32 }
%struct.TYPE_27__ = type { i32, i64 }
%struct.TYPE_21__ = type { i32 }

@alsa_midi_ev_map = common dso_local global i64* null, align 8
@SND_SEQ_TIME_STAMP_REAL = common dso_local global i32 0, align 4
@SND_SEQ_TIME_MODE_ABS = common dso_local global i32 0, align 4
@SND_SEQ_ADDRESS_SUBSCRIBERS = common dso_local global i32 0, align 4
@SND_SEQ_EVENT_NOTEOFF = common dso_local global i64 0, align 8
@SND_SEQ_EVENT_NOTEON = common dso_local global i64 0, align 8
@SND_SEQ_EVENT_KEYPRESS = common dso_local global i64 0, align 8
@SND_SEQ_EVENT_CONTROLLER = common dso_local global i64 0, align 8
@SND_SEQ_EVENT_PGMCHANGE = common dso_local global i64 0, align 8
@SND_SEQ_EVENT_CHANPRESS = common dso_local global i64 0, align 8
@SND_SEQ_EVENT_PITCHBEND = common dso_local global i64 0, align 8
@SND_SEQ_EVENT_SYSEX = common dso_local global i64 0, align 8
@SND_SEQ_EVENT_LENGTH_VARIABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_18__*)* @alsa_midi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alsa_midi_write(i8* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %9, %struct.TYPE_19__** %7, align 8
  %10 = load i64*, i64** @alsa_midi_ev_map, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %15, 4
  %17 = and i32 %16, 7
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %10, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = load i32, i32* @SND_SEQ_TIME_STAMP_REAL, align 4
  %23 = load i32, i32* @SND_SEQ_TIME_MODE_ABS, align 4
  %24 = or i32 %22, %23
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  store i32 %24, i32* %25, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 6
  store i32 %28, i32* %29, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sdiv i32 %36, 1000000
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %33, %38
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 1
  store i64 %39, i64* %42, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = srem i32 %49, 1000000
  %51 = mul nsw i32 %50, 1000
  %52 = add nsw i32 %46, %51
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sge i32 %59, 1000000000
  br i1 %60, label %61, label %72

61:                                               ; preds = %2
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 1000000000
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %61, %2
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @SND_SEQ_ADDRESS_SUBSCRIBERS, align 4
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SND_SEQ_EVENT_NOTEOFF, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %96, label %86

86:                                               ; preds = %72
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SND_SEQ_EVENT_NOTEON, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SND_SEQ_EVENT_KEYPRESS, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %122

96:                                               ; preds = %91, %86, %72
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 15
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 4
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 4
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 2
  store i32 %118, i32* %121, align 4
  br label %238

122:                                              ; preds = %91
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @SND_SEQ_EVENT_CONTROLLER, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %153

127:                                              ; preds = %122
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 15
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 1
  store i32 %141, i32* %144, align 4
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 2
  store i32 %149, i32* %152, align 8
  br label %237

153:                                              ; preds = %122
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @SND_SEQ_EVENT_PGMCHANGE, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @SND_SEQ_EVENT_CHANPRESS, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %181

163:                                              ; preds = %158, %153
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, 15
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 0
  store i32 %169, i32* %172, align 8
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 2
  store i32 %177, i32* %180, align 8
  br label %236

181:                                              ; preds = %158
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @SND_SEQ_EVENT_PITCHBEND, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %212

186:                                              ; preds = %181
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  %191 = load i32, i32* %190, align 4
  %192 = and i32 %191, 15
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 0
  store i32 %192, i32* %195, align 8
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 2
  %205 = load i32, i32* %204, align 4
  %206 = shl i32 %205, 7
  %207 = or i32 %200, %206
  %208 = sub nsw i32 %207, 8192
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 2
  store i32 %208, i32* %211, align 8
  br label %235

212:                                              ; preds = %181
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @SND_SEQ_EVENT_SYSEX, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %234

217:                                              ; preds = %212
  %218 = load i32, i32* @SND_SEQ_EVENT_LENGTH_VARIABLE, align 4
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = or i32 %220, %218
  store i32 %221, i32* %219, align 8
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 0
  store i32* %224, i32** %227, align 8
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %232, i32 0, i32 1
  store i32 %230, i32* %233, align 8
  br label %234

234:                                              ; preds = %217, %212
  br label %235

235:                                              ; preds = %234, %186
  br label %236

236:                                              ; preds = %235, %163
  br label %237

237:                                              ; preds = %236, %127
  br label %238

238:                                              ; preds = %237, %96
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @snd_seq_event_output(i32 %241, %struct.TYPE_17__* %6)
  store i32 %242, i32* %5, align 4
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %248, i32 0, i32 1
  store i64 %246, i64* %249, align 8
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %255, i32 0, i32 0
  store i32 %253, i32* %256, align 8
  %257 = load i32, i32* %5, align 4
  %258 = icmp sge i32 %257, 0
  %259 = zext i1 %258 to i32
  ret i32 %259
}

declare dso_local i32 @snd_seq_event_output(i32, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
