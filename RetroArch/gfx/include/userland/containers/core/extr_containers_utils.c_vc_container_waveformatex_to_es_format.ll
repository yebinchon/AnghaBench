; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_utils.c_vc_container_waveformatex_to_es_format.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_utils.c_vc_container_waveformatex_to_es_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@VC_CONTAINER_ERROR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@WAVE_FORMAT_PCM = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_PCM_UNSIGNED_LE = common dso_local global i32 0, align 4
@WAVE_FORMAT_MPEGLAYER3 = common dso_local global i32 0, align 4
@VC_CONTAINER_ES_TYPE_AUDIO = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc_container_waveformatex_to_es_format(i32* %0, i32 %1, i32* %2, i32* %3, %struct.TYPE_7__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i32, i32* %8, align 4
  %18 = icmp ult i32 %17, 16
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %5
  %20 = load i32, i32* @VC_CONTAINER_ERROR_INVALID_ARGUMENT, align 4
  store i32 %20, i32* %6, align 4
  br label %191

21:                                               ; preds = %16
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 8
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %25, %28
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @waveformat_to_codec(i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32*, i32** %9, align 8
  store i32 16, i32* %35, align 4
  br label %36

36:                                               ; preds = %34, %21
  %37 = load i32*, i32** %10, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32*, i32** %10, align 8
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %39, %36
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 %44, i32* %49, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 7
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 24
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 6
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 16
  %58 = or i32 %53, %57
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 5
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 8
  %63 = or i32 %58, %62
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %63, %66
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store i32 %67, i32* %72, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 11
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 24
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 10
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 16
  %81 = or i32 %76, %80
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 9
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 8
  %86 = or i32 %81, %85
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 8
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %86, %89
  %91 = mul nsw i32 %90, 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 13
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 8
  %98 = load i32*, i32** %7, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 12
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %97, %100
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  store i32 %101, i32* %106, align 4
  %107 = load i32*, i32** %7, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 15
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %109, 8
  %111 = load i32*, i32** %7, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 14
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %110, %113
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  store i32 %114, i32* %119, align 4
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* @WAVE_FORMAT_PCM, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %41
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 8
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = load i32, i32* @VC_CONTAINER_CODEC_PCM_UNSIGNED_LE, align 4
  store i32 %132, i32* %12, align 4
  br label %133

133:                                              ; preds = %131, %123, %41
  %134 = load i32, i32* %8, align 4
  %135 = icmp uge i32 %134, 18
  br i1 %135, label %136, label %165

136:                                              ; preds = %133
  %137 = load i32*, i32** %10, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %159

139:                                              ; preds = %136
  %140 = load i32*, i32** %7, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 17
  %142 = load i32, i32* %141, align 4
  %143 = shl i32 %142, 8
  %144 = load i32*, i32** %7, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 16
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %143, %146
  %148 = load i32*, i32** %10, align 8
  store i32 %147, i32* %148, align 4
  %149 = load i32*, i32** %10, align 8
  %150 = load i32, i32* %149, align 4
  %151 = add i32 %150, 18
  %152 = load i32, i32* %8, align 4
  %153 = icmp ugt i32 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %139
  %155 = load i32, i32* %8, align 4
  %156 = sub i32 %155, 18
  %157 = load i32*, i32** %10, align 8
  store i32 %156, i32* %157, align 4
  br label %158

158:                                              ; preds = %154, %139
  br label %159

159:                                              ; preds = %158, %136
  %160 = load i32*, i32** %9, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = load i32*, i32** %9, align 8
  store i32 18, i32* %163, align 4
  br label %164

164:                                              ; preds = %162, %159
  br label %165

165:                                              ; preds = %164, %133
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* @WAVE_FORMAT_MPEGLAYER3, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %183

169:                                              ; preds = %165
  %170 = load i32*, i32** %10, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %183

172:                                              ; preds = %169
  %173 = load i32*, i32** %9, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %181

175:                                              ; preds = %172
  %176 = load i32*, i32** %10, align 8
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** %9, align 8
  %179 = load i32, i32* %178, align 4
  %180 = add i32 %179, %177
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %175, %172
  %182 = load i32*, i32** %10, align 8
  store i32 0, i32* %182, align 4
  br label %183

183:                                              ; preds = %181, %169, %165
  %184 = load i32, i32* @VC_CONTAINER_ES_TYPE_AUDIO, align 4
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 8
  %187 = load i32, i32* %12, align 4
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %190, i32* %6, align 4
  br label %191

191:                                              ; preds = %183, %19
  %192 = load i32, i32* %6, align 4
  ret i32 %192
}

declare dso_local i32 @waveformat_to_codec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
