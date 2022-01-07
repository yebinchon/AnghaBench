; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_ps2.c_Sound_Initialise.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_ps2.c_Sound_Initialise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audsrv_fmt_t = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"failed to initialize audsrv: %s\00", align 1
@MAX_VOLUME = common dso_local global i32 0, align 4
@POKEYSND_FREQ_17_EXACT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Sound_Initialise(i32* %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.audsrv_fmt_t, align 4
  store i32* %0, i32** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = call i64 (...) @audsrv_init()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = call i32 (...) @audsrv_get_error_string()
  %10 = call i32 @Log_print(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %20

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.audsrv_fmt_t, %struct.audsrv_fmt_t* %5, i32 0, i32 0
  store i32 8, i32* %12, align 4
  %13 = getelementptr inbounds %struct.audsrv_fmt_t, %struct.audsrv_fmt_t* %5, i32 0, i32 1
  store i32 44100, i32* %13, align 4
  %14 = getelementptr inbounds %struct.audsrv_fmt_t, %struct.audsrv_fmt_t* %5, i32 0, i32 2
  store i32 1, i32* %14, align 4
  %15 = call i32 @audsrv_set_format(%struct.audsrv_fmt_t* %5)
  %16 = load i32, i32* @MAX_VOLUME, align 4
  %17 = call i32 @audsrv_set_volume(i32 %16)
  %18 = load i32, i32* @POKEYSND_FREQ_17_EXACT, align 4
  %19 = call i32 @POKEYSND_Init(i32 %18, i32 44100, i32 1, i32 0)
  br label %20

20:                                               ; preds = %11, %8
  %21 = load i32, i32* @TRUE, align 4
  ret i32 %21
}

declare dso_local i64 @audsrv_init(...) #1

declare dso_local i32 @Log_print(i8*, i32) #1

declare dso_local i32 @audsrv_get_error_string(...) #1

declare dso_local i32 @audsrv_set_format(%struct.audsrv_fmt_t*) #1

declare dso_local i32 @audsrv_set_volume(i32) #1

declare dso_local i32 @POKEYSND_Init(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
