; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_VIDDCVdp2DrawStart.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_VIDDCVdp2DrawStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tex_space = common dso_local global i64 0, align 8
@cur_addr = common dso_local global i8* null, align 8
@vdp2_tex = common dso_local global i64 0, align 8
@cur_vdp2 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @VIDDCVdp2DrawStart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @VIDDCVdp2DrawStart() #0 {
  %1 = load i64, i64* @tex_space, align 8
  %2 = inttoptr i64 %1 to i8*
  store i8* %2, i8** @cur_addr, align 8
  %3 = load i64, i64* @vdp2_tex, align 8
  %4 = inttoptr i64 %3 to i8*
  store i8* %4, i8** @cur_vdp2, align 8
  %5 = call i32 (...) @pvr_wait_ready()
  %6 = call i32 (...) @pvr_scene_begin()
  %7 = call i32 (...) @Vdp2DrawBackScreen()
  %8 = call i32 (...) @Vdp2DrawLineColorScreen()
  ret void
}

declare dso_local i32 @pvr_wait_ready(...) #1

declare dso_local i32 @pvr_scene_begin(...) #1

declare dso_local i32 @Vdp2DrawBackScreen(...) #1

declare dso_local i32 @Vdp2DrawLineColorScreen(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
