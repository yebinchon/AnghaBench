; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_ctr_gfx.c_ctr_lcd_aptHook.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_ctr_gfx.c_ctr_lcd_aptHook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, i64, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@APTHOOK_ONRESTORE = common dso_local global i64 0, align 8
@CTR_TOP_FRAMEBUFFER_HEIGHT = common dso_local global i32 0, align 4
@CTR_TOP_FRAMEBUFFER_WIDTH = common dso_local global i32 0, align 4
@GPU_CULL_NONE = common dso_local global i32 0, align 4
@GPU_ALWAYS = common dso_local global i32 0, align 4
@GPU_STENCIL_KEEP = common dso_local global i32 0, align 4
@GPU_WRITE_COLOR = common dso_local global i32 0, align 4
@GPUREG_EARLYDEPTH_TEST1 = common dso_local global i32 0, align 4
@GPUREG_EARLYDEPTH_TEST2 = common dso_local global i32 0, align 4
@GPU_BLEND_ADD = common dso_local global i32 0, align 4
@GPU_SRC_ALPHA = common dso_local global i32 0, align 4
@GPU_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@GPU_TEXUNIT0 = common dso_local global i32 0, align 4
@GPU_TEXTURE0 = common dso_local global i32 0, align 4
@GPU_REPLACE = common dso_local global i32 0, align 4
@GPU_PREVIOUS = common dso_local global i32 0, align 4
@GPU_SHORT = common dso_local global i32 0, align 4
@GSPGPU_EVENT_P3D = common dso_local global i32 0, align 4
@APTHOOK_ONSUSPEND = common dso_local global i64 0, align 8
@CTR_VIDEO_MODE_2D_400x240 = common dso_local global i64 0, align 8
@gfxTopRightFramebuffers = common dso_local global i32* null, align 8
@gfxTopLeftFramebuffers = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"gsp::Lcd\00", align 1
@ctr_bottom_screen_enabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*)* @ctr_lcd_aptHook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctr_lcd_aptHook(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %181

14:                                               ; preds = %2
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @APTHOOK_ONRESTORE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %99

18:                                               ; preds = %14
  %19 = call i32 @GPUCMD_SetBufferOffset(i32 0)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 6
  %22 = call i32 @shaderProgramUse(i32* %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @VIRT_TO_PHYS(i32 %27)
  %29 = load i32, i32* @CTR_TOP_FRAMEBUFFER_HEIGHT, align 4
  %30 = load i32, i32* @CTR_TOP_FRAMEBUFFER_WIDTH, align 4
  %31 = call i32 @GPU_SetViewport(i32* null, i32 %28, i32 0, i32 0, i32 %29, i32 %30)
  %32 = call i32 @GPU_DepthMap(float -1.000000e+00, float 0.000000e+00)
  %33 = load i32, i32* @GPU_CULL_NONE, align 4
  %34 = call i32 @GPU_SetFaceCulling(i32 %33)
  %35 = load i32, i32* @GPU_ALWAYS, align 4
  %36 = call i32 @GPU_SetStencilTest(i32 0, i32 %35, i32 0, i32 255, i32 0)
  %37 = load i32, i32* @GPU_STENCIL_KEEP, align 4
  %38 = load i32, i32* @GPU_STENCIL_KEEP, align 4
  %39 = load i32, i32* @GPU_STENCIL_KEEP, align 4
  %40 = call i32 @GPU_SetStencilOp(i32 %37, i32 %38, i32 %39)
  %41 = call i32 @GPU_SetBlendingColor(i32 0, i32 0, i32 0, i32 0)
  %42 = load i32, i32* @GPU_ALWAYS, align 4
  %43 = load i32, i32* @GPU_WRITE_COLOR, align 4
  %44 = call i32 @GPU_SetDepthTestAndWriteMask(i32 0, i32 %42, i32 %43)
  %45 = load i32, i32* @GPUREG_EARLYDEPTH_TEST1, align 4
  %46 = call i32 @GPUCMD_AddMaskedWrite(i32 %45, i32 1, i32 0)
  %47 = load i32, i32* @GPUREG_EARLYDEPTH_TEST2, align 4
  %48 = call i32 @GPUCMD_AddWrite(i32 %47, i32 0)
  %49 = load i32, i32* @GPU_BLEND_ADD, align 4
  %50 = load i32, i32* @GPU_BLEND_ADD, align 4
  %51 = load i32, i32* @GPU_SRC_ALPHA, align 4
  %52 = load i32, i32* @GPU_ONE_MINUS_SRC_ALPHA, align 4
  %53 = load i32, i32* @GPU_SRC_ALPHA, align 4
  %54 = load i32, i32* @GPU_ONE_MINUS_SRC_ALPHA, align 4
  %55 = call i32 @GPU_SetAlphaBlending(i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* @GPU_ALWAYS, align 4
  %57 = call i32 @GPU_SetAlphaTest(i32 0, i32 %56, i32 0)
  %58 = load i32, i32* @GPU_TEXUNIT0, align 4
  %59 = call i32 @GPU_SetTextureEnable(i32 %58)
  %60 = load i32, i32* @GPU_TEXTURE0, align 4
  %61 = load i32, i32* @GPU_TEXTURE0, align 4
  %62 = load i32, i32* @GPU_REPLACE, align 4
  %63 = load i32, i32* @GPU_REPLACE, align 4
  %64 = call i32 @GPU_SetTexEnv(i32 0, i32 %60, i32 %61, i32 0, i32 0, i32 %62, i32 %63, i32 0)
  %65 = load i32, i32* @GPU_PREVIOUS, align 4
  %66 = load i32, i32* @GPU_PREVIOUS, align 4
  %67 = call i32 @GPU_SetTexEnv(i32 1, i32 %65, i32 %66, i32 0, i32 0, i32 0, i32 0, i32 0)
  %68 = load i32, i32* @GPU_PREVIOUS, align 4
  %69 = load i32, i32* @GPU_PREVIOUS, align 4
  %70 = call i32 @GPU_SetTexEnv(i32 2, i32 %68, i32 %69, i32 0, i32 0, i32 0, i32 0, i32 0)
  %71 = load i32, i32* @GPU_PREVIOUS, align 4
  %72 = load i32, i32* @GPU_PREVIOUS, align 4
  %73 = call i32 @GPU_SetTexEnv(i32 3, i32 %71, i32 %72, i32 0, i32 0, i32 0, i32 0, i32 0)
  %74 = load i32, i32* @GPU_PREVIOUS, align 4
  %75 = load i32, i32* @GPU_PREVIOUS, align 4
  %76 = call i32 @GPU_SetTexEnv(i32 4, i32 %74, i32 %75, i32 0, i32 0, i32 0, i32 0, i32 0)
  %77 = load i32, i32* @GPU_PREVIOUS, align 4
  %78 = load i32, i32* @GPU_PREVIOUS, align 4
  %79 = call i32 @GPU_SetTexEnv(i32 5, i32 %77, i32 %78, i32 0, i32 0, i32 0, i32 0, i32 0)
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @VIRT_TO_PHYS(i32 %83)
  %85 = load i32, i32* @GPU_SHORT, align 4
  %86 = call i32 @CTRGU_ATTRIBFMT(i32 %85, i32 4)
  %87 = shl i32 %86, 0
  %88 = load i32, i32* @GPU_SHORT, align 4
  %89 = call i32 @CTRGU_ATTRIBFMT(i32 %88, i32 4)
  %90 = shl i32 %89, 4
  %91 = or i32 %87, %90
  %92 = call i32 @ctrGuSetAttributeBuffers(i32 2, i32 %84, i32 %91, i32 4)
  %93 = call i32 (...) @GPU_Finalize()
  %94 = call i32 @ctrGuFlushAndRun(i32 1)
  %95 = load i32, i32* @GSPGPU_EVENT_P3D, align 4
  %96 = call i32 @gspWaitForEvent(i32 %95, i32 0)
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  store i32 0, i32* %98, align 8
  br label %99

99:                                               ; preds = %18, %14
  %100 = load i64, i64* %3, align 8
  %101 = load i64, i64* @APTHOOK_ONSUSPEND, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %130

103:                                              ; preds = %99
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @CTR_VIDEO_MODE_2D_400x240, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %130

109:                                              ; preds = %103
  %110 = load i32*, i32** @gfxTopRightFramebuffers, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** @gfxTopLeftFramebuffers, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @memcpy(i32 %115, i32 %121, i32 288000)
  %123 = load i32*, i32** @gfxTopRightFramebuffers, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @GSPGPU_FlushDataCache(i32 %128, i32 288000)
  br label %130

130:                                              ; preds = %109, %103, %99
  %131 = load i64, i64* %3, align 8
  %132 = load i64, i64* @APTHOOK_ONSUSPEND, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %130
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load float, float* inttoptr (i64 536350848 to float*), align 4
  %141 = fpext float %140 to double
  %142 = fcmp une double %141, 0.000000e+00
  %143 = zext i1 %142 to i32
  %144 = call i32 @ctr_set_parallax_layer(i32 %143)
  br label %145

145:                                              ; preds = %139, %134, %130
  %146 = load i64, i64* %3, align 8
  %147 = load i64, i64* @APTHOOK_ONSUSPEND, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %153, label %149

149:                                              ; preds = %145
  %150 = load i64, i64* %3, align 8
  %151 = load i64, i64* @APTHOOK_ONRESTORE, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %181

153:                                              ; preds = %149, %145
  %154 = call i32 @CFGU_GetModelNintendo2DS(i64* %7)
  %155 = load i64, i64* %7, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %180

157:                                              ; preds = %153
  %158 = call i64 @srvGetServiceHandle(i32* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %159 = icmp sge i64 %158, 0
  br i1 %159, label %160, label %180

160:                                              ; preds = %157
  %161 = call i32* (...) @getThreadCommandBuffer()
  store i32* %161, i32** %8, align 8
  %162 = load i64, i64* %3, align 8
  %163 = load i64, i64* @APTHOOK_ONSUSPEND, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %168, label %165

165:                                              ; preds = %160
  %166 = load i64, i64* @ctr_bottom_screen_enabled, align 8
  %167 = icmp ne i64 %166, 0
  br label %168

168:                                              ; preds = %165, %160
  %169 = phi i1 [ true, %160 ], [ %167, %165 ]
  %170 = zext i1 %169 to i64
  %171 = select i1 %169, i32 1114176, i32 1179712
  %172 = load i32*, i32** %8, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  store i32 %171, i32* %173, align 4
  %174 = load i32*, i32** %8, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  store i32 2, i32* %175, align 4
  %176 = load i32, i32* %6, align 4
  %177 = call i32 @svcSendSyncRequest(i32 %176)
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @svcCloseHandle(i32 %178)
  br label %180

180:                                              ; preds = %168, %157, %153
  br label %181

181:                                              ; preds = %13, %180, %149
  ret void
}

declare dso_local i32 @GPUCMD_SetBufferOffset(i32) #1

declare dso_local i32 @shaderProgramUse(i32*) #1

declare dso_local i32 @GPU_SetViewport(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VIRT_TO_PHYS(i32) #1

declare dso_local i32 @GPU_DepthMap(float, float) #1

declare dso_local i32 @GPU_SetFaceCulling(i32) #1

declare dso_local i32 @GPU_SetStencilTest(i32, i32, i32, i32, i32) #1

declare dso_local i32 @GPU_SetStencilOp(i32, i32, i32) #1

declare dso_local i32 @GPU_SetBlendingColor(i32, i32, i32, i32) #1

declare dso_local i32 @GPU_SetDepthTestAndWriteMask(i32, i32, i32) #1

declare dso_local i32 @GPUCMD_AddMaskedWrite(i32, i32, i32) #1

declare dso_local i32 @GPUCMD_AddWrite(i32, i32) #1

declare dso_local i32 @GPU_SetAlphaBlending(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GPU_SetAlphaTest(i32, i32, i32) #1

declare dso_local i32 @GPU_SetTextureEnable(i32) #1

declare dso_local i32 @GPU_SetTexEnv(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctrGuSetAttributeBuffers(i32, i32, i32, i32) #1

declare dso_local i32 @CTRGU_ATTRIBFMT(i32, i32) #1

declare dso_local i32 @GPU_Finalize(...) #1

declare dso_local i32 @ctrGuFlushAndRun(i32) #1

declare dso_local i32 @gspWaitForEvent(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @GSPGPU_FlushDataCache(i32, i32) #1

declare dso_local i32 @ctr_set_parallax_layer(i32) #1

declare dso_local i32 @CFGU_GetModelNintendo2DS(i64*) #1

declare dso_local i64 @srvGetServiceHandle(i32*, i8*) #1

declare dso_local i32* @getThreadCommandBuffer(...) #1

declare dso_local i32 @svcSendSyncRequest(i32) #1

declare dso_local i32 @svcCloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
