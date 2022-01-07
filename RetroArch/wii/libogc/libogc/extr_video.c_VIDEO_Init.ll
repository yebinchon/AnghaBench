; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c_VIDEO_Init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c_VIDEO_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@_viReg = common dso_local global i32* null, align 8
@VI_TVMODE_NTSC_INT = common dso_local global i32 0, align 4
@retraceCount = common dso_local global i64 0, align 8
@changed = common dso_local global i64 0, align 8
@shdw_changed = common dso_local global i64 0, align 8
@shdw_changeMode = common dso_local global i64 0, align 8
@flushFlag = common dso_local global i64 0, align 8
@taps = common dso_local global i32* null, align 8
@HorVer = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@VI_DEBUG = common dso_local global i32 0, align 4
@currTiming = common dso_local global %struct.TYPE_4__* null, align 8
@currTvMode = common dso_local global i32 0, align 4
@regs = common dso_local global i32* null, align 8
@VI_MAX_WIDTH_NTSC = common dso_local global i32 0, align 4
@VI_XFBMODE_SF = common dso_local global i32 0, align 4
@preRetraceCB = common dso_local global i32* null, align 8
@postRetraceCB = common dso_local global i32* null, align 8
@video_queue = common dso_local global i32 0, align 4
@IRQ_PI_VI = common dso_local global i32 0, align 4
@__VIRetraceHandler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VIDEO_Init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* %1, align 4
  %4 = call i32 @_CPU_ISR_Disable(i32 %3)
  %5 = load i32*, i32** @_viReg, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 1
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @VI_TVMODE_NTSC_INT, align 4
  %12 = call i32 @__VIInit(i32 %11)
  br label %13

