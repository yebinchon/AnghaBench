; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dv_tablegen.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dv_tablegen.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [90 x i8] c"static const struct dv_vlc_pair dv_vlc_map[DV_VLC_MAP_RUN_SIZE][DV_VLC_MAP_LEV_SIZE] = {\0A\00", align 1
@dv_vlc_map = common dso_local global i32 0, align 4
@DV_VLC_MAP_RUN_SIZE = common dso_local global i32 0, align 4
@DV_VLC_MAP_LEV_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (...) @dv_vlc_map_tableinit()
  %3 = call i32 (...) @write_fileheader()
  %4 = call i32 @printf(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @dv_vlc_map, align 4
  %6 = load i32, i32* @DV_VLC_MAP_RUN_SIZE, align 4
  %7 = load i32, i32* @DV_VLC_MAP_LEV_SIZE, align 4
  %8 = call i32 @write_dv_vlc_pair_2d_array(i32 %5, i32 %6, i32 %7)
  %9 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @dv_vlc_map_tableinit(...) #1

declare dso_local i32 @write_fileheader(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @write_dv_vlc_pair_2d_array(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
