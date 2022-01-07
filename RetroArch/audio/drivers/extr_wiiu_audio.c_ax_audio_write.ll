; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_wiiu_audio.c_ax_audio_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_wiiu_audio.c_ax_audio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i32*, i32*, i64 }

@AX_AUDIO_MAX_FREE = common dso_local global i64 0, align 8
@AX_AUDIO_SAMPLE_COUNT = common dso_local global i64 0, align 8
@AX_AUDIO_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64)* @ax_audio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ax_audio_write(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %10, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %11, align 8
  %20 = load i64, i64* %7, align 8
  %21 = lshr i64 %20, 2
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i64, i64* %7, align 8
  %26 = and i64 %25, 3
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %3
  store i64 0, i64* %4, align 8
  br label %245

29:                                               ; preds = %24
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* @AX_AUDIO_MAX_FREE, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* @AX_AUDIO_MAX_FREE, align 8
  store i64 %34, i64* %12, align 8
  br label %35

35:                                               ; preds = %33, %29
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AX_AUDIO_MAX_FREE, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %48

42:                                               ; preds = %35
  %43 = load i64, i64* @AX_AUDIO_MAX_FREE, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub i64 %43, %46
  br label %48

48:                                               ; preds = %42, %41
  %49 = phi i64 [ 0, %41 ], [ %47, %42 ]
  store i64 %49, i64* %9, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* @AX_AUDIO_SAMPLE_COUNT, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i64 0, i64* %12, align 8
  br label %59

59:                                               ; preds = %58, %54
  br label %95

60:                                               ; preds = %48
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %12, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %94

64:                                               ; preds = %60
  br label %65

65:                                               ; preds = %91, %64
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @AXIsMultiVoiceRunning(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %12, align 8
  %74 = icmp ult i64 %72, %73
  br label %75

75:                                               ; preds = %71, %65
  %76 = phi i1 [ false, %65 ], [ %74, %71 ]
  br i1 %76, label %77, label %93

77:                                               ; preds = %75
  %78 = call i32 (...) @OSYieldThread()
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @AX_AUDIO_MAX_FREE, align 8
  %83 = icmp ugt i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %91

85:                                               ; preds = %77
  %86 = load i64, i64* @AX_AUDIO_MAX_FREE, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub i64 %86, %89
  br label %91

91:                                               ; preds = %85, %84
  %92 = phi i64 [ 0, %84 ], [ %90, %85 ]
  store i64 %92, i64* %9, align 8
  br label %65

93:                                               ; preds = %75
  br label %94

94:                                               ; preds = %93, %60
  br label %95

95:                                               ; preds = %94, %59
  %96 = load i64, i64* %12, align 8
  %97 = load i64, i64* %9, align 8
  %98 = icmp ugt i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i64, i64* %9, align 8
  store i64 %100, i64* %12, align 8
  br label %101

101:                                              ; preds = %99, %95
  %102 = load i64, i64* %12, align 8
  %103 = icmp ugt i64 %102, 0
  br i1 %103, label %104, label %233

104:                                              ; preds = %101
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i64 0, i64* %8, align 8
  br label %108

108:                                              ; preds = %178, %104
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* %12, align 8
  %111 = shl i64 %110, 1
  %112 = icmp ult i64 %109, %111
  br i1 %112, label %113, label %181

113:                                              ; preds = %108
  %114 = load i32*, i32** %11, align 8
  %115 = load i64, i64* %8, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 5
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  store i32 %117, i32* %124, align 4
  %125 = load i32*, i32** %11, align 8
  %126 = load i64, i64* %8, align 8
  %127 = add i64 %126, 1
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 4
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  store i32 %129, i32* %136, align 4
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = add i64 %139, 1
  %141 = trunc i64 %140 to i32
  %142 = call i64 @ax_audio_limit(i32 %141)
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  store i64 %142, i64* %144, align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %177

149:                                              ; preds = %113
  store i32 1, i32* %14, align 4
  %150 = load i64, i64* %12, align 8
  %151 = shl i64 %150, 1
  %152 = load i64, i64* %8, align 8
  %153 = sub i64 %151, %152
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %15, align 4
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 5
  %157 = load i32*, i32** %156, align 8
  %158 = load i64, i64* %13, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = load i64, i64* @AX_AUDIO_COUNT, align 8
  %161 = load i64, i64* %13, align 8
  %162 = sub i64 %160, %161
  %163 = shl i64 %162, 1
  %164 = trunc i64 %163 to i32
  %165 = call i32 @DCStoreRangeNoSync(i32* %159, i32 %164)
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 4
  %168 = load i32*, i32** %167, align 8
  %169 = load i64, i64* %13, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  %171 = load i64, i64* @AX_AUDIO_COUNT, align 8
  %172 = load i64, i64* %13, align 8
  %173 = sub i64 %171, %172
  %174 = shl i64 %173, 1
  %175 = trunc i64 %174 to i32
  %176 = call i32 @DCStoreRangeNoSync(i32* %170, i32 %175)
  br label %177

177:                                              ; preds = %149, %113
  br label %178

178:                                              ; preds = %177
  %179 = load i64, i64* %8, align 8
  %180 = add i64 %179, 2
  store i64 %180, i64* %8, align 8
  br label %108

181:                                              ; preds = %108
  %182 = load i32, i32* %14, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %203, label %184

184:                                              ; preds = %181
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 5
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* %13, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  %190 = load i64, i64* %12, align 8
  %191 = shl i64 %190, 1
  %192 = trunc i64 %191 to i32
  %193 = call i32 @DCStoreRangeNoSync(i32* %189, i32 %192)
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 4
  %196 = load i32*, i32** %195, align 8
  %197 = load i64, i64* %13, align 8
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  %199 = load i64, i64* %12, align 8
  %200 = shl i64 %199, 1
  %201 = trunc i64 %200 to i32
  %202 = call i32 @DCStoreRange(i32* %198, i32 %201)
  br label %218

203:                                              ; preds = %181
  %204 = load i32, i32* %15, align 4
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %206, label %217

206:                                              ; preds = %203
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 5
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %15, align 4
  %211 = call i32 @DCStoreRangeNoSync(i32* %209, i32 %210)
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 4
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %15, align 4
  %216 = call i32 @DCStoreRange(i32* %214, i32 %215)
  br label %217

217:                                              ; preds = %206, %203
  br label %218

218:                                              ; preds = %217, %184
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 3
  %221 = call i64 @OSUninterruptibleSpinLock_Acquire(i32* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %232

223:                                              ; preds = %218
  %224 = load i64, i64* %12, align 8
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = add i64 %227, %224
  store i64 %228, i64* %226, align 8
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 3
  %231 = call i32 @OSUninterruptibleSpinLock_Release(i32* %230)
  br label %232

232:                                              ; preds = %223, %218
  br label %233

233:                                              ; preds = %232, %101
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = call i64 @AXIsMultiVoiceRunning(i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %233
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %241 = call i32 @ax_audio_start(%struct.TYPE_3__* %240, i32 0)
  br label %242

242:                                              ; preds = %239, %233
  %243 = load i64, i64* %12, align 8
  %244 = shl i64 %243, 2
  store i64 %244, i64* %4, align 8
  br label %245

245:                                              ; preds = %242, %28
  %246 = load i64, i64* %4, align 8
  ret i64 %246
}

declare dso_local i64 @AXIsMultiVoiceRunning(i32) #1

declare dso_local i32 @OSYieldThread(...) #1

declare dso_local i64 @ax_audio_limit(i32) #1

declare dso_local i32 @DCStoreRangeNoSync(i32*, i32) #1

declare dso_local i32 @DCStoreRange(i32*, i32) #1

declare dso_local i64 @OSUninterruptibleSpinLock_Acquire(i32*) #1

declare dso_local i32 @OSUninterruptibleSpinLock_Release(i32*) #1

declare dso_local i32 @ax_audio_start(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
