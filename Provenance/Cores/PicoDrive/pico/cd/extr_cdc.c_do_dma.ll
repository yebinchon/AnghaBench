; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_cdc.c_do_dma.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_cdc.c_do_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32*, i32, %struct.TYPE_4__, i32** }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32, i64 }

@Pico_mcd = common dso_local global %struct.TYPE_6__* null, align 8
@cdc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@EL_CD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"dma %d %04x->%04x %x\00", align 1
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"pcm dma oflow: %x %x\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"invalid dma: %d\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"cd dma %d oflow: %x %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @do_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_dma(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico_mcd, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 10
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico_mcd, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 11
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %17, %22
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cdc, i32 0, i32 0), align 8
  %25 = and i32 %24, 16382
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %28 = load i32, i32* @EL_CD, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cdc, i32 0, i32 0), align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %3, align 4
  switch i32 %34, label %150 [
    i32 132, label %35
    i32 131, label %103
    i32 130, label %113
    i32 129, label %126
    i32 128, label %139
  ]

35:                                               ; preds = %2
  %36 = load i32, i32* %7, align 4
  %37 = shl i32 %36, 2
  %38 = and i32 %37, 4092
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = mul nsw i32 %40, 2
  %42 = add nsw i32 %39, %41
  %43 = icmp sgt i32 %42, 4096
  br i1 %43, label %44, label %52

44:                                               ; preds = %35
  %45 = load i32, i32* @EL_ANOMALY, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 4096, %49
  %51 = sdiv i32 %50, 2
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %44, %35
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico_mcd, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 5
  %55 = load i32**, i32*** %54, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico_mcd, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32*, i32** %55, i64 %59
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %10, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32* %65, i32** %10, align 8
  br label %66

66:                                               ; preds = %75, %52
  %67 = load i32, i32* %8, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %102

69:                                               ; preds = %66
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %8, align 4
  %72 = mul nsw i32 %71, 2
  %73 = add nsw i32 %70, %72
  %74 = icmp sgt i32 %73, 16384
  br i1 %74, label %75, label %93

75:                                               ; preds = %69
  %76 = load i32, i32* %6, align 4
  %77 = sub nsw i32 16384, %76
  store i32 %77, i32* %11, align 4
  %78 = load i32*, i32** %10, align 8
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cdc, i32 0, i32 1), align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %79, %81
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @memcpy(i32* %78, i64 %82, i32 %83)
  %85 = load i32, i32* %11, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %10, align 8
  store i32 0, i32* %6, align 4
  %89 = load i32, i32* %11, align 4
  %90 = sdiv i32 %89, 2
  %91 = load i32, i32* %8, align 4
  %92 = sub nsw i32 %91, %90
  store i32 %92, i32* %8, align 4
  br label %66

93:                                               ; preds = %69
  %94 = load i32*, i32** %10, align 8
  %95 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cdc, i32 0, i32 1), align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %95, %97
  %99 = load i32, i32* %8, align 4
  %100 = mul nsw i32 %99, 2
  %101 = call i32 @memcpy(i32* %94, i64 %98, i32 %100)
  br label %102

102:                                              ; preds = %93, %66
  br label %211

103:                                              ; preds = %2
  %104 = load i32, i32* %7, align 4
  %105 = shl i32 %104, 3
  store i32 %105, i32* %7, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico_mcd, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i32*
  store i32* %112, i32** %10, align 8
  store i32 524288, i32* %9, align 4
  br label %154

113:                                              ; preds = %2
  %114 = load i32, i32* %7, align 4
  %115 = shl i32 %114, 3
  %116 = and i32 %115, 131070
  store i32 %116, i32* %7, align 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico_mcd, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to i32*
  store i32* %125, i32** %10, align 8
  store i32 131072, i32* %9, align 4
  br label %154

126:                                              ; preds = %2
  %127 = load i32, i32* %7, align 4
  %128 = shl i32 %127, 3
  %129 = and i32 %128, 131070
  store i32 %129, i32* %7, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico_mcd, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = inttoptr i64 %137 to i32*
  store i32* %138, i32** %10, align 8
  store i32 131072, i32* %9, align 4
  br label %154

