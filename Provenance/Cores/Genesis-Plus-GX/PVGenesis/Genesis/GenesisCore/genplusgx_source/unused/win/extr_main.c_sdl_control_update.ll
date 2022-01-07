; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/unused/win/extr_main.c_sdl_control_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/unused/win/extr_main.c_sdl_control_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i32* }

@fullscreen = common dso_local global i32 0, align 4
@SDL_FULLSCREEN = common dso_local global i32 0, align 4
@VIDEO_WIDTH = common dso_local global i32 0, align 4
@VIDEO_HEIGHT = common dso_local global i32 0, align 4
@SDL_SWSURFACE = common dso_local global i32 0, align 4
@sdl_video = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@config = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@turbo_mode = common dso_local global i32 0, align 4
@use_sound = common dso_local global i32 0, align 4
@log_error = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"game.gpz\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"r+b\00", align 1
@STATE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1
@vdp_pal = common dso_local global i32 0, align 4
@snd = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@sdl_control_update.vc_table = internal constant [4 x [2 x %struct.TYPE_10__]] [[2 x %struct.TYPE_10__] [%struct.TYPE_10__ { i32 218, i32 242 }, %struct.TYPE_10__ zeroinitializer], [2 x %struct.TYPE_10__] [%struct.TYPE_10__ { i32 234, i32 258 }, %struct.TYPE_10__ zeroinitializer], [2 x %struct.TYPE_10__] [%struct.TYPE_10__ { i32 218, i32 242 }, %struct.TYPE_10__ zeroinitializer], [2 x %struct.TYPE_10__] [%struct.TYPE_10__ { i32 262, i32 266 }, %struct.TYPE_10__ zeroinitializer]], align 16
@vc_max = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@reg = common dso_local global i32* null, align 8
@bitmap = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@joynum = common dso_local global i64 0, align 8
@MAX_DEVICES = common dso_local global i64 0, align 8
@input = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
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
  %10 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %145 [
    i32 128, label %12
    i32 136, label %15
    i32 135, label %28
    i32 134, label %31
    i32 133, label %38
    i32 132, label %41
    i32 131, label %48
    i32 130, label %66
    i32 129, label %84
    i32 139, label %120
    i32 138, label %123
    i32 137, label %126
    i32 140, label %144
  ]

12:                                               ; preds = %1
  %13 = call i32 (...) @system_init()
  %14 = call i32 (...) @system_reset()
  br label %146

15:                                               ; preds = %1
  %16 = load i32, i32* @fullscreen, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* @fullscreen, align 4
  br label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @SDL_FULLSCREEN, align 4
  store i32 %20, i32* @fullscreen, align 4
  br label %21

21:                                               ; preds = %19, %18
  %22 = load i32, i32* @VIDEO_WIDTH, align 4
  %23 = load i32, i32* @VIDEO_HEIGHT, align 4
  %24 = load i32, i32* @SDL_SWSURFACE, align 4
  %25 = load i32, i32* @fullscreen, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @SDL_SetVideoMode(i32 %22, i32 %23, i32 16, i32 %26)
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sdl_video, i32 0, i32 0), align 4
  br label %146

28:                                               ; preds = %1
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @config, i32 0, i32 0), align 4
  %30 = xor i32 %29, 1
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @config, i32 0, i32 0), align 4
  br label %146

31:                                               ; preds = %1
  %32 = load i32, i32* @turbo_mode, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @use_sound, align 4
  %36 = xor i32 %35, 1
  store i32 %36, i32* @use_sound, align 4
  br label %37

37:                                               ; preds = %34, %31
  br label %146

38:                                               ; preds = %1
  %39 = load i32, i32* @log_error, align 4
  %40 = xor i32 %39, 1
  store i32 %40, i32* @log_error, align 4
  br label %146

41:                                               ; preds = %1
  %42 = load i32, i32* @use_sound, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @turbo_mode, align 4
  %46 = xor i32 %45, 1
  store i32 %46, i32* @turbo_mode, align 4
  br label %47

47:                                               ; preds = %44, %41
  br label %146

48:                                               ; preds = %1
  %49 = call i32* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32* %49, i32** %4, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = load i32, i32* @STATE_SIZE, align 4
  %54 = zext i32 %53 to i64
  %55 = call i8* @llvm.stacksave()
  store i8* %55, i8** %5, align 8
  %56 = alloca i32, i64 %54, align 16
  store i64 %54, i64* %6, align 8
  %57 = bitcast i32* %56 to i32**
  %58 = load i32, i32* @STATE_SIZE, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @fread(i32** %57, i32 %58, i32 1, i32* %59)
  %61 = call i32 @state_load(i32* %56)
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @fclose(i32* %62)
  %64 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %64)
  br label %65

