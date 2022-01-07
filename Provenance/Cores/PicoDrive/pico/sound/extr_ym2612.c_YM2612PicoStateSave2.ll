; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_ym2612.c_YM2612PicoStateSave2.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_ym2612.c_YM2612PicoStateSave2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i8*, %struct.TYPE_16__, i32, %struct.TYPE_13__* }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i64, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32 }

@ym2612 = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@g_lfo_ampm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @YM2612PicoStateSave2(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__, align 8
  %6 = alloca %struct.TYPE_17__, align 8
  %7 = alloca %struct.TYPE_17__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = call i32 @memset(%struct.TYPE_17__* %7, i32 0, i32 72)
  %12 = call i32 @memset(%struct.TYPE_17__* %6, i32 0, i32 72)
  %13 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ym2612, i32 0, i32 0), align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 184
  store i8* %14, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %102, %2
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 3
  br i1 %17, label %18, label %105

18:                                               ; preds = %15
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %87, %18
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %90

22:                                               ; preds = %19
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ym2612, i32 0, i32 3), align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 %33, 29
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ym2612, i32 0, i32 3), align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 3
  %47 = or i32 %34, %46
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ym2612, i32 0, i32 3), align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 14
  store i32 %59, i32* %60, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ym2612, i32 0, i32 3), align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %22
  %74 = load i32, i32* %9, align 4
  %75 = mul nsw i32 %74, 4
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %75, %76
  %78 = shl i32 1, %77
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %73, %22
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @memcpy(i8* %83, %struct.TYPE_17__* %5, i32 6)
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 6
  store i8* %86, i8** %8, align 8
  br label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %19

90:                                               ; preds = %19
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ym2612, i32 0, i32 3), align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 13
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %96, i32* %101, align 4
  br label %102

102:                                              ; preds = %90
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %15

105:                                              ; preds = %15
  %106 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ym2612, i32 0, i32 0), align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 440
  store i8* %107, i8** %8, align 8
  br label %108

108:                                              ; preds = %195, %105
  %109 = load i32, i32* %9, align 4
  %110 = icmp slt i32 %109, 6
  br i1 %110, label %111, label %198

111:                                              ; preds = %108
  store i32 0, i32* %10, align 4
  br label %112

112:                                              ; preds = %180, %111
  %113 = load i32, i32* %10, align 4
  %114 = icmp slt i32 %113, 4
  br i1 %114, label %115, label %183

115:                                              ; preds = %112
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ym2612, i32 0, i32 3), align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = shl i32 %126, 29
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ym2612, i32 0, i32 3), align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = ashr i32 %138, 3
  %140 = or i32 %127, %139
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  store i32 %140, i32* %141, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ym2612, i32 0, i32 3), align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 14
  store i32 %152, i32* %153, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ym2612, i32 0, i32 3), align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %115
  %167 = load i32, i32* %9, align 4
  %168 = mul nsw i32 %167, 4
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %168, %169
  %171 = shl i32 1, %170
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %171
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %166, %115
  %176 = load i8*, i8** %8, align 8
  %177 = call i32 @memcpy(i8* %176, %struct.TYPE_17__* %5, i32 6)
  %178 = load i8*, i8** %8, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 6
  store i8* %179, i8** %8, align 8
  br label %180

180:                                              ; preds = %175
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %10, align 4
  br label %112

183:                                              ; preds = %112
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ym2612, i32 0, i32 3), align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 13
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32 %189, i32* %194, align 4
  br label %195

195:                                              ; preds = %183
  %196 = load i32, i32* %9, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %9, align 4
  br label %108

198:                                              ; preds = %108
  store i32 0, i32* %9, align 4
  br label %199

199:                                              ; preds = %213, %198
  %200 = load i32, i32* %9, align 4
  %201 = icmp slt i32 %200, 3
  br i1 %201, label %202, label %216

202:                                              ; preds = %199
  %203 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ym2612, i32 0, i32 1, i32 4, i32 0), align 8
  %204 = load i32, i32* %9, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 12
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 %207, i32* %212, align 4
  br label %213

213:                                              ; preds = %202
  %214 = load i32, i32* %9, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %9, align 4
  br label %199

216:                                              ; preds = %199
  %217 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ym2612, i32 0, i32 0), align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 0
  %219 = call i32 @memcpy(i8* %218, %struct.TYPE_17__* %6, i32 72)
  %220 = load i8*, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ym2612, i32 0, i32 0), align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 256
  store i8* %221, i8** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  store i32 1095978329, i32* %222, align 8
  %223 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ym2612, i32 0, i32 1, i32 3, i32 1), align 4
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 11
  store i32 %223, i32* %224, align 4
  %225 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ym2612, i32 0, i32 1, i32 3, i32 0), align 4
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 10
  store i32 %225, i32* %226, align 8
  %227 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ym2612, i32 0, i32 2), align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 9
  store i32 %227, i32* %228, align 4
  %229 = load i32, i32* %3, align 4
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  store i32 %229, i32* %230, align 4
  %231 = load i32, i32* %4, align 4
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 4
  store i32 %231, i32* %232, align 8
  %233 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ym2612, i32 0, i32 1, i32 2), align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 8
  store i32 %233, i32* %234, align 8
  %235 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ym2612, i32 0, i32 1, i32 1), align 4
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 7
  store i32 %235, i32* %236, align 4
  %237 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ym2612, i32 0, i32 1, i32 0), align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 6
  store i32 %237, i32* %238, align 8
  %239 = load i32, i32* @g_lfo_ampm, align 4
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 5
  store i32 %239, i32* %240, align 4
  %241 = load i8*, i8** %8, align 8
  %242 = call i32 @memcpy(i8* %241, %struct.TYPE_17__* %7, i32 72)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, %struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
