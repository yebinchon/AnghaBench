; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_VIDDCDeInit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_VIDDCDeInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PVR_LIST_OP_POLY = common dso_local global i32 0, align 4
@PVR_LIST_TR_POLY = common dso_local global i32 0, align 4
@PVR_LIST_PT_POLY = common dso_local global i32 0, align 4
@tex_space = common dso_local global i32 0, align 4
@dmadone = common dso_local global i32 0, align 4
@DM_640x480 = common dso_local global i32 0, align 4
@PM_RGB565 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @VIDDCDeInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @VIDDCDeInit() #0 {
  %1 = load i32, i32* @PVR_LIST_OP_POLY, align 4
  %2 = call i32 @pvr_set_vertbuf(i32 %1, i32* null, i32 0)
  %3 = load i32, i32* @PVR_LIST_TR_POLY, align 4
  %4 = call i32 @pvr_set_vertbuf(i32 %3, i32* null, i32 0)
  %5 = load i32, i32* @PVR_LIST_PT_POLY, align 4
  %6 = call i32 @pvr_set_vertbuf(i32 %5, i32* null, i32 0)
  %7 = load i32, i32* @tex_space, align 4
  %8 = call i32 @pvr_mem_free(i32 %7)
  %9 = call i32 @sem_destroy(i32* @dmadone)
  %10 = call i32 (...) @pvr_shutdown()
  %11 = load i32, i32* @DM_640x480, align 4
  %12 = load i32, i32* @PM_RGB565, align 4
  %13 = call i32 @vid_set_mode(i32 %11, i32 %12)
  ret void
}

declare dso_local i32 @pvr_set_vertbuf(i32, i32*, i32) #1

declare dso_local i32 @pvr_mem_free(i32) #1

declare dso_local i32 @sem_destroy(i32*) #1

declare dso_local i32 @pvr_shutdown(...) #1

declare dso_local i32 @vid_set_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
