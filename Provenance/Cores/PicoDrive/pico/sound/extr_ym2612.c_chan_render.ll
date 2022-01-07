; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_ym2612.c_chan_render.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_ym2612.c_chan_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32, i32*, i32, i32, i32, i32, i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@ym2612 = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@crct = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@g_lfo_ampm = common dso_local global i32 0, align 4
@SLOT1 = common dso_local global i64 0, align 8
@SLOT2 = common dso_local global i64 0, align 8
@SLOT3 = common dso_local global i64 0, align 8
@SLOT4 = common dso_local global i64 0, align 8
@lfo_pm_table = common dso_local global i32* null, align 8
@opn_fktable = common dso_local global i32* null, align 8
@fn_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @chan_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chan_render(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2612, i32 0, i32 2), align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i64 %18
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 15), align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2612, i32 0, i32 1, i32 2), align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 20), align 8
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 53
  store i32 %25, i32* %8, align 4
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 19), align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, 8
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @g_lfo_ampm, align 4
  %32 = shl i32 %31, 16
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 %37, 8
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 8
  br i1 %44, label %45, label %48

45:                                               ; preds = %28
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, -3841
  store i32 %47, i32* %8, align 4
  br label %56

48:                                               ; preds = %28
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 3
  %53 = shl i32 %52, 6
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %48, %45
  br label %57

57:                                               ; preds = %56, %4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 15
  %62 = shl i32 %61, 12
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 0), align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2612, i32 0, i32 1, i32 1), align 4
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 18), align 8
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2612, i32 0, i32 1, i32 0), align 4
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 17), align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 6
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = load i64, i64* @SLOT1, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 14), align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 6
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = load i64, i64* @SLOT2, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 13), align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 6
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = load i64, i64* @SLOT3, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 12), align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 6
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = load i64, i64* @SLOT4, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 10), align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 6
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = load i64, i64* @SLOT1, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 6
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = load i64, i64* @SLOT1, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 6
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = add nsw i32 %102, %110
  store i32 %111, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 1), align 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 6
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = load i64, i64* @SLOT2, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 6
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = load i64, i64* @SLOT2, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 6
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = add nsw i32 %118, %126
  store i32 %127, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 2), align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 6
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = load i64, i64* @SLOT3, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 6
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = load i64, i64* @SLOT3, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 6
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = add nsw i32 %134, %142
  store i32 %143, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 3), align 4
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 6
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %145, align 8
  %147 = load i64, i64* @SLOT4, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 6
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = load i64, i64* @SLOT4, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 6
  %157 = load i64, i64* %156, align 8
  %158 = trunc i64 %157 to i32
  %159 = add nsw i32 %150, %158
  store i32 %159, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 4), align 8
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 8
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 16), align 8
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, 7
  store i32 %166, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 5), align 4
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %339

171:                                              ; preds = %57
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = and i32 %175, 2032
  %177 = ashr i32 %176, 4
  %178 = mul nsw i32 %177, 32
  %179 = mul nsw i32 %178, 8
  store i32 %179, i32* %10, align 4
  %180 = load i32*, i32** @lfo_pm_table, align 8
  %181 = load i32, i32* %10, align 4
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = add nsw i32 %181, %184
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 0), align 8
  %187 = ashr i32 %186, 16
  %188 = and i32 %187, 255
  %189 = add nsw i32 %185, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %180, i64 %190
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %11, align 4
  %193 = load i32, i32* %11, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %309

