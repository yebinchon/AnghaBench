; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/extr_libretro.c_retro_get_system_info.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/extr_libretro.c_retro_get_system_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_system_info = type { i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"PicoDrive\00", align 1
@VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"bin|gen|smd|md|32x|cue|iso|sms\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @retro_get_system_info(%struct.retro_system_info* %0) #0 {
  %2 = alloca %struct.retro_system_info*, align 8
  store %struct.retro_system_info* %0, %struct.retro_system_info** %2, align 8
  %3 = load %struct.retro_system_info*, %struct.retro_system_info** %2, align 8
  %4 = call i32 @memset(%struct.retro_system_info* %3, i32 0, i32 24)
  %5 = load %struct.retro_system_info*, %struct.retro_system_info** %2, align 8
  %6 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = load i32, i32* @VERSION, align 4
  %8 = load %struct.retro_system_info*, %struct.retro_system_info** %2, align 8
  %9 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 4
  %10 = load %struct.retro_system_info*, %struct.retro_system_info** %2, align 8
  %11 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %10, i32 0, i32 1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  %12 = load %struct.retro_system_info*, %struct.retro_system_info** %2, align 8
  %13 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %12, i32 0, i32 2
  store i32 1, i32* %13, align 8
  ret void
}

declare dso_local i32 @memset(%struct.retro_system_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
