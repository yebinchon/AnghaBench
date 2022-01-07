; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_data.c_R_InitData.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_data.c_R_InitData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"\0AInitTextures\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"\0AInitFlats\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"\0AInitSprites\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"\0AInitColormaps\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_InitData() #0 {
  %1 = call i32 (...) @R_InitTextures()
  %2 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 (...) @R_InitFlats()
  %4 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %5 = call i32 (...) @R_InitSpriteLumps()
  %6 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 (...) @R_InitColormaps()
  %8 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @R_InitTextures(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @R_InitFlats(...) #1

declare dso_local i32 @R_InitSpriteLumps(...) #1

declare dso_local i32 @R_InitColormaps(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
