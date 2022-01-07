; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_VIDSoftVdp2DrawEnd.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_VIDSoftVdp2DrawEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@vidsoft_num_layer_threads = common dso_local global i64 0, align 8
@vidsoft_thread_context = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TITAN_NBG0 = common dso_local global i64 0, align 8
@TITAN_NBG1 = common dso_local global i64 0, align 8
@TITAN_NBG2 = common dso_local global i64 0, align 8
@TITAN_NBG3 = common dso_local global i64 0, align 8
@TITAN_RBG0 = common dso_local global i64 0, align 8
@TITAN_SPRITE = common dso_local global i64 0, align 8
@dispbuffer = common dso_local global i32* null, align 8
@vdp2width = common dso_local global i32 0, align 4
@vdp2height = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_RGBA = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_TRIANGLE_STRIP = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VIDSoftVdp2DrawEnd() #0 {
  %1 = load i64, i64* @vidsoft_num_layer_threads, align 8
  %2 = icmp sgt i64 %1, 0
  br i1 %2, label %3, label %58

3:                                                ; preds = %0
  br label %4

4:                                                ; preds = %11, %3
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vidsoft_thread_context, i32 0, i32 0), align 8
  %6 = load i64, i64* @TITAN_NBG0, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %4

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %20, %12
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vidsoft_thread_context, i32 0, i32 0), align 8
  %15 = load i64, i64* @TITAN_NBG1, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %13

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %29, %21
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vidsoft_thread_context, i32 0, i32 0), align 8
  %24 = load i64, i64* @TITAN_NBG2, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %22

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %38, %30
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vidsoft_thread_context, i32 0, i32 0), align 8
  %33 = load i64, i64* @TITAN_NBG3, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %31

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %47, %39
  %41 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vidsoft_thread_context, i32 0, i32 0), align 8
  %42 = load i64, i64* @TITAN_RBG0, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %40

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %56, %48
  %50 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vidsoft_thread_context, i32 0, i32 0), align 8
  %51 = load i64, i64* @TITAN_SPRITE, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %49

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %0
  %59 = load i32*, i32** @dispbuffer, align 8
  %60 = call i32 @TitanRender(i32* %59)
  %61 = call i32 (...) @VIDSoftVdp1SwapFrameBuffer()
  %62 = call i64 (...) @OSDUseBuffer()
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i32*, i32** @dispbuffer, align 8
  %66 = load i32, i32* @vdp2width, align 4
  %67 = load i32, i32* @vdp2height, align 4
  %68 = call i32 @OSDDisplayMessages(i32* %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %58
  %70 = call i32 (...) @YuiSwapBuffers()
  ret void
}

declare dso_local i32 @TitanRender(i32*) #1

declare dso_local i32 @VIDSoftVdp1SwapFrameBuffer(...) #1

declare dso_local i64 @OSDUseBuffer(...) #1

declare dso_local i32 @OSDDisplayMessages(i32*, i32, i32) #1

declare dso_local i32 @YuiSwapBuffers(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
