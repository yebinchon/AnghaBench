; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_coffelf.c_MappedMemoryLoadCoff.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_coffelf.c_MappedMemoryLoadCoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_13__ = type { i32, i64, i64, i64, i32, i32, i32* }
%struct.TYPE_14__ = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i64, i64, i64, i64, i64, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@MSH2 = common dso_local global %struct.TYPE_15__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MappedMemoryLoadCoff(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_13__, align 8
  %5 = alloca %struct.TYPE_14__, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  store i64 0, i64* %11, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %7, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %283

16:                                               ; preds = %1
  %17 = bitcast %struct.TYPE_13__* %4 to i8*
  %18 = load i32*, i32** %7, align 8
  %19 = call i64 @fread(i8* %17, i32 48, i32 1, i32* %18)
  store i64 %19, i64* %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @WordSwap(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @DoubleWordSwap(i64 %24)
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @DoubleWordSwap(i64 %27)
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @DoubleWordSwap(i64 %30)
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @DoubleWordSwap(i64 %33)
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @WordSwap(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @WordSwap(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 6
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 5
  br i1 %45, label %57, label %46

46:                                               ; preds = %16
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 6
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = icmp ne i64 %55, 56
  br i1 %56, label %57, label %60

57:                                               ; preds = %52, %46, %16
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @fclose(i32* %58)
  store i32 -1, i32* %2, align 4
  br label %283

60:                                               ; preds = %52
  %61 = bitcast %struct.TYPE_14__* %5 to i8*
  %62 = load i32*, i32** %7, align 8
  %63 = call i64 @fread(i8* %61, i32 56, i32 1, i32* %62)
  store i64 %63, i64* %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @WordSwap(i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @DoubleWordSwap(i64 %68)
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @DoubleWordSwap(i64 %71)
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @DoubleWordSwap(i64 %74)
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @DoubleWordSwap(i64 %77)
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @DoubleWordSwap(i64 %80)
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 6
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @DoubleWordSwap(i64 %83)
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = mul i64 64, %87
  %89 = trunc i64 %88 to i32
  %90 = call i64 @malloc(i32 %89)
  %91 = inttoptr i64 %90 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %91, %struct.TYPE_12__** %6, align 8
  %92 = icmp eq %struct.TYPE_12__* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %60
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @fclose(i32* %94)
  store i32 -2, i32* %2, align 4
  br label %283

96:                                               ; preds = %60
  store i64 0, i64* %9, align 8
  br label %97

97:                                               ; preds = %164, %96
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = icmp ult i64 %98, %101
  br i1 %102, label %103, label %167

103:                                              ; preds = %97
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i64 %105
  %107 = bitcast %struct.TYPE_12__* %106 to i8*
  %108 = load i32*, i32** %7, align 8
  %109 = call i64 @fread(i8* %107, i32 64, i32 1, i32* %108)
  store i64 %109, i64* %11, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %111 = load i64, i64* %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @DoubleWordSwap(i64 %114)
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %117 = load i64, i64* %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @DoubleWordSwap(i64 %120)
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %123 = load i64, i64* %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @DoubleWordSwap(i64 %126)
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %129 = load i64, i64* %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @DoubleWordSwap(i64 %132)
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %135 = load i64, i64* %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @DoubleWordSwap(i64 %138)
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %141 = load i64, i64* %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @DoubleWordSwap(i64 %144)
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %147 = load i64, i64* %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @WordSwap(i32 %150)
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %153 = load i64, i64* %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @WordSwap(i32 %156)
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %159 = load i64, i64* %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 8
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @DoubleWordSwap(i64 %162)
  br label %164

164:                                              ; preds = %103
  %165 = load i64, i64* %9, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %9, align 8
  br label %97

167:                                              ; preds = %97
  %168 = call i32 (...) @YabauseResetNoLoad()
  %169 = call i32 (...) @YabauseSpeedySetup()
  store i64 0, i64* %9, align 8
  br label %170

170:                                              ; preds = %262, %167
  %171 = load i64, i64* %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = icmp ult i64 %171, %174
  br i1 %175, label %176, label %265

176:                                              ; preds = %170
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %178 = load i64, i64* %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %176
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %185 = load i64, i64* %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %183, %176
  br label %262

191:                                              ; preds = %183
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %193 = load i64, i64* %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = trunc i64 %196 to i32
  %198 = call i64 @malloc(i32 %197)
  %199 = inttoptr i64 %198 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %199, %struct.TYPE_12__** %8, align 8
  %200 = icmp eq %struct.TYPE_12__* %199, null
  br i1 %200, label %201, label %206

201:                                              ; preds = %191
  %202 = load i32*, i32** %7, align 8
  %203 = call i32 @fclose(i32* %202)
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %205 = call i32 @free(%struct.TYPE_12__* %204)
  store i32 -2, i32* %2, align 4
  br label %283

206:                                              ; preds = %191
  %207 = load i32*, i32** %7, align 8
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %209 = load i64, i64* %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = load i32, i32* @SEEK_SET, align 4
  %214 = call i32 @fseek(i32* %207, i64 %212, i32 %213)
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %216 = bitcast %struct.TYPE_12__* %215 to i8*
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %218 = load i64, i64* %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = trunc i64 %221 to i32
  %223 = load i32*, i32** %7, align 8
  %224 = call i64 @fread(i8* %216, i32 1, i32 %222, i32* %223)
  store i64 %224, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %225

225:                                              ; preds = %245, %206
  %226 = load i64, i64* %10, align 8
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %228 = load i64, i64* %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = icmp ult i64 %226, %231
  br i1 %232, label %233, label %248

233:                                              ; preds = %225
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %235 = load i64, i64* %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* %10, align 8
  %240 = add i64 %238, %239
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %242 = load i64, i64* %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i64 %242
  %244 = call i32 @MappedMemoryWriteByte(i64 %240, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %243)
  br label %245

245:                                              ; preds = %233
  %246 = load i64, i64* %10, align 8
  %247 = add i64 %246, 1
  store i64 %247, i64* %10, align 8
  br label %225

248:                                              ; preds = %225
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %250 = load i64, i64* %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %255 = load i64, i64* %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = call i32 @SH2WriteNotify(i64 %253, i64 %258)
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %261 = call i32 @free(%struct.TYPE_12__* %260)
  br label %262

262:                                              ; preds = %248, %190
  %263 = load i64, i64* %9, align 8
  %264 = add i64 %263, 1
  store i64 %264, i64* %9, align 8
  br label %170

265:                                              ; preds = %170
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %267 = call i32 @free(%struct.TYPE_12__* %266)
  %268 = load i32*, i32** %7, align 8
  %269 = call i32 @fclose(i32* %268)
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** @MSH2, align 8
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** @MSH2, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 0
  %273 = call i32 @SH2GetRegisters(%struct.TYPE_15__* %270, %struct.TYPE_16__* %272)
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 4
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** @MSH2, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 0
  store i64 %275, i64* %278, align 8
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** @MSH2, align 8
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** @MSH2, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 0
  %282 = call i32 @SH2SetRegisters(%struct.TYPE_15__* %279, %struct.TYPE_16__* %281)
  store i32 0, i32* %2, align 4
  br label %283

283:                                              ; preds = %265, %201, %93, %57, %15
  %284 = load i32, i32* %2, align 4
  ret i32 %284
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @WordSwap(i32) #1

declare dso_local i32 @DoubleWordSwap(i64) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @YabauseResetNoLoad(...) #1

declare dso_local i32 @YabauseSpeedySetup(...) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i32 @MappedMemoryWriteByte(i64, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8) #1

declare dso_local i32 @SH2WriteNotify(i64, i64) #1

declare dso_local i32 @SH2GetRegisters(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @SH2SetRegisters(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
