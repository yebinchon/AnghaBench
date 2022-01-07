; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_psp1_gfx.c_psp_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_psp1_gfx.c_psp_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__, i32, i32, i64, i64, i32, i32, i64, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i64 }

@RETRO_HW_FRAME_BUFFER_VALID = common dso_local global i8* null, align 8
@GU_DIRECT = common dso_local global i32 0, align 4
@GU_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GU_SPRITES = common dso_local global i32 0, align 4
@GU_TEXTURE_32BITF = common dso_local global i32 0, align 4
@GU_VERTEX_32BITF = common dso_local global i32 0, align 4
@GU_TRANSFORM_2D = common dso_local global i32 0, align 4
@PSP_FRAME_VERTEX_COUNT = common dso_local global i32 0, align 4
@GU_PSM_8888 = common dso_local global i32 0, align 4
@GU_PSM_5650 = common dso_local global i32 0, align 4
@GU_TAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i8*, i32*)* @psp_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %18, align 8
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %8
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %8
  store i32 0, i32* %9, align 4
  br label %205

27:                                               ; preds = %23
  %28 = load i8*, i8** %11, align 8
  %29 = ptrtoint i8* %28 to i32
  %30 = and i32 %29, 67108864
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %11, align 8
  %34 = load i8*, i8** @RETRO_HW_FRAME_BUFFER_VALID, align 8
  %35 = icmp eq i8* %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32, %27
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  br label %46

39:                                               ; preds = %32
  %40 = load i8*, i8** %11, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %39
  br label %46

46:                                               ; preds = %45, %36
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = call i32 @sceGuSync(i32 0, i32 0)
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i8*, i8** %16, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 11
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @pspDebugScreenSetBase(i32 %59)
  %61 = call i32 @pspDebugScreenSetXY(i32 0, i32 0)
  %62 = load i8*, i8** %16, align 8
  %63 = call i32 @pspDebugScreenPuts(i8* %62)
  br label %64

64:                                               ; preds = %56, %53
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 12
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = call i32 (...) @sceDisplayWaitVblankStart()
  br label %76

76:                                               ; preds = %74, %69, %64
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  %79 = call i32 (...) @sceGuSwapBuffers()
  %80 = call i32 @FROM_GU_POINTER(i32 %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 11
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 10
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %76
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %89 = load i32*, i32** %17, align 8
  %90 = call i32 @psp_update_viewport(%struct.TYPE_5__* %88, i32* %89)
  br label %91

91:                                               ; preds = %87, %76
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 7
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @psp_set_tex_coords(i64 %94, i32 %95, i32 %96)
  %98 = load i32, i32* @GU_DIRECT, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @sceGuStart(i32 %98, i32 %101)
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @sceGuTexFilter(i32 %105, i32 %108)
  %110 = load i32, i32* @GU_COLOR_BUFFER_BIT, align 4
  %111 = call i32 @sceGuClear(i32 %110)
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %91
  %117 = load i32, i32* @GU_SPRITES, align 4
  %118 = load i32, i32* @GU_TEXTURE_32BITF, align 4
  %119 = load i32, i32* @GU_VERTEX_32BITF, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @GU_TRANSFORM_2D, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @PSP_FRAME_VERTEX_COUNT, align 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 7
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to i8*
  %128 = call i32 @sceGuDrawArray(i32 %117, i32 %122, i32 %123, i32* null, i8* %127)
  br label %186

129:                                              ; preds = %91
  %130 = load i8*, i8** %11, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %172

132:                                              ; preds = %129
  %133 = load i8*, i8** %11, align 8
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %13, align 4
  %136 = mul i32 %134, %135
  %137 = call i32 @sceKernelDcacheWritebackRange(i8* %133, i32 %136)
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 6
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %132
  %143 = load i32, i32* @GU_PSM_8888, align 4
  br label %146

144:                                              ; preds = %132
  %145 = load i32, i32* @GU_PSM_5650, align 4
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi i32 [ %143, %142 ], [ %145, %144 ]
  %148 = load i8*, i8** %11, align 8
  %149 = ptrtoint i8* %148 to i32
  %150 = and i32 %149, 15
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = ashr i32 %150, %153
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* %15, align 4
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = lshr i32 %157, %160
  %162 = load i8*, i8** %11, align 8
  %163 = ptrtoint i8* %162 to i32
  %164 = and i32 %163, -16
  %165 = sext i32 %164 to i64
  %166 = inttoptr i64 %165 to i8*
  %167 = load i32, i32* %12, align 4
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @sceGuCopyImage(i32 %147, i32 %154, i32 0, i32 %155, i32 %156, i32 %161, i8* %166, i32 0, i32 0, i32 %167, i32 %170)
  br label %172

172:                                              ; preds = %146, %129
  %173 = load i32, i32* %12, align 4
  %174 = call i32 @next_pow2(i32 %173)
  %175 = load i32, i32* %13, align 4
  %176 = call i32 @next_pow2(i32 %175)
  %177 = load i32, i32* %12, align 4
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @sceGuTexImage(i32 0, i32 %174, i32 %176, i32 %177, i32 %180)
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @sceGuCallList(i32 %184)
  br label %186

186:                                              ; preds = %172, %116
  %187 = call i32 (...) @sceGuFinish()
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %204

193:                                              ; preds = %186
  %194 = load i32, i32* @GU_TAIL, align 4
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = call i32 @sceGuSendList(i32 %194, i32 %198, i32* %201)
  %203 = call i32 @sceGuSync(i32 0, i32 0)
  br label %204

204:                                              ; preds = %193, %186
  store i32 1, i32* %9, align 4
  br label %205

205:                                              ; preds = %204, %26
  %206 = load i32, i32* %9, align 4
  ret i32 %206
}

declare dso_local i32 @sceGuSync(i32, i32) #1

declare dso_local i32 @pspDebugScreenSetBase(i32) #1

declare dso_local i32 @pspDebugScreenSetXY(i32, i32) #1

declare dso_local i32 @pspDebugScreenPuts(i8*) #1

declare dso_local i32 @sceDisplayWaitVblankStart(...) #1

declare dso_local i32 @FROM_GU_POINTER(i32) #1

declare dso_local i32 @sceGuSwapBuffers(...) #1

declare dso_local i32 @psp_update_viewport(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @psp_set_tex_coords(i64, i32, i32) #1

declare dso_local i32 @sceGuStart(i32, i32) #1

declare dso_local i32 @sceGuTexFilter(i32, i32) #1

declare dso_local i32 @sceGuClear(i32) #1

declare dso_local i32 @sceGuDrawArray(i32, i32, i32, i32*, i8*) #1

declare dso_local i32 @sceKernelDcacheWritebackRange(i8*, i32) #1

declare dso_local i32 @sceGuCopyImage(i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sceGuTexImage(i32, i32, i32, i32, i32) #1

declare dso_local i32 @next_pow2(i32) #1

declare dso_local i32 @sceGuCallList(i32) #1

declare dso_local i32 @sceGuFinish(...) #1

declare dso_local i32 @sceGuSendList(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
