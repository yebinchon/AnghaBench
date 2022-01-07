; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_VIDSoftVdp2DrawScreens.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_VIDSoftVdp2DrawScreens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_43__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_42__ = type { i32*, i64*, i32*, i32*, i32*, i32, i32* }

@Vdp2Regs = common dso_local global %struct.TYPE_43__* null, align 8
@TITAN_NBG0 = common dso_local global i64 0, align 8
@TITAN_NBG1 = common dso_local global i64 0, align 8
@TITAN_NBG2 = common dso_local global i64 0, align 8
@TITAN_NBG3 = common dso_local global i64 0, align 8
@TITAN_RBG0 = common dso_local global i64 0, align 8
@vidsoft_num_layer_threads = common dso_local global i64 0, align 8
@vidsoft_thread_context = common dso_local global %struct.TYPE_42__ zeroinitializer, align 8
@Vdp2Lines = common dso_local global %struct.TYPE_43__* null, align 8
@Vdp2Ram = common dso_local global %struct.TYPE_43__* null, align 8
@Vdp2ColorRam = common dso_local global %struct.TYPE_43__* null, align 8
@cell_scroll_data = common dso_local global %struct.TYPE_43__* null, align 8
@TITAN_SPRITE = common dso_local global i64 0, align 8
@YAB_THREAD_VIDSOFT_LAYER_SPRITE = common dso_local global i32 0, align 4
@sprite_window_mask = common dso_local global i32 0, align 4
@vdp1frontframebuffer = common dso_local global i32 0, align 4
@Vdp1Regs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VIDSoftVdp2DrawScreens() #0 {
  %1 = alloca [6 x i32], align 16
  %2 = alloca [6 x i32], align 16
  %3 = alloca i32, align 4
  %4 = bitcast [6 x i32]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 24, i1 false)
  %5 = bitcast [6 x i32]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 24, i1 false)
  store i32 0, i32* %3, align 4
  %6 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Regs, align 8
  %7 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @VIDSoftVdp2SetResolution(i32 %8)
  %10 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Regs, align 8
  %11 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 7
  %14 = load i64, i64* @TITAN_NBG0, align 8
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 %14
  store i32 %13, i32* %15, align 4
  %16 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Regs, align 8
  %17 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 8
  %20 = and i32 %19, 7
  %21 = load i64, i64* @TITAN_NBG1, align 8
  %22 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 %21
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Regs, align 8
  %24 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 7
  %27 = load i64, i64* @TITAN_NBG2, align 8
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 %27
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Regs, align 8
  %30 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 8
  %33 = and i32 %32, 7
  %34 = load i64, i64* @TITAN_NBG3, align 8
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 %34
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Regs, align 8
  %37 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 7
  %40 = load i64, i64* @TITAN_RBG0, align 8
  %41 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 %40
  store i32 %39, i32* %41, align 4
  %42 = call i32 (...) @TitanErase()
  %43 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Regs, align 8
  %44 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 1023
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %84