13:                                               ; preds = %10, %0
  store i64 0, i64* @retraceCount, align 8
  store i64 0, i64* @changed, align 8
  store i64 0, i64* @shdw_changed, align 8
  store i64 0, i64* @shdw_changeMode, align 8
  store i64 0, i64* @flushFlag, align 8
  %14 = load i32*, i32** @taps, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = ashr i32 %16, 6
  %18 = load i32*, i32** @taps, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 4
  %22 = or i32 %17, %21
  %23 = load i32*, i32** @_viReg, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 38
  store i32 %22, i32* %24, align 4
  %25 = load i32*, i32** @taps, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** @taps, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @_SHIFTL(i32 %30, i32 10, i32 6)
  %32 = or i32 %27, %31
  %33 = load i32*, i32** @_viReg, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 39
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** @taps, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 6
  %39 = load i32*, i32** @taps, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 5
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 4
  %43 = or i32 %38, %42
  %44 = load i32*, i32** @_viReg, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 40
  store i32 %43, i32* %45, align 4
  %46 = load i32*, i32** @taps, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** @taps, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @_SHIFTL(i32 %51, i32 10, i32 6)
  %53 = or i32 %48, %52
  %54 = load i32*, i32** @_viReg, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 41
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** @taps, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 7
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 6
  %60 = load i32*, i32** @taps, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 8
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 4
  %64 = or i32 %59, %63
  %65 = load i32*, i32** @_viReg, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 42
  store i32 %64, i32* %66, align 4
  %67 = load i32*, i32** @taps, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 6
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** @taps, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 7
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @_SHIFTL(i32 %72, i32 10, i32 6)
  %74 = or i32 %69, %73
  %75 = load i32*, i32** @_viReg, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 43
  store i32 %74, i32* %76, align 4
  %77 = load i32*, i32** @taps, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 11
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** @taps, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 12
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 8
  %84 = or i32 %79, %83
  %85 = load i32*, i32** @_viReg, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 44
  store i32 %84, i32* %86, align 4
  %87 = load i32*, i32** @taps, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 9
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** @taps, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 10
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 8
  %94 = or i32 %89, %93
  %95 = load i32*, i32** @_viReg, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 45
  store i32 %94, i32* %96, align 4
  %97 = load i32*, i32** @taps, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 15
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** @taps, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 16
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 8
  %104 = or i32 %99, %103
  %105 = load i32*, i32** @_viReg, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 46
  store i32 %104, i32* %106, align 4
  %107 = load i32*, i32** @taps, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 13
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** @taps, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 14
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 8
  %114 = or i32 %109, %113
  %115 = load i32*, i32** @_viReg, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 47
  store i32 %114, i32* %116, align 4
  %117 = load i32*, i32** @taps, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 19
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** @taps, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 20
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 8
  %124 = or i32 %119, %123
  %125 = load i32*, i32** @_viReg, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 48
  store i32 %124, i32* %126, align 4
  %127 = load i32*, i32** @taps, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 17
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** @taps, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 18
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %132, 8
  %134 = or i32 %129, %133
  %135 = load i32*, i32** @_viReg, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 49
  store i32 %134, i32* %136, align 4
  %137 = load i32*, i32** @taps, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 23
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** @taps, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 24
  %142 = load i32, i32* %141, align 4
  %143 = shl i32 %142, 8
  %144 = or i32 %139, %143
  %145 = load i32*, i32** @_viReg, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 50
  store i32 %144, i32* %146, align 4
  %147 = load i32*, i32** @taps, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 21
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** @taps, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 22
  %152 = load i32, i32* %151, align 4
  %153 = shl i32 %152, 8
  %154 = or i32 %149, %153
  %155 = load i32*, i32** @_viReg, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 51
  store i32 %154, i32* %156, align 4
  %157 = load i32*, i32** @_viReg, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 56
  store i32 640, i32* %158, align 4
  %159 = call i32 (...) @__importAdjustingValues()
  %160 = load i32*, i32** @_viReg, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = call i8* @_SHIFTR(i32 %162, i32 2, i32 1)
  %164 = ptrtoint i8* %163 to i32
  store i32 %164, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 0), align 8
  %165 = load i32*, i32** @_viReg, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = call i8* @_SHIFTR(i32 %167, i32 8, i32 2)
  %169 = ptrtoint i8* %168 to i32
  store i32 %169, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 1), align 4
  %170 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 0), align 8
  store i32 %170, i32* %2, align 4
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 1), align 4
  %172 = load i32, i32* @VI_DEBUG, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %13
  %175 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 1), align 4
  %176 = shl i32 %175, 2
  %177 = load i32, i32* %2, align 4
  %178 = add nsw i32 %177, %176
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %174, %13
  %180 = load i32, i32* %2, align 4
  %181 = call %struct.TYPE_4__* @__gettiming(i32 %180)
  store %struct.TYPE_4__* %181, %struct.TYPE_4__** @currTiming, align 8
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 1), align 4
  store i32 %182, i32* @currTvMode, align 4
  %183 = load i32*, i32** @_viReg, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32*, i32** @regs, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  store i32 %185, i32* %187, align 4
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** @currTiming, align 8
  store %struct.TYPE_4__* %188, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 23), align 8
  store i32 640, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 2), align 8
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** @currTiming, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = shl i32 %191, 1
  store i32 %192, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 3), align 4
  %193 = load i32, i32* @VI_MAX_WIDTH_NTSC, align 4
  %194 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 2), align 8
  %195 = sub nsw i32 %193, %194
  %196 = sdiv i32 %195, 2
  store i32 %196, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 22), align 8
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** @currTiming, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @__adjustPosition(i32 %199)
  store i32 640, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 5), align 4
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** @currTiming, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = shl i32 %203, 1
  store i32 %204, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 6), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 21), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 20), align 8
  store i32 640, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 7), align 4
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** @currTiming, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = shl i32 %207, 1
  store i32 %208, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 8), align 8
  %209 = load i32, i32* @VI_XFBMODE_SF, align 4
  store i32 %209, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 19), align 8
  store i32 40, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 9), align 4
  store i32 40, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 10), align 8
  store i32 40, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 11), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 18), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 12), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 17), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 16), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 15), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 14), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @HorVer, i32 0, i32 13), align 8
  %210 = load i32*, i32** @_viReg, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 24
  %212 = load i32, i32* %211, align 4
  %213 = and i32 %212, -32769
  store i32 %213, i32* %211, align 4
  %214 = load i32*, i32** @_viReg, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 26
  %216 = load i32, i32* %215, align 4
  %217 = and i32 %216, -32769
  store i32 %217, i32* %215, align 4
  store i32* null, i32** @preRetraceCB, align 8
  store i32* null, i32** @postRetraceCB, align 8
  %218 = call i32 @LWP_InitQueue(i32* @video_queue)
  %219 = load i32, i32* @IRQ_PI_VI, align 4
  %220 = load i32, i32* @__VIRetraceHandler, align 4
  %221 = call i32 @IRQ_Request(i32 %219, i32 %220, i32* null)
  %222 = load i32, i32* @IRQ_PI_VI, align 4
  %223 = call i32 @IRQMASK(i32 %222)
  %224 = call i32 @__UnmaskIrq(i32 %223)
  %225 = load i32, i32* %1, align 4
  %226 = call i32 @_CPU_ISR_Restore(i32 %225)
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @__VIInit(i32) #1

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

declare dso_local i32 @__importAdjustingValues(...) #1

declare dso_local i8* @_SHIFTR(i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @__gettiming(i32) #1

declare dso_local i32 @__adjustPosition(i32) #1

declare dso_local i32 @LWP_InitQueue(i32*) #1

declare dso_local i32 @IRQ_Request(i32, i32, i32*) #1

declare dso_local i32 @__UnmaskIrq(i32) #1

declare dso_local i32 @IRQMASK(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
