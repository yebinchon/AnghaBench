; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/win/extr_main.c_sdl_control_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/win/extr_main.c_sdl_control_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32* }

@fullscreen = common dso_local global i32 0, align 4
@SDL_FULLSCREEN = common dso_local global i32 0, align 4
@VIDEO_WIDTH = common dso_local global i32 0, align 4
@VIDEO_HEIGHT = common dso_local global i32 0, align 4
@SDL_SWSURFACE = common dso_local global i32 0, align 4
@sdl_video = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@config = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@turbo_mode = common dso_local global i32 0, align 4
@use_sound = common dso_local global i32 0, align 4
@log_error = common dso_local global i32 0, align 4
@sdl_sync = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"game.gp0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@STATE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@snd = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@system_hw = common dso_local global i32 0, align 4
@SYSTEM_MCD = common dso_local global i32 0, align 4
@SYSTEM_SMS = common dso_local global i32 0, align 4
@SYSTEM_MD = common dso_local global i32 0, align 4
@region_code = common dso_local global i32 0, align 4
@io_reg = common dso_local global i32* null, align 8
@vdp_pal = common dso_local global i64 0, align 8
@status = common dso_local global i32 0, align 4
@lines_per_frame = common dso_local global i32 0, align 4
@bitmap = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@vc_table = common dso_local global i32** null, align 8
@vc_max = common dso_local global i32 0, align 4
@SYSTEM_GG = common dso_local global i32 0, align 4
@joynum = common dso_local global i64 0, align 8
@MAX_DEVICES = common dso_local global i64 0, align 8
@input = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@NO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sdl_control_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdl_control_update(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %214 [
    i32 128, label %12
    i32 140, label %14
    i32 136, label %22
    i32 135, label %35
    i32 134, label %45
    i32 133, label %52
    i32 132, label %55
    i32 131, label %62
    i32 130, label %80
    i32 129, label %98
    i32 139, label %172
    i32 138, label %174
    i32 137, label %195
    i32 141, label %213
  ]

12:                                               ; preds = %1
  %13 = call i32 (...) @system_reset()
  br label %215

14:                                               ; preds = %1
  %15 = call i32 @SDL_ShowCursor(i32 -1)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 @SDL_ShowCursor(i32 0)
  br label %21

19:                                               ; preds = %14
  %20 = call i32 @SDL_ShowCursor(i32 1)
  br label %21

21:                                               ; preds = %19, %17
  br label %215

22:                                               ; preds = %1
  %23 = load i32, i32* @fullscreen, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* @fullscreen, align 4
  br label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @SDL_FULLSCREEN, align 4
  store i32 %27, i32* @fullscreen, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = load i32, i32* @VIDEO_WIDTH, align 4
  %30 = load i32, i32* @VIDEO_HEIGHT, align 4
  %31 = load i32, i32* @SDL_SWSURFACE, align 4
  %32 = load i32, i32* @fullscreen, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @SDL_SetVideoMode(i32 %29, i32 %30, i32 16, i32 %33)
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sdl_video, i32 0, i32 0), align 4
  br label %215

35:                                               ; preds = %1
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 0), align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 0), align 4
  br label %44

39:                                               ; preds = %35
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 0), align 4
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 0), align 4
  br label %43

43:                                               ; preds = %42, %39
  br label %44

44:                                               ; preds = %43, %38
  br label %215

45:                                               ; preds = %1
  %46 = load i32, i32* @turbo_mode, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @use_sound, align 4
  %50 = xor i32 %49, 1
  store i32 %50, i32* @use_sound, align 4
  br label %51

51:                                               ; preds = %48, %45
  br label %215

52:                                               ; preds = %1
  %53 = load i32, i32* @log_error, align 4
  %54 = xor i32 %53, 1
  store i32 %54, i32* @log_error, align 4
  br label %215

55:                                               ; preds = %1
  %56 = load i32, i32* @use_sound, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @turbo_mode, align 4
  %60 = xor i32 %59, 1
  store i32 %60, i32* @turbo_mode, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sdl_sync, i32 0, i32 0), align 4
  br label %61

61:                                               ; preds = %58, %55
  br label %215

62:                                               ; preds = %1
  %63 = call i32* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %63, i32** %4, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load i32, i32* @STATE_SIZE, align 4
  %68 = zext i32 %67 to i64
  %69 = call i8* @llvm.stacksave()
  store i8* %69, i8** %5, align 8
  %70 = alloca i32, i64 %68, align 16
  store i64 %68, i64* %6, align 8
  %71 = bitcast i32* %70 to i32**
  %72 = load i32, i32* @STATE_SIZE, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @fread(i32** %71, i32 %72, i32 1, i32* %73)
  %75 = call i32 @state_load(i32* %70)
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @fclose(i32* %76)
  %78 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %78)
  br label %79

79:                                               ; preds = %66, %62
  br label %215

80:                                               ; preds = %1
  %81 = call i32* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %81, i32** %7, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  %85 = load i32, i32* @STATE_SIZE, align 4
  %86 = zext i32 %85 to i64
  %87 = call i8* @llvm.stacksave()
  store i8* %87, i8** %8, align 8
  %88 = alloca i32, i64 %86, align 16
  store i64 %86, i64* %9, align 8
  %89 = call i32 @state_save(i32* %88)
  store i32 %89, i32* %10, align 4
  %90 = bitcast i32* %88 to i32**
  %91 = load i32, i32* %10, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @fwrite(i32** %90, i32 %91, i32 1, i32* %92)
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @fclose(i32* %94)
  %96 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %96)
  br label %97

97:                                               ; preds = %84, %80
  br label %215