195:                                              ; preds = %171
  %196 = load i32, i32* %9, align 4
  %197 = ashr i32 %196, 11
  store i32 %197, i32* %12, align 4
  %198 = load i32, i32* %9, align 4
  %199 = mul nsw i32 %198, 2
  %200 = load i32, i32* %11, align 4
  %201 = add nsw i32 %199, %200
  store i32 %201, i32* %9, align 4
  %202 = load i32, i32* %9, align 4
  %203 = and i32 %202, 4095
  store i32 %203, i32* %13, align 4
  %204 = load i32, i32* %12, align 4
  %205 = shl i32 %204, 2
  %206 = load i32*, i32** @opn_fktable, align 8
  %207 = load i32, i32* %13, align 4
  %208 = ashr i32 %207, 8
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %206, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %205, %211
  store i32 %212, i32* %14, align 4
  %213 = load i32*, i32** @fn_table, align 8
  %214 = load i32, i32* %13, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %12, align 4
  %219 = sub nsw i32 7, %218
  %220 = ashr i32 %217, %219
  store i32 %220, i32* %15, align 4
  %221 = load i32, i32* %15, align 4
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 6
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %223, align 8
  %225 = load i64, i64* @SLOT1, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %14, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %221, %232
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 6
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %235, align 8
  %237 = load i64, i64* @SLOT1, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = mul nsw i32 %233, %240
  %242 = ashr i32 %241, 1
  store i32 %242, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 6), align 8
  %243 = load i32, i32* %15, align 4
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 6
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %245, align 8
  %247 = load i64, i64* @SLOT2, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 1
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %14, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = add nsw i32 %243, %254
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 6
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %257, align 8
  %259 = load i64, i64* @SLOT2, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = mul nsw i32 %255, %262
  %264 = ashr i32 %263, 1
  store i32 %264, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 7), align 4
  %265 = load i32, i32* %15, align 4
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 6
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %267, align 8
  %269 = load i64, i64* @SLOT3, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 1
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %14, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = add nsw i32 %265, %276
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 6
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %279, align 8
  %281 = load i64, i64* @SLOT3, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = mul nsw i32 %277, %284
  %286 = ashr i32 %285, 1
  store i32 %286, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 8), align 8
  %287 = load i32, i32* %15, align 4
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 6
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %289, align 8
  %291 = load i64, i64* @SLOT4, align 8
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 1
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %14, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = add nsw i32 %287, %298
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 6
  %302 = load %struct.TYPE_9__*, %struct.TYPE_9__** %301, align 8
  %303 = load i64, i64* @SLOT4, align 8
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = mul nsw i32 %299, %306
  %308 = ashr i32 %307, 1
  store i32 %308, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 9), align 4
  br label %338

309:                                              ; preds = %171
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 6
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %311, align 8
  %313 = load i64, i64* @SLOT1, align 8
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  store i32 %316, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 6), align 8
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 6
  %319 = load %struct.TYPE_9__*, %struct.TYPE_9__** %318, align 8
  %320 = load i64, i64* @SLOT2, align 8
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %319, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 4
  store i32 %323, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 7), align 4
  %324 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i32 0, i32 6
  %326 = load %struct.TYPE_9__*, %struct.TYPE_9__** %325, align 8
  %327 = load i64, i64* @SLOT3, align 8
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 4
  store i32 %330, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 8), align 8
  %331 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i32 0, i32 6
  %333 = load %struct.TYPE_9__*, %struct.TYPE_9__** %332, align 8
  %334 = load i64, i64* @SLOT4, align 8
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 4
  store i32 %337, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 9), align 4
  br label %338

338:                                              ; preds = %309, %195
  br label %368

339:                                              ; preds = %57
  %340 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 6
  %342 = load %struct.TYPE_9__*, %struct.TYPE_9__** %341, align 8
  %343 = load i64, i64* @SLOT1, align 8
  %344 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %342, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %344, i32 0, i32 3
  %346 = load i32, i32* %345, align 4
  store i32 %346, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 6), align 8
  %347 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 6
  %349 = load %struct.TYPE_9__*, %struct.TYPE_9__** %348, align 8
  %350 = load i64, i64* @SLOT2, align 8
  %351 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %349, i64 %350
  %352 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 4
  store i32 %353, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 7), align 4
  %354 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 6
  %356 = load %struct.TYPE_9__*, %struct.TYPE_9__** %355, align 8
  %357 = load i64, i64* @SLOT3, align 8
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %356, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 3
  %360 = load i32, i32* %359, align 4
  store i32 %360, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 8), align 8
  %361 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 6
  %363 = load %struct.TYPE_9__*, %struct.TYPE_9__** %362, align 8
  %364 = load i64, i64* @SLOT4, align 8
  %365 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %363, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 3
  %367 = load i32, i32* %366, align 4
  store i32 %367, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 9), align 4
  br label %368

