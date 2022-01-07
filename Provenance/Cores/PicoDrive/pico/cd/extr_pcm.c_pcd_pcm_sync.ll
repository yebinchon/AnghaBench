; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_pcm.c_pcd_pcm_sync.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_pcm.c_pcd_pcm_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32, i32*, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.pcm_chan* }
%struct.pcm_chan = type { i32, i32* }

@Pico_mcd = common dso_local global %struct.TYPE_4__* null, align 8
@PCM_MIXBUF_LEN = common dso_local global i32 0, align 4
@PCM_STEP_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcd_pcm_sync(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcm_chan*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %3, align 4
  %21 = sub i32 %19, %20
  %22 = icmp slt i32 %21, 384
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %237

24:                                               ; preds = %1
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* %3, align 4
  %27 = sub i32 %25, %26
  %28 = udiv i32 %27, 384
  store i32 %28, i32* %12, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %12, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* @PCM_MIXBUF_LEN, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %24
  %37 = load i32, i32* @PCM_MIXBUF_LEN, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %37, %40
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %36, %24
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %13, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, 128
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %42
  store i32 0, i32* %13, align 4
  br label %54

54:                                               ; preds = %53, %42
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  br label %224

63:                                               ; preds = %57, %54
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 %69, 2
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %66, i64 %71
  store i32* %72, i32** %14, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  store i32 1, i32* %74, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 5
  store i64 0, i64* %76, align 8
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %220, %63
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 8
  br i1 %79, label %80, label %223

80:                                               ; preds = %77
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load %struct.pcm_chan*, %struct.pcm_chan** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.pcm_chan, %struct.pcm_chan* %84, i64 %86
  store %struct.pcm_chan* %87, %struct.pcm_chan** %8, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %10, align 4
  %90 = shl i32 1, %89
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %80
  %94 = load %struct.pcm_chan*, %struct.pcm_chan** %8, align 8
  %95 = getelementptr inbounds %struct.pcm_chan, %struct.pcm_chan* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 6
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @PCM_STEP_SHIFT, align 4
  %100 = add nsw i32 %99, 8
  %101 = shl i32 %98, %100
  %102 = load %struct.pcm_chan*, %struct.pcm_chan** %8, align 8
  %103 = getelementptr inbounds %struct.pcm_chan, %struct.pcm_chan* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  br label %220

104:                                              ; preds = %80
  %105 = load %struct.pcm_chan*, %struct.pcm_chan** %8, align 8
  %106 = getelementptr inbounds %struct.pcm_chan, %struct.pcm_chan* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %9, align 4
  %108 = load %struct.pcm_chan*, %struct.pcm_chan** %8, align 8
  %109 = getelementptr inbounds %struct.pcm_chan, %struct.pcm_chan* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  %112 = bitcast i32* %111 to i16*
  %113 = load i16, i16* %112, align 2
  %114 = zext i16 %113 to i32
  store i32 %114, i32* %6, align 4
  %115 = load %struct.pcm_chan*, %struct.pcm_chan** %8, align 8
  %116 = getelementptr inbounds %struct.pcm_chan, %struct.pcm_chan* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.pcm_chan*, %struct.pcm_chan** %8, align 8
  %121 = getelementptr inbounds %struct.pcm_chan, %struct.pcm_chan* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 15
  %126 = mul nsw i32 %119, %125
  %127 = ashr i32 %126, 6
  store i32 %127, i32* %4, align 4
  %128 = load %struct.pcm_chan*, %struct.pcm_chan** %8, align 8
  %129 = getelementptr inbounds %struct.pcm_chan, %struct.pcm_chan* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.pcm_chan*, %struct.pcm_chan** %8, align 8
  %134 = getelementptr inbounds %struct.pcm_chan, %struct.pcm_chan* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = ashr i32 %137, 4
  %139 = mul nsw i32 %132, %138
  %140 = ashr i32 %139, 6
  store i32 %140, i32* %5, align 4
  store i32 0, i32* %11, align 4
  br label %141

141:                                              ; preds = %209, %104
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %216

145:                                              ; preds = %141
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* @PCM_STEP_SHIFT, align 4
  %151 = lshr i32 %149, %150
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %148, i64 %152
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp eq i32 %155, 255
  br i1 %156, label %157, label %179

157:                                              ; preds = %145
  %158 = load %struct.pcm_chan*, %struct.pcm_chan** %8, align 8
  %159 = getelementptr inbounds %struct.pcm_chan, %struct.pcm_chan* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 4
  %162 = bitcast i32* %161 to i16*
  %163 = load i16, i16* %162, align 2
  %164 = zext i16 %163 to i32
  store i32 %164, i32* %9, align 4
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 3
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* @PCM_STEP_SHIFT, align 4
  %173 = load i32, i32* %9, align 4
  %174 = shl i32 %173, %172
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp eq i32 %175, 255
  br i1 %176, label %177, label %178

177:                                              ; preds = %157
  br label %216

178:                                              ; preds = %157
  br label %179

179:                                              ; preds = %178, %145
  %180 = load i32, i32* %7, align 4
  %181 = and i32 %180, 128
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %179
  %184 = load i32, i32* %7, align 4
  %185 = and i32 %184, 127
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %7, align 4
  br label %187

187:                                              ; preds = %183, %179
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* %4, align 4
  %190 = mul nsw i32 %188, %189
  %191 = load i32*, i32** %14, align 8
  %192 = load i32, i32* %11, align 4
  %193 = mul nsw i32 %192, 2
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, %190
  store i32 %197, i32* %195, align 4
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* %5, align 4
  %200 = mul nsw i32 %198, %199
  %201 = load i32*, i32** %14, align 8
  %202 = load i32, i32* %11, align 4
  %203 = mul nsw i32 %202, 2
  %204 = add nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %201, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, %200
  store i32 %208, i32* %206, align 4
  br label %209

209:                                              ; preds = %187
  %210 = load i32, i32* %11, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %11, align 4
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* %6, align 4
  %214 = add i32 %212, %213
  %215 = and i32 %214, 134217727
  store i32 %215, i32* %9, align 4
  br label %141

216:                                              ; preds = %177, %141
  %217 = load i32, i32* %9, align 4
  %218 = load %struct.pcm_chan*, %struct.pcm_chan** %8, align 8
  %219 = getelementptr inbounds %struct.pcm_chan, %struct.pcm_chan* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 8
  br label %220

220:                                              ; preds = %216, %93
  %221 = load i32, i32* %10, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %10, align 4
  br label %77

223:                                              ; preds = %77
  br label %224

224:                                              ; preds = %223, %62
  %225 = load i32, i32* %3, align 4
  %226 = load i32, i32* %12, align 4
  %227 = mul nsw i32 %226, 384
  %228 = add i32 %225, %227
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 4
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 0
  store i32 %228, i32* %231, align 8
  %232 = load i32, i32* %12, align 4
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = add nsw i32 %235, %232
  store i32 %236, i32* %234, align 8
  br label %237

237:                                              ; preds = %224, %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
