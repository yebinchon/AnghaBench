; ModuleID = '/home/carl/AnghaBench/RetroArch/midi/drivers/extr_alsa_midi.c_alsa_midi_read.c'
source_filename = "/home/carl/AnghaBench/RetroArch/midi/drivers/extr_alsa_midi.c_alsa_midi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, i32, i64 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }

@SND_SEQ_EVENT_NOTEOFF = common dso_local global i64 0, align 8
@SND_SEQ_EVENT_NOTEON = common dso_local global i64 0, align 8
@SND_SEQ_EVENT_KEYPRESS = common dso_local global i64 0, align 8
@SND_SEQ_EVENT_CONTROLLER = common dso_local global i64 0, align 8
@SND_SEQ_EVENT_PGMCHANGE = common dso_local global i64 0, align 8
@SND_SEQ_EVENT_CHANPRESS = common dso_local global i64 0, align 8
@SND_SEQ_EVENT_PITCHBEND = common dso_local global i64 0, align 8
@SND_SEQ_EVENT_SYSEX = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_16__*)* @alsa_midi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alsa_midi_read(i8* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %8, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @snd_seq_event_input(i32 %15, %struct.TYPE_15__** %7)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %333

20:                                               ; preds = %2
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SND_SEQ_EVENT_NOTEOFF, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %20
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 128, %31
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %32, i32* %36, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 %41, i32* %45, align 4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  store i32 %50, i32* %54, align 4
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  store i32 3, i32* %56, align 8
  br label %325

57:                                               ; preds = %20
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SND_SEQ_EVENT_NOTEON, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %94

63:                                               ; preds = %57
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 144, %68
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %69, i32* %73, align 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 %78, i32* %82, align 4
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  store i32 %87, i32* %91, align 4
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  store i32 3, i32* %93, align 8
  br label %324

94:                                               ; preds = %57
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SND_SEQ_EVENT_KEYPRESS, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %131

100:                                              ; preds = %94
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = or i32 160, %105
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  store i32 %106, i32* %110, align 4
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  store i32 %115, i32* %119, align 4
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  store i32 %124, i32* %128, align 4
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  store i32 3, i32* %130, align 8
  br label %323

131:                                              ; preds = %94
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @SND_SEQ_EVENT_CONTROLLER, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %168

137:                                              ; preds = %131
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = or i32 176, %142
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  store i32 %143, i32* %147, align 4
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  store i32 %152, i32* %156, align 4
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 2
  store i32 %161, i32* %165, align 4
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  store i32 3, i32* %167, align 8
  br label %322

168:                                              ; preds = %131
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @SND_SEQ_EVENT_PGMCHANGE, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %196

174:                                              ; preds = %168
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = or i32 192, %179
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  store i32 %180, i32* %184, align 4
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  store i32 %189, i32* %193, align 4
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 1
  store i32 2, i32* %195, align 8
  br label %321

196:                                              ; preds = %168
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @SND_SEQ_EVENT_CHANPRESS, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %224

202:                                              ; preds = %196
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = or i32 208, %207
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  store i32 %208, i32* %212, align 4
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 1
  store i32 %217, i32* %221, align 4
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 1
  store i32 2, i32* %223, align 8
  br label %320

224:                                              ; preds = %196
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @SND_SEQ_EVENT_PITCHBEND, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %263

230:                                              ; preds = %224
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = or i32 224, %235
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  store i32 %236, i32* %240, align 4
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = and i32 %245, 127
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 1
  store i32 %246, i32* %250, align 4
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = ashr i32 %255, 7
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 2
  store i32 %256, i32* %260, align 4
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 1
  store i32 3, i32* %262, align 8
  br label %319

263:                                              ; preds = %224
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @SND_SEQ_EVENT_SYSEX, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %317

269:                                              ; preds = %263
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = icmp sle i32 %274, %277
  br i1 %278, label %279, label %316

279:                                              ; preds = %269
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = inttoptr i64 %284 to i32*
  store i32* %285, i32** %10, align 8
  store i64 0, i64* %9, align 8
  br label %286

286:                                              ; preds = %305, %279
  %287 = load i64, i64* %9, align 8
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = sext i32 %292 to i64
  %294 = icmp ult i64 %287, %293
  br i1 %294, label %295, label %308

295:                                              ; preds = %286
  %296 = load i32*, i32** %10, align 8
  %297 = load i64, i64* %9, align 8
  %298 = getelementptr inbounds i32, i32* %296, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 0
  %302 = load i32*, i32** %301, align 8
  %303 = load i64, i64* %9, align 8
  %304 = getelementptr inbounds i32, i32* %302, i64 %303
  store i32 %299, i32* %304, align 4
  br label %305

305:                                              ; preds = %295
  %306 = load i64, i64* %9, align 8
  %307 = add i64 %306, 1
  store i64 %307, i64* %9, align 8
  br label %286

308:                                              ; preds = %286
  %309 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 1
  store i32 %313, i32* %315, align 8
  br label %316

316:                                              ; preds = %308, %269
  br label %318

317:                                              ; preds = %263
  store i32 -1, i32* %6, align 4
  br label %318

318:                                              ; preds = %317, %316
  br label %319

319:                                              ; preds = %318, %230
  br label %320

320:                                              ; preds = %319, %202
  br label %321

321:                                              ; preds = %320, %174
  br label %322

322:                                              ; preds = %321, %137
  br label %323

323:                                              ; preds = %322, %100
  br label %324

324:                                              ; preds = %323, %63
  br label %325

325:                                              ; preds = %324, %26
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i32 0, i32 2
  store i64 0, i64* %327, align 8
  %328 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %329 = call i32 @snd_seq_free_event(%struct.TYPE_15__* %328)
  %330 = load i32, i32* %6, align 4
  %331 = icmp sge i32 %330, 0
  %332 = zext i1 %331 to i32
  store i32 %332, i32* %3, align 4
  br label %333

333:                                              ; preds = %325, %19
  %334 = load i32, i32* %3, align 4
  ret i32 %334
}

declare dso_local i32 @snd_seq_event_input(i32, %struct.TYPE_15__**) #1

declare dso_local i32 @snd_seq_free_event(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