48:                                               ; preds = %0
  %49 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Regs, align 8
  %50 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 0
  %53 = and i32 %52, 3
  %54 = load i64, i64* @TITAN_NBG0, align 8
  %55 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 %54
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Regs, align 8
  %57 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 2
  %60 = and i32 %59, 3
  %61 = load i64, i64* @TITAN_NBG1, align 8
  %62 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 %61
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Regs, align 8
  %64 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 4
  %67 = and i32 %66, 3
  %68 = load i64, i64* @TITAN_NBG2, align 8
  %69 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 %68
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Regs, align 8
  %71 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 6
  %74 = and i32 %73, 3
  %75 = load i64, i64* @TITAN_NBG3, align 8
  %76 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 %75
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Regs, align 8
  %78 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 8
  %81 = and i32 %80, 3
  %82 = load i64, i64* @TITAN_RBG0, align 8
  %83 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 %82
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %48, %0
  %85 = load i64, i64* @vidsoft_num_layer_threads, align 8
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %84
  %88 = load i32*, i32** getelementptr inbounds (%struct.TYPE_42__, %struct.TYPE_42__* @vidsoft_thread_context, i32 0, i32 6), align 8
  %89 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Lines, align 8
  %90 = call i32 @memcpy(i32* %88, %struct.TYPE_43__* %89, i32 1080)
  %91 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Regs, align 8
  %92 = call i32 @memcpy(i32* getelementptr inbounds (%struct.TYPE_42__, %struct.TYPE_42__* @vidsoft_thread_context, i32 0, i32 5), %struct.TYPE_43__* %91, i32 4)
  %93 = load i32*, i32** getelementptr inbounds (%struct.TYPE_42__, %struct.TYPE_42__* @vidsoft_thread_context, i32 0, i32 4), align 8
  %94 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Ram, align 8
  %95 = call i32 @memcpy(i32* %93, %struct.TYPE_43__* %94, i32 524288)
  %96 = load i32*, i32** getelementptr inbounds (%struct.TYPE_42__, %struct.TYPE_42__* @vidsoft_thread_context, i32 0, i32 3), align 8
  %97 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2ColorRam, align 8
  %98 = call i32 @memcpy(i32* %96, %struct.TYPE_43__* %97, i32 4096)
  %99 = load i32*, i32** getelementptr inbounds (%struct.TYPE_42__, %struct.TYPE_42__* @vidsoft_thread_context, i32 0, i32 2), align 8
  %100 = load %struct.TYPE_43__*, %struct.TYPE_43__** @cell_scroll_data, align 8
  %101 = call i32 @memcpy(i32* %99, %struct.TYPE_43__* %100, i32 1080)
  br label %102

102:                                              ; preds = %87, %84
  %103 = call i64 (...) @CanUseSpriteThread()
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %102
  %106 = load i64, i64* @vidsoft_num_layer_threads, align 8
  %107 = icmp sgt i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %105
  %109 = load i32*, i32** getelementptr inbounds (%struct.TYPE_42__, %struct.TYPE_42__* @vidsoft_thread_context, i32 0, i32 0), align 8
  %110 = load i64, i64* @TITAN_SPRITE, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32 1, i32* %111, align 4
  %112 = load i64*, i64** getelementptr inbounds (%struct.TYPE_42__, %struct.TYPE_42__* @vidsoft_thread_context, i32 0, i32 1), align 8
  %113 = load i64, i64* @TITAN_SPRITE, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  store i64 0, i64* %114, align 8
  %115 = load i32, i32* @YAB_THREAD_VIDSOFT_LAYER_SPRITE, align 4
  %116 = call i32 @YabThreadWake(i32 %115)
  %117 = load i32, i32* %3, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %3, align 4
  br label %128

119:                                              ; preds = %105, %102
  %120 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Regs, align 8
  %121 = load i32, i32* @sprite_window_mask, align 4
  %122 = load i32, i32* @vdp1frontframebuffer, align 4
  %123 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Ram, align 8
  %124 = load i32, i32* @Vdp1Regs, align 4
  %125 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Lines, align 8
  %126 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2ColorRam, align 8
  %127 = call i32 @VidsoftDrawSprite(%struct.TYPE_43__* %120, i32 %121, i32 %122, %struct.TYPE_43__* %123, i32 %124, %struct.TYPE_43__* %125, %struct.TYPE_43__* %126)
  br label %128

128:                                              ; preds = %119, %108
  %129 = load i64, i64* @vidsoft_num_layer_threads, align 8
  %130 = icmp sgt i64 %129, 0
  br i1 %130, label %131, label %152

131:                                              ; preds = %128
  %132 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %133 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 0
  %134 = load i64, i64* @TITAN_NBG0, align 8
  %135 = call i32 @VidsoftStartLayerThread(i32* %132, i32* %133, i32* %3, i64 %134, i32 (%struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*)* @Vdp2DrawNBG0)
  %136 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %137 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 0
  %138 = load i64, i64* @TITAN_RBG0, align 8
  %139 = call i32 @VidsoftStartLayerThread(i32* %136, i32* %137, i32* %3, i64 %138, i32 (%struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*)* @Vdp2DrawRBG0)
  %140 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %141 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 0
  %142 = load i64, i64* @TITAN_NBG1, align 8
  %143 = call i32 @VidsoftStartLayerThread(i32* %140, i32* %141, i32* %3, i64 %142, i32 (%struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*)* @Vdp2DrawNBG1)
  %144 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %145 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 0
  %146 = load i64, i64* @TITAN_NBG2, align 8
  %147 = call i32 @VidsoftStartLayerThread(i32* %144, i32* %145, i32* %3, i64 %146, i32 (%struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*)* @Vdp2DrawNBG2)
  %148 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %149 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 0
  %150 = load i64, i64* @TITAN_NBG3, align 8
  %151 = call i32 @VidsoftStartLayerThread(i32* %148, i32* %149, i32* %3, i64 %150, i32 (%struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*)* @Vdp2DrawNBG3)
  br label %183

