; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_ym2612.c_YM2612PicoStateLoad2.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_ym2612.c_YM2612PicoStateLoad2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, %struct.TYPE_13__, %struct.TYPE_15__*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__, i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i32*, i32*, i32* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@ym2612 = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@g_lfo_ampm = common dso_local global i32 0, align 4
@SLOT1 = common dso_local global i64 0, align 8
@opn_fktable = common dso_local global i32* null, align 8
@fn_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @YM2612PicoStateLoad2(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__, align 8
  %7 = alloca %struct.TYPE_16__, align 8
  %8 = alloca %struct.TYPE_16__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load i8*, i8** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 0), align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 256
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 @memcpy(%struct.TYPE_16__* %8, i8* %16, i32 72)
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 1095978329
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %417

22:                                               ; preds = %2
  %23 = load i8*, i8** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 0), align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @memcpy(%struct.TYPE_16__* %7, i8* %25, i32 72)
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 14
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 1, i32 4, i32 1), align 4
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 13
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 1, i32 4, i32 0), align 4
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 12
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 3), align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 11
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 1, i32 3), align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 10
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 1, i32 2), align 4
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 9
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 1, i32 1), align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 8
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* @g_lfo_ampm, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %22
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %4, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %22
  %48 = load i32*, i32** %5, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i8*, i8** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 0), align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 184
  store i8* %56, i8** %9, align 8
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %204, %54
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %58, 3
  br i1 %59, label %60, label %207

60:                                               ; preds = %57
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %138, %60
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %62, 4
  br i1 %63, label %64, label %141

64:                                               ; preds = %61
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @memcpy(%struct.TYPE_16__* %6, i8* %65, i32 6)
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 29
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 2), align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  store i32 %69, i32* %79, align 4
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 3
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 2), align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  store i32 %82, i32* %92, align 4
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 2), align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 5
  store i32 %94, i32* %104, align 4
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = mul nsw i32 %107, 4
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %108, %109
  %111 = shl i32 1, %110
  %112 = and i32 %106, %111
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 1, i32 0
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 2), align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %120, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  store i32 %115, i32* %125, align 4
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 2), align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 3
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %130, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 3
  store i32 -1, i32* %135, align 4
  %136 = load i8*, i8** %9, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 6
  store i8* %137, i8** %9, align 8
  br label %138

138:                                              ; preds = %64
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %13, align 4
  br label %61

141:                                              ; preds = %61
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 2), align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %146, align 8
  %148 = load i64, i64* @SLOT1, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 4
  store i32 -1, i32* %150, align 4
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 5
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 2), align 8
  %158 = load i32, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  store i32 %156, i32* %161, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 2), align 8
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = and i32 %167, 2047
  store i32 %168, i32* %10, align 4
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 2), align 8
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = ashr i32 %174, 11
  store i32 %175, i32* %11, align 4
  %176 = load i32, i32* %11, align 4
  %177 = shl i32 %176, 2
  %178 = load i32*, i32** @opn_fktable, align 8
  %179 = load i32, i32* %10, align 4
  %180 = ashr i32 %179, 7
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %177, %183
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 2), align 8
  %186 = load i32, i32* %12, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 1
  store i32 %184, i32* %189, align 4
  %190 = load i32*, i32** @fn_table, align 8
  %191 = load i32, i32* %10, align 4
  %192 = mul nsw i32 %191, 2
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %11, align 4
  %197 = sub nsw i32 7, %196
  %198 = ashr i32 %195, %197
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 2), align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 2
  store i32 %198, i32* %203, align 8
  br label %204

204:                                              ; preds = %141
  %205 = load i32, i32* %12, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %12, align 4
  br label %57

207:                                              ; preds = %57
  %208 = load i8*, i8** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 0), align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 440
  store i8* %209, i8** %9, align 8
  br label %210

210:                                              ; preds = %357, %207
  %211 = load i32, i32* %12, align 4
  %212 = icmp slt i32 %211, 6
  br i1 %212, label %213, label %360

213:                                              ; preds = %210
  store i32 0, i32* %13, align 4
  br label %214

214:                                              ; preds = %291, %213
  %215 = load i32, i32* %13, align 4
  %216 = icmp slt i32 %215, 4
  br i1 %216, label %217, label %294

