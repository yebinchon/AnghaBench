; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_VIDSoftInit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_VIDSoftInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i64* }
%struct.TYPE_3__ = type { i32, i64 }

@dispbuffer = common dso_local global i32* null, align 8
@vdp1framebuffer = common dso_local global i32** null, align 8
@vdp1backframebuffer = common dso_local global i32* null, align 8
@vdp1frontframebuffer = common dso_local global i32* null, align 8
@vdp2width = common dso_local global i32 0, align 4
@rbg0width = common dso_local global i32 0, align 4
@vdp2height = common dso_local global i32 0, align 4
@vidsoft_thread_context = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@vidsoft_vdp1_thread_context = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@YAB_THREAD_VIDSOFT_VDP1 = common dso_local global i32 0, align 4
@VidsoftVdp1Thread = common dso_local global i32 0, align 4
@YAB_THREAD_VIDSOFT_LAYER_RBG0 = common dso_local global i32 0, align 4
@VidsoftRbg0Thread = common dso_local global i32 0, align 4
@YAB_THREAD_VIDSOFT_LAYER_NBG0 = common dso_local global i32 0, align 4
@VidsoftNbg0Thread = common dso_local global i32 0, align 4
@YAB_THREAD_VIDSOFT_LAYER_NBG1 = common dso_local global i32 0, align 4
@VidsoftNbg1Thread = common dso_local global i32 0, align 4
@YAB_THREAD_VIDSOFT_LAYER_NBG2 = common dso_local global i32 0, align 4
@VidsoftNbg2Thread = common dso_local global i32 0, align 4
@YAB_THREAD_VIDSOFT_LAYER_NBG3 = common dso_local global i32 0, align 4
@VidsoftNbg3Thread = common dso_local global i32 0, align 4
@YAB_THREAD_VIDSOFT_LAYER_SPRITE = common dso_local global i32 0, align 4
@VidsoftSpriteThread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VIDSoftInit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @TitanInit()
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %69

6:                                                ; preds = %0
  %7 = call i64 @calloc(i32 4, i32 360448)
  %8 = inttoptr i64 %7 to i32*
  store i32* %8, i32** @dispbuffer, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 -1, i32* %1, align 4
  br label %69

11:                                               ; preds = %6
  %12 = call i64 @calloc(i32 4, i32 262144)
  %13 = inttoptr i64 %12 to i32*
  %14 = load i32**, i32*** @vdp1framebuffer, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 0
  store i32* %13, i32** %15, align 8
  %16 = icmp eq i32* %13, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 -1, i32* %1, align 4
  br label %69

18:                                               ; preds = %11
  %19 = call i64 @calloc(i32 4, i32 262144)
  %20 = inttoptr i64 %19 to i32*
  %21 = load i32**, i32*** @vdp1framebuffer, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 1
  store i32* %20, i32** %22, align 8
  %23 = icmp eq i32* %20, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 -1, i32* %1, align 4
  br label %69

25:                                               ; preds = %18
  %26 = load i32**, i32*** @vdp1framebuffer, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** @vdp1backframebuffer, align 8
  %29 = load i32**, i32*** @vdp1framebuffer, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** @vdp1frontframebuffer, align 8
  store i32 320, i32* @vdp2width, align 4
  store i32 320, i32* @rbg0width, align 4
  store i32 224, i32* @vdp2height, align 4
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %44, %25
  %33 = load i32, i32* %2, align 4
  %34 = icmp slt i32 %33, 6
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vidsoft_thread_context, i32 0, i32 0), align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 1, i32* %39, align 4
  %40 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vidsoft_thread_context, i32 0, i32 1), align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %32

47:                                               ; preds = %32
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vidsoft_vdp1_thread_context, i32 0, i32 1), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vidsoft_vdp1_thread_context, i32 0, i32 0), align 8
  %48 = load i32, i32* @YAB_THREAD_VIDSOFT_VDP1, align 4
  %49 = load i32, i32* @VidsoftVdp1Thread, align 4
  %50 = call i32 @YabThreadStart(i32 %48, i32 %49, i32 0)
  %51 = load i32, i32* @YAB_THREAD_VIDSOFT_LAYER_RBG0, align 4
  %52 = load i32, i32* @VidsoftRbg0Thread, align 4
  %53 = call i32 @YabThreadStart(i32 %51, i32 %52, i32 0)
  %54 = load i32, i32* @YAB_THREAD_VIDSOFT_LAYER_NBG0, align 4
  %55 = load i32, i32* @VidsoftNbg0Thread, align 4
  %56 = call i32 @YabThreadStart(i32 %54, i32 %55, i32 0)
  %57 = load i32, i32* @YAB_THREAD_VIDSOFT_LAYER_NBG1, align 4
  %58 = load i32, i32* @VidsoftNbg1Thread, align 4
  %59 = call i32 @YabThreadStart(i32 %57, i32 %58, i32 0)
  %60 = load i32, i32* @YAB_THREAD_VIDSOFT_LAYER_NBG2, align 4
  %61 = load i32, i32* @VidsoftNbg2Thread, align 4
  %62 = call i32 @YabThreadStart(i32 %60, i32 %61, i32 0)
  %63 = load i32, i32* @YAB_THREAD_VIDSOFT_LAYER_NBG3, align 4
  %64 = load i32, i32* @VidsoftNbg3Thread, align 4
  %65 = call i32 @YabThreadStart(i32 %63, i32 %64, i32 0)
  %66 = load i32, i32* @YAB_THREAD_VIDSOFT_LAYER_SPRITE, align 4
  %67 = load i32, i32* @VidsoftSpriteThread, align 4
  %68 = call i32 @YabThreadStart(i32 %66, i32 %67, i32 0)
  store i32 0, i32* %1, align 4
  br label %69

69:                                               ; preds = %47, %24, %17, %10, %5
  %70 = load i32, i32* %1, align 4
  ret i32 %70
}

declare dso_local i32 @TitanInit(...) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @YabThreadStart(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
