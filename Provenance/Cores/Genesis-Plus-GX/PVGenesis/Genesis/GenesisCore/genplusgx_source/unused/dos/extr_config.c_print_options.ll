; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/unused/dos/extr_config.c_print_options.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/unused/dos/extr_config.c_print_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [51 x i8] c" -vdriver <s>        \09 Select video driver (auto)\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c" -res <w> <h>        \09 Specify display resolution (320x240)\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c" -depth <n>          \09 Specify display depth (8)\0A\00", align 1
@.str.3 = private unnamed_addr constant [79 x i8] c" -remap <on|off>     \09 Enable raster-based palette effects (8-bit color only)\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c" -scanlines <on|off> \09 Enable scanlines effect\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c" -scale <on|off>     \09 Scale display to width of screen\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c" -vsync <on|off>     \09 Enable vsync polling\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c" -throttle <on|off>  \09 Enable speed throttling\0A\00", align 1
@.str.8 = private unnamed_addr constant [71 x i8] c" -skip <n>           \09 Specify frame skip level (1=no frames skipped)\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c" -sound <on|off>     \09 Enable sound output\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c" -sndcard <n>        \09 Select sound card\0A\00", align 1
@.str.11 = private unnamed_addr constant [63 x i8] c" -sndrate <n>        \09 Specify sound sample rate (8000-44100)\0A\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c" -swap <on|off>      \09 Swap left and right channels\0A\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c" -joy <s>            \09 Select joystick driver (auto)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_options() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0))
  %5 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %6 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  %7 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %8 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  %9 = call i32 @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.8, i64 0, i64 0))
  %10 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  %11 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  %12 = call i32 @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.11, i64 0, i64 0))
  %13 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0))
  %14 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