65:                                               ; preds = %52, %48
  br label %146

66:                                               ; preds = %1
  %67 = call i32* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32* %67, i32** %7, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load i32, i32* @STATE_SIZE, align 4
  %72 = zext i32 %71 to i64
  %73 = call i8* @llvm.stacksave()
  store i8* %73, i8** %8, align 8
  %74 = alloca i32, i64 %72, align 16
  store i64 %72, i64* %9, align 8
  %75 = call i32 @state_save(i32* %74)
  %76 = bitcast i32* %74 to i32**
  %77 = load i32, i32* @STATE_SIZE, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @fwrite(i32** %76, i32 %77, i32 1, i32* %78)
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @fclose(i32* %80)
  %82 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %82)
  br label %83

83:                                               ; preds = %70, %66
  br label %146

84:                                               ; preds = %1
  %85 = load i32, i32* @vdp_pal, align 4
  %86 = xor i32 %85, 1
  store i32 %86, i32* @vdp_pal, align 4
  %87 = call i32 (...) @YM2612GetContextSize()
  %88 = call i8* @malloc(i32 %87)
  store i8* %88, i8** %10, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 (...) @YM2612GetContextPtr()
  %94 = call i32 (...) @YM2612GetContextSize()
  %95 = call i32 @memcpy(i8* %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %91, %84
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @snd, i32 0, i32 1), align 4
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @snd, i32 0, i32 0), align 4
  %99 = call i32 @audio_init(i32 %97, i32 %98)
  %100 = call i32 (...) @system_init()
  %101 = load i8*, i8** %10, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load i8*, i8** %10, align 8
  %105 = call i32 @YM2612Restore(i8* %104)
  %106 = load i8*, i8** %10, align 8
  %107 = call i32 @free(i8* %106)
  br label %108

108:                                              ; preds = %103, %96
  %109 = load i32*, i32** @reg, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = ashr i32 %111, 2
  %113 = and i32 %112, 3
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [4 x [2 x %struct.TYPE_10__]], [4 x [2 x %struct.TYPE_10__]]* @sdl_control_update.vc_table, i64 0, i64 %114
  %116 = load i32, i32* @vdp_pal, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %115, i64 0, i64 %117
  %119 = bitcast %struct.TYPE_10__* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_10__* @vc_max to i8*), i8* align 8 %119, i64 8, i1 false)
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @bitmap, i32 0, i32 0, i32 0), align 4
  br label %146

120:                                              ; preds = %1
  %121 = call i32 @gen_softreset(i32 1)
  %122 = call i32 @gen_softreset(i32 0)
  br label %146

123:                                              ; preds = %1
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @config, i32 0, i32 1), align 4
  %125 = xor i32 %124, 1
  store i32 %125, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @config, i32 0, i32 1), align 4
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @bitmap, i32 0, i32 0, i32 0), align 4
  br label %146

126:                                              ; preds = %1
  %127 = load i64, i64* @joynum, align 8
  %128 = add i64 %127, 1
  %129 = load i64, i64* @MAX_DEVICES, align 8
  %130 = urem i64 %128, %129
  store i64 %130, i64* @joynum, align 8
  br label %131

131:                                              ; preds = %138, %126
  %132 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @input, i32 0, i32 0), align 8
  %133 = load i64, i64* @joynum, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @NO_DEVICE, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %131
  %139 = load i64, i64* @joynum, align 8
  %140 = add i64 %139, 1
  %141 = load i64, i64* @MAX_DEVICES, align 8
  %142 = urem i64 %140, %141
  store i64 %142, i64* @joynum, align 8
  br label %131

143:                                              ; preds = %131
  br label %146

144:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %147

145:                                              ; preds = %1
  br label %146

146:                                              ; preds = %145, %143, %123, %120, %108, %83, %65, %47, %38, %37, %28, %21, %12
  store i32 1, i32* %2, align 4
  br label %147

147:                                              ; preds = %146, %144
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @system_init(...) #1

declare dso_local i32 @system_reset(...) #1

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

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @YM2612GetContextSize(...) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @YM2612GetContextPtr(...) #1

declare dso_local i32 @audio_init(i32, i32) #1

declare dso_local i32 @YM2612Restore(i8*) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @gen_softreset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