152:                                              ; preds = %128
  %153 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Lines, align 8
  %154 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Regs, align 8
  %155 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Ram, align 8
  %156 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2ColorRam, align 8
  %157 = load %struct.TYPE_43__*, %struct.TYPE_43__** @cell_scroll_data, align 8
  %158 = call i32 @Vdp2DrawNBG0(%struct.TYPE_43__* %153, %struct.TYPE_43__* %154, %struct.TYPE_43__* %155, %struct.TYPE_43__* %156, %struct.TYPE_43__* %157)
  %159 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Lines, align 8
  %160 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Regs, align 8
  %161 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Ram, align 8
  %162 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2ColorRam, align 8
  %163 = load %struct.TYPE_43__*, %struct.TYPE_43__** @cell_scroll_data, align 8
  %164 = call i32 @Vdp2DrawNBG1(%struct.TYPE_43__* %159, %struct.TYPE_43__* %160, %struct.TYPE_43__* %161, %struct.TYPE_43__* %162, %struct.TYPE_43__* %163)
  %165 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Lines, align 8
  %166 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Regs, align 8
  %167 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Ram, align 8
  %168 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2ColorRam, align 8
  %169 = load %struct.TYPE_43__*, %struct.TYPE_43__** @cell_scroll_data, align 8
  %170 = call i32 @Vdp2DrawNBG2(%struct.TYPE_43__* %165, %struct.TYPE_43__* %166, %struct.TYPE_43__* %167, %struct.TYPE_43__* %168, %struct.TYPE_43__* %169)
  %171 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Lines, align 8
  %172 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Regs, align 8
  %173 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Ram, align 8
  %174 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2ColorRam, align 8
  %175 = load %struct.TYPE_43__*, %struct.TYPE_43__** @cell_scroll_data, align 8
  %176 = call i32 @Vdp2DrawNBG3(%struct.TYPE_43__* %171, %struct.TYPE_43__* %172, %struct.TYPE_43__* %173, %struct.TYPE_43__* %174, %struct.TYPE_43__* %175)
  %177 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Lines, align 8
  %178 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Regs, align 8
  %179 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2Ram, align 8
  %180 = load %struct.TYPE_43__*, %struct.TYPE_43__** @Vdp2ColorRam, align 8
  %181 = load %struct.TYPE_43__*, %struct.TYPE_43__** @cell_scroll_data, align 8
  %182 = call i32 @Vdp2DrawRBG0(%struct.TYPE_43__* %177, %struct.TYPE_43__* %178, %struct.TYPE_43__* %179, %struct.TYPE_43__* %180, %struct.TYPE_43__* %181)
  br label %183

183:                                              ; preds = %152, %131
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @VIDSoftVdp2SetResolution(i32) #2

declare dso_local i32 @TitanErase(...) #2

declare dso_local i32 @memcpy(i32*, %struct.TYPE_43__*, i32) #2

declare dso_local i64 @CanUseSpriteThread(...) #2

declare dso_local i32 @YabThreadWake(i32) #2

declare dso_local i32 @VidsoftDrawSprite(%struct.TYPE_43__*, i32, i32, %struct.TYPE_43__*, i32, %struct.TYPE_43__*, %struct.TYPE_43__*) #2

declare dso_local i32 @VidsoftStartLayerThread(i32*, i32*, i32*, i64, i32 (%struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*)*) #2

declare dso_local i32 @Vdp2DrawNBG0(%struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*) #2

declare dso_local i32 @Vdp2DrawRBG0(%struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*) #2

declare dso_local i32 @Vdp2DrawNBG1(%struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*) #2

declare dso_local i32 @Vdp2DrawNBG2(%struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*) #2

declare dso_local i32 @Vdp2DrawNBG3(%struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