217:                                              ; preds = %214
  %218 = load i8*, i8** %9, align 8
  %219 = call i32 @memcpy(%struct.TYPE_16__* %6, i8* %218, i32 6)
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = ashr i32 %221, 29
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 2), align 8
  %224 = load i32, i32* %12, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 3
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %227, align 8
  %229 = load i32, i32* %13, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 0
  store i32 %222, i32* %232, align 4
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = shl i32 %234, 3
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 2), align 8
  %237 = load i32, i32* %12, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 3
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %240, align 8
  %242 = load i32, i32* %13, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 1
  store i32 %235, i32* %245, align 4
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 7
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 2), align 8
  %249 = load i32, i32* %12, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 3
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %252, align 8
  %254 = load i32, i32* %13, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 5
  store i32 %247, i32* %257, align 4
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* %12, align 4
  %261 = mul nsw i32 %260, 4
  %262 = load i32, i32* %13, align 4
  %263 = add nsw i32 %261, %262
  %264 = shl i32 1, %263
  %265 = and i32 %259, %264
  %266 = icmp ne i32 %265, 0
  %267 = zext i1 %266 to i64
  %268 = select i1 %266, i32 1, i32 0
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 2), align 8
  %270 = load i32, i32* %12, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 3
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %273, align 8
  %275 = load i32, i32* %13, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 2
  store i32 %268, i32* %278, align 4
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 2), align 8
  %280 = load i32, i32* %12, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i32 0, i32 3
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %283, align 8
  %285 = load i32, i32* %13, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 3
  store i32 -1, i32* %288, align 4
  %289 = load i8*, i8** %9, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 6
  store i8* %290, i8** %9, align 8
  br label %291

291:                                              ; preds = %217
  %292 = load i32, i32* %13, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %13, align 4
  br label %214

294:                                              ; preds = %214
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 2), align 8
  %296 = load i32, i32* %12, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 3
  %300 = load %struct.TYPE_14__*, %struct.TYPE_14__** %299, align 8
  %301 = load i64, i64* @SLOT1, align 8
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %300, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i32 0, i32 4
  store i32 -1, i32* %303, align 4
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 5
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* %12, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 2), align 8
  %311 = load i32, i32* %12, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 0
  store i32 %309, i32* %314, align 8
  %315 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 2), align 8
  %316 = load i32, i32* %12, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = and i32 %320, 2047
  store i32 %321, i32* %10, align 4
  %322 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 2), align 8
  %323 = load i32, i32* %12, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = ashr i32 %327, 11
  store i32 %328, i32* %11, align 4
  %329 = load i32, i32* %11, align 4
  %330 = shl i32 %329, 2
  %331 = load i32*, i32** @opn_fktable, align 8
  %332 = load i32, i32* %10, align 4
  %333 = ashr i32 %332, 7
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %331, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = or i32 %330, %336
  %338 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 2), align 8
  %339 = load i32, i32* %12, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %338, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %341, i32 0, i32 1
  store i32 %337, i32* %342, align 4
  %343 = load i32*, i32** @fn_table, align 8
  %344 = load i32, i32* %10, align 4
  %345 = mul nsw i32 %344, 2
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %343, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* %11, align 4
  %350 = sub nsw i32 7, %349
  %351 = ashr i32 %348, %350
  %352 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 2), align 8
  %353 = load i32, i32* %12, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %352, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %355, i32 0, i32 2
  store i32 %351, i32* %356, align 8
  br label %357

357:                                              ; preds = %294
  %358 = load i32, i32* %12, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %12, align 4
  br label %210

360:                                              ; preds = %210
  store i32 0, i32* %12, align 4
  br label %361

361:                                              ; preds = %413, %360
  %362 = load i32, i32* %12, align 4
  %363 = icmp slt i32 %362, 3
  br i1 %363, label %364, label %416

364:                                              ; preds = %361
  %365 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 6
  %366 = load i32*, i32** %365, align 8
  %367 = load i32, i32* %12, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %366, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 1, i32 0, i32 0), align 8
  %372 = load i32, i32* %12, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %371, i64 %373
  store i32 %370, i32* %374, align 4
  %375 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 1, i32 0, i32 0), align 8
  %376 = load i32, i32* %12, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %375, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = and i32 %379, 2047
  store i32 %380, i32* %10, align 4
  %381 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 1, i32 0, i32 0), align 8
  %382 = load i32, i32* %12, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = ashr i32 %385, 11
  store i32 %386, i32* %11, align 4
  %387 = load i32, i32* %11, align 4
  %388 = shl i32 %387, 2
  %389 = load i32*, i32** @opn_fktable, align 8
  %390 = load i32, i32* %10, align 4
  %391 = ashr i32 %390, 7
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %389, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = or i32 %388, %394
  %396 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 1, i32 0, i32 1), align 8
  %397 = load i32, i32* %12, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32, i32* %396, i64 %398
  store i32 %395, i32* %399, align 4
  %400 = load i32*, i32** @fn_table, align 8
  %401 = load i32, i32* %10, align 4
  %402 = mul nsw i32 %401, 2
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %400, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = load i32, i32* %11, align 4
  %407 = sub nsw i32 7, %406
  %408 = ashr i32 %405, %407
  %409 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ym2612, i32 0, i32 1, i32 0, i32 2), align 8
  %410 = load i32, i32* %12, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %409, i64 %411
  store i32 %408, i32* %412, align 4
  br label %413

413:                                              ; preds = %364
  %414 = load i32, i32* %12, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %12, align 4
  br label %361

416:                                              ; preds = %361
  store i32 0, i32* %3, align 4
  br label %417

417:                                              ; preds = %416, %21
  %418 = load i32, i32* %3, align 4
  ret i32 %418
}

declare dso_local i32 @memcpy(%struct.TYPE_16__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