368:                                              ; preds = %339, %338
  %369 = load i32*, i32** %5, align 8
  %370 = load i32, i32* %6, align 4
  %371 = call i32 @chan_render_loop(%struct.TYPE_11__* @crct, i32* %369, i32 %370)
  %372 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 16), align 8
  %373 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 8
  store i32 %372, i32* %374, align 4
  %375 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 15), align 4
  %376 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 7
  store i32 %375, i32* %377, align 8
  %378 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 6
  %380 = load %struct.TYPE_9__*, %struct.TYPE_9__** %379, align 8
  %381 = load i64, i64* @SLOT1, align 8
  %382 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %380, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %382, i32 0, i32 4
  %384 = load i32, i32* %383, align 8
  %385 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %386 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %385, i32 0, i32 6
  %387 = load %struct.TYPE_9__*, %struct.TYPE_9__** %386, align 8
  %388 = load i64, i64* @SLOT2, align 8
  %389 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %387, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %389, i32 0, i32 4
  %391 = load i32, i32* %390, align 8
  %392 = or i32 %384, %391
  %393 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %394 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %393, i32 0, i32 6
  %395 = load %struct.TYPE_9__*, %struct.TYPE_9__** %394, align 8
  %396 = load i64, i64* @SLOT3, align 8
  %397 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %395, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %397, i32 0, i32 4
  %399 = load i32, i32* %398, align 8
  %400 = or i32 %392, %399
  %401 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %402 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %401, i32 0, i32 6
  %403 = load %struct.TYPE_9__*, %struct.TYPE_9__** %402, align 8
  %404 = load i64, i64* @SLOT4, align 8
  %405 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %403, i64 %404
  %406 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %405, i32 0, i32 4
  %407 = load i32, i32* %406, align 8
  %408 = or i32 %400, %407
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %439

410:                                              ; preds = %368
  %411 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 14), align 8
  %412 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %413 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %412, i32 0, i32 6
  %414 = load %struct.TYPE_9__*, %struct.TYPE_9__** %413, align 8
  %415 = load i64, i64* @SLOT1, align 8
  %416 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %414, i64 %415
  %417 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %416, i32 0, i32 5
  store i32 %411, i32* %417, align 4
  %418 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 13), align 4
  %419 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %420 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %419, i32 0, i32 6
  %421 = load %struct.TYPE_9__*, %struct.TYPE_9__** %420, align 8
  %422 = load i64, i64* @SLOT2, align 8
  %423 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %421, i64 %422
  %424 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %423, i32 0, i32 5
  store i32 %418, i32* %424, align 4
  %425 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 12), align 8
  %426 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %427 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %426, i32 0, i32 6
  %428 = load %struct.TYPE_9__*, %struct.TYPE_9__** %427, align 8
  %429 = load i64, i64* @SLOT3, align 8
  %430 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %428, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %430, i32 0, i32 5
  store i32 %425, i32* %431, align 4
  %432 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 10), align 8
  %433 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 11), align 8
  %434 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %433, i32 0, i32 6
  %435 = load %struct.TYPE_9__*, %struct.TYPE_9__** %434, align 8
  %436 = load i64, i64* @SLOT4, align 8
  %437 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %435, i64 %436
  %438 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %437, i32 0, i32 5
  store i32 %432, i32* %438, align 4
  br label %446

439:                                              ; preds = %368
  %440 = load i32, i32* %7, align 4
  %441 = mul nsw i32 %440, 4
  %442 = shl i32 15, %441
  %443 = xor i32 %442, -1
  %444 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2612, i32 0, i32 0), align 8
  %445 = and i32 %444, %443
  store i32 %445, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2612, i32 0, i32 0), align 8
  br label %446

446:                                              ; preds = %439, %410
  %447 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @crct, i32 0, i32 5), align 4
  %448 = and i32 %447, 8
  %449 = ashr i32 %448, 3
  ret i32 %449
}

declare dso_local i32 @chan_render_loop(%struct.TYPE_11__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