139:                                              ; preds = %2
  %140 = load i32, i32* %7, align 4
  %141 = shl i32 %140, 3
  %142 = and i32 %141, 262142
  store i32 %142, i32* %7, align 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico_mcd, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i32*
  store i32* %149, i32** %10, align 8
  store i32 262144, i32* %9, align 4
  br label %154

150:                                              ; preds = %2
  %151 = load i32, i32* @EL_ANOMALY, align 4
  %152 = load i32, i32* %3, align 4
  %153 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %151, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %152)
  br label %211

154:                                              ; preds = %139, %126, %113, %103
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* %8, align 4
  %157 = mul nsw i32 %156, 2
  %158 = add nsw i32 %155, %157
  %159 = load i32, i32* %9, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %171

161:                                              ; preds = %154
  %162 = load i32, i32* @EL_ANOMALY, align 4
  %163 = load i32, i32* %3, align 4
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* %8, align 4
  %166 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %162, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %163, i32 %164, i32 %165)
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %7, align 4
  %169 = sub nsw i32 %167, %168
  %170 = sdiv i32 %169, 2
  store i32 %170, i32* %8, align 4
  br label %171

171:                                              ; preds = %161, %154
  br label %172

172:                                              ; preds = %181, %171
  %173 = load i32, i32* %8, align 4
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %210

175:                                              ; preds = %172
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* %8, align 4
  %178 = mul nsw i32 %177, 2
  %179 = add nsw i32 %176, %178
  %180 = icmp sgt i32 %179, 16384
  br i1 %180, label %181, label %201

181:                                              ; preds = %175
  %182 = load i32, i32* %6, align 4
  %183 = sub nsw i32 16384, %182
  store i32 %183, i32* %11, align 4
  %184 = load i32*, i32** %10, align 8
  %185 = bitcast i32* %184 to i8*
  %186 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cdc, i32 0, i32 1), align 8
  %187 = load i32, i32* %6, align 4
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %186, %188
  %190 = load i32, i32* %11, align 4
  %191 = sdiv i32 %190, 2
  %192 = call i32 @memcpy16bswap(i8* %185, i64 %189, i32 %191)
  %193 = load i32, i32* %11, align 4
  %194 = load i32*, i32** %10, align 8
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  store i32* %196, i32** %10, align 8
  store i32 0, i32* %6, align 4
  %197 = load i32, i32* %11, align 4
  %198 = sdiv i32 %197, 2
  %199 = load i32, i32* %8, align 4
  %200 = sub nsw i32 %199, %198
  store i32 %200, i32* %8, align 4
  br label %172

201:                                              ; preds = %175
  %202 = load i32*, i32** %10, align 8
  %203 = bitcast i32* %202 to i8*
  %204 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cdc, i32 0, i32 1), align 8
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = add nsw i64 %204, %206
  %208 = load i32, i32* %8, align 4
  %209 = call i32 @memcpy16bswap(i8* %203, i64 %207, i32 %208)
  br label %210

210:                                              ; preds = %201, %172
  br label %211

211:                                              ; preds = %210, %150, %102
  %212 = load i32, i32* %4, align 4
  %213 = mul nsw i32 %212, 2
  %214 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cdc, i32 0, i32 0), align 8
  %215 = add nsw i32 %214, %213
  store i32 %215, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cdc, i32 0, i32 0), align 8
  %216 = load i32, i32* %3, align 4
  %217 = icmp eq i32 %216, 132
  br i1 %217, label %218, label %223

218:                                              ; preds = %211
  %219 = load i32, i32* %4, align 4
  %220 = ashr i32 %219, 1
  %221 = load i32, i32* %5, align 4
  %222 = add nsw i32 %221, %220
  store i32 %222, i32* %5, align 4
  br label %228

223:                                              ; preds = %211
  %224 = load i32, i32* %4, align 4
  %225 = ashr i32 %224, 2
  %226 = load i32, i32* %5, align 4
  %227 = add nsw i32 %226, %225
  store i32 %227, i32* %5, align 4
  br label %228

228:                                              ; preds = %223, %218
  %229 = load i32, i32* %5, align 4
  %230 = ashr i32 %229, 8
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico_mcd, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 10
  store i32 %230, i32* %234, align 4
  %235 = load i32, i32* %5, align 4
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico_mcd, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 11
  store i32 %235, i32* %239, align 4
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @memcpy16bswap(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
