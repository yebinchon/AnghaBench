; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sound.c_Sound_Setup.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sound.c_Sound_Setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@POKEYSND_enable_new_pokey = common dso_local global i64 0, align 8
@Sound_desired = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@Sound_out = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@Sound_enabled = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%d frequency not supported\00", align 1
@MAX_CHANNELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%d channels not supported\00", align 1
@POKEYSND_stereo_enabled = common dso_local global i32 0, align 4
@process_buffer = common dso_local global i32 0, align 4
@process_buffer_size = common dso_local global i32 0, align 4
@POKEYSND_FREQ_17_EXACT = common dso_local global i32 0, align 4
@POKEYSND_BIT16 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@paused = common dso_local global i32 0, align 4
@Sound_latency = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Sound_Setup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* @POKEYSND_enable_new_pokey, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_desired, i32 0, i32 0), align 4
  %8 = icmp slt i32 %7, 8192
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store i32 8192, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_desired, i32 0, i32 0), align 4
  br label %20

10:                                               ; preds = %6, %0
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_desired, i32 0, i32 0), align 4
  %12 = icmp slt i32 %11, 1000
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 1000, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_desired, i32 0, i32 0), align 4
  br label %19

14:                                               ; preds = %10
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_desired, i32 0, i32 0), align 4
  %16 = icmp sgt i32 %15, 65535
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 65535, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_desired, i32 0, i32 0), align 4
  br label %18

18:                                               ; preds = %17, %14
  br label %19

19:                                               ; preds = %18, %13
  br label %20

20:                                               ; preds = %19, %9
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_desired, i32 0, i32 1), align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_desired, i32 0, i32 1), align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %29, %23
  %26 = load i32, i32* %3, align 4
  %27 = lshr i32 %26, 1
  store i32 %27, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %2, align 4
  %31 = shl i32 %30, 1
  store i32 %31, i32* %2, align 4
  br label %25

32:                                               ; preds = %25
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_desired, i32 0, i32 1), align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %2, align 4
  %38 = shl i32 %37, 1
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %32
  %40 = load i32, i32* %2, align 4
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_desired, i32 0, i32 1), align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_desired, i32 0, i32 1), align 4
  %42 = icmp ult i32 %41, 16
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 16, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_desired, i32 0, i32 1), align 4
  br label %44

44:                                               ; preds = %43, %39
  br label %45

45:                                               ; preds = %44, %20
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_4__* @Sound_out to i8*), i8* align 4 bitcast (%struct.TYPE_4__* @Sound_desired to i8*), i64 16, i1 false)
  %46 = call i32 @PLATFORM_SoundSetup(%struct.TYPE_4__* @Sound_out)
  store i32 %46, i32* @Sound_enabled, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %1, align 4
  br label %105

50:                                               ; preds = %45
  %51 = load i64, i64* @POKEYSND_enable_new_pokey, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_out, i32 0, i32 0), align 4
  %55 = icmp slt i32 %54, 8192
  br i1 %55, label %62, label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_out, i32 0, i32 0), align 4
  %58 = icmp slt i32 %57, 1000
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_out, i32 0, i32 0), align 4
  %61 = icmp sgt i32 %60, 65535
  br i1 %61, label %62, label %67

62:                                               ; preds = %59, %56, %53
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_out, i32 0, i32 0), align 4
  %64 = call i32 @Log_print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = call i32 (...) @Sound_Exit()
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %1, align 4
  br label %105

67:                                               ; preds = %59
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_out, i32 0, i32 2), align 4
  %69 = load i32, i32* @MAX_CHANNELS, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_out, i32 0, i32 2), align 4
  %73 = call i32 @Log_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = call i32 (...) @Sound_Exit()
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %1, align 4
  br label %105

76:                                               ; preds = %67
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_out, i32 0, i32 2), align 4
  %78 = icmp eq i32 %77, 2
  %79 = zext i1 %78 to i32
  store i32 %79, i32* @POKEYSND_stereo_enabled, align 4
  %80 = load i32, i32* @process_buffer, align 4
  %81 = call i32 @free(i32 %80)
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_out, i32 0, i32 1), align 4
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_out, i32 0, i32 2), align 4
  %84 = mul i32 %82, %83
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_out, i32 0, i32 3), align 4
  %86 = mul i32 %84, %85
  store i32 %86, i32* @process_buffer_size, align 4
  %87 = load i32, i32* @process_buffer_size, align 4
  %88 = call i32 @Util_malloc(i32 %87)
  store i32 %88, i32* @process_buffer, align 4
  %89 = load i32, i32* @POKEYSND_FREQ_17_EXACT, align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_out, i32 0, i32 0), align 4
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_out, i32 0, i32 2), align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_out, i32 0, i32 3), align 4
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %94, label %96

94:                                               ; preds = %76
  %95 = load i32, i32* @POKEYSND_BIT16, align 4
  br label %97

96:                                               ; preds = %76
  br label %97

97:                                               ; preds = %96, %94
  %98 = phi i32 [ %95, %94 ], [ 0, %96 ]
  %99 = call i32 @POKEYSND_Init(i32 %89, i32 %90, i32 %91, i32 %98)
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_out, i32 0, i32 0), align 4
  store i32 %100, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_desired, i32 0, i32 0), align 4
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_out, i32 0, i32 3), align 4
  store i32 %101, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_desired, i32 0, i32 3), align 4
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_out, i32 0, i32 2), align 4
  store i32 %102, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Sound_desired, i32 0, i32 2), align 4
  %103 = load i32, i32* @TRUE, align 4
  store i32 %103, i32* @paused, align 4
  %104 = load i32, i32* @TRUE, align 4
  store i32 %104, i32* %1, align 4
  br label %105

105:                                              ; preds = %97, %71, %62, %48
  %106 = load i32, i32* %1, align 4
  ret i32 %106
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @PLATFORM_SoundSetup(%struct.TYPE_4__*) #2

declare dso_local i32 @Log_print(i8*, i32) #2

declare dso_local i32 @Sound_Exit(...) #2

declare dso_local i32 @free(i32) #2

declare dso_local i32 @Util_malloc(i32) #2

declare dso_local i32 @POKEYSND_Init(i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