98:                                               ; preds = %1
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 1), align 4
  %100 = add nsw i32 %99, 1
  %101 = srem i32 %100, 5
  store i32 %101, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 1), align 4
  %102 = call i32 @get_region(i32 0)
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @snd, i32 0, i32 0), align 4
  %104 = call i32 @audio_init(i32 %103, i32 0)
  %105 = load i32, i32* @system_hw, align 4
  %106 = load i32, i32* @SYSTEM_MCD, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %117, label %108

108:                                              ; preds = %98
  %109 = load i32, i32* @system_hw, align 4
  %110 = load i32, i32* @SYSTEM_SMS, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 0), align 4
  %115 = and i32 %114, 1
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113, %98
  %118 = call i32 (...) @system_init()
  %119 = call i32 (...) @system_reset()
  br label %171

120:                                              ; preds = %113, %108
  %121 = load i32, i32* @system_hw, align 4
  %122 = load i32, i32* @SYSTEM_MD, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load i32, i32* @region_code, align 4
  %126 = or i32 32, %125
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 0), align 4
  %128 = and i32 %127, 1
  %129 = or i32 %126, %128
  %130 = load i32*, i32** @io_reg, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  store i32 %129, i32* %131, align 4
  br label %138

132:                                              ; preds = %120
  %133 = load i32, i32* @region_code, align 4
  %134 = ashr i32 %133, 1
  %135 = or i32 128, %134
  %136 = load i32*, i32** @io_reg, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %132, %124
  %139 = load i64, i64* @vdp_pal, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i32, i32* @status, align 4
  %143 = or i32 %142, 1
  store i32 %143, i32* @status, align 4
  store i32 313, i32* @lines_per_frame, align 4
  br label %147

144:                                              ; preds = %138
  %145 = load i32, i32* @status, align 4
  %146 = and i32 %145, -2
  store i32 %146, i32* @status, align 4
  store i32 262, i32* @lines_per_frame, align 4
  br label %147

147:                                              ; preds = %144, %141
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @bitmap, i32 0, i32 0, i32 2), align 4
  switch i32 %148, label %170 [
    i32 192, label %149
    i32 224, label %156
    i32 240, label %163
  ]

149:                                              ; preds = %147
  %150 = load i32**, i32*** @vc_table, align 8
  %151 = getelementptr inbounds i32*, i32** %150, i64 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* @vdp_pal, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* @vc_max, align 4
  br label %170

156:                                              ; preds = %147
  %157 = load i32**, i32*** @vc_table, align 8
  %158 = getelementptr inbounds i32*, i32** %157, i64 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i64, i64* @vdp_pal, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* @vc_max, align 4
  br label %170

163:                                              ; preds = %147
  %164 = load i32**, i32*** @vc_table, align 8
  %165 = getelementptr inbounds i32*, i32** %164, i64 3
  %166 = load i32*, i32** %165, align 8
  %167 = load i64, i64* @vdp_pal, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* @vc_max, align 4
  br label %170

170:                                              ; preds = %147, %163, %156, %149
  br label %171

171:                                              ; preds = %170, %117
  br label %215

172:                                              ; preds = %1
  %173 = call i32 @gen_reset(i32 0)
  br label %215

174:                                              ; preds = %1
  %175 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 2), align 4
  %176 = add nsw i32 %175, 1
  %177 = and i32 %176, 3
  store i32 %177, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 2), align 4
  %178 = load i32, i32* @system_hw, align 4
  %179 = load i32, i32* @SYSTEM_GG, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %190

181:                                              ; preds = %174
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 3), align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %190, label %184

184:                                              ; preds = %181
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 2), align 4
  %186 = and i32 %185, 2
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i32 14, i32 -48
  store i32 %189, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @bitmap, i32 0, i32 0, i32 0), align 4
  br label %194

190:                                              ; preds = %181, %174
  %191 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 2), align 4
  %192 = and i32 %191, 2
  %193 = mul nsw i32 %192, 7
  store i32 %193, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @bitmap, i32 0, i32 0, i32 0), align 4
  br label %194

194:                                              ; preds = %190, %184
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @bitmap, i32 0, i32 0, i32 1), align 4
  br label %215

195:                                              ; preds = %1
  %196 = load i64, i64* @joynum, align 8
  %197 = add i64 %196, 1
  %198 = load i64, i64* @MAX_DEVICES, align 8
  %199 = urem i64 %197, %198
  store i64 %199, i64* @joynum, align 8
  br label %200

200:                                              ; preds = %207, %195
  %201 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %202 = load i64, i64* @joynum, align 8
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @NO_DEVICE, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %212

207:                                              ; preds = %200
  %208 = load i64, i64* @joynum, align 8
  %209 = add i64 %208, 1
  %210 = load i64, i64* @MAX_DEVICES, align 8
  %211 = urem i64 %209, %210
  store i64 %211, i64* @joynum, align 8
  br label %200

212:                                              ; preds = %200
  br label %215

213:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %216

214:                                              ; preds = %1
  br label %215

215:                                              ; preds = %214, %212, %194, %172, %171, %97, %79, %61, %52, %51, %44, %28, %21, %12
  store i32 1, i32* %2, align 4
  br label %216

216:                                              ; preds = %215, %213
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local i32 @system_reset(...) #1

declare dso_local i32 @SDL_ShowCursor(i32) #1

declare dso_local i32 @SDL_SetVideoMode(i32, i32, i32, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @fread(i32**, i32, i32, i32*) #1

declare dso_local i32 @state_load(i32*) #1

declare dso_local i32 @fclose(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @state_save(i32*) #1

declare dso_local i32 @fwrite(i32**, i32, i32, i32*) #1

declare dso_local i32 @get_region(i32) #1

declare dso_local i32 @audio_init(i32, i32) #1

declare dso_local i32 @system_init(...) #1

declare dso_local i32 @gen_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
