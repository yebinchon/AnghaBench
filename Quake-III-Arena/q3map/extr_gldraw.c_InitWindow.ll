; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_gldraw.c_InitWindow.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_gldraw.c_InitWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AUX_SINGLE = common dso_local global i32 0, align 4
@AUX_RGB = common dso_local global i32 0, align 4
@WIN_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"qcsg\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitWindow() #0 {
  %1 = load i32, i32* @AUX_SINGLE, align 4
  %2 = load i32, i32* @AUX_RGB, align 4
  %3 = or i32 %1, %2
  %4 = call i32 @auxInitDisplayMode(i32 %3)
  %5 = load i32, i32* @WIN_SIZE, align 4
  %6 = load i32, i32* @WIN_SIZE, align 4
  %7 = call i32 @auxInitPosition(i32 0, i32 0, i32 %5, i32 %6)
  %8 = call i32 @auxInitWindow(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @auxInitDisplayMode(i32) #1

declare dso_local i32 @auxInitPosition(i32, i32, i32, i32) #1

declare dso_local i32 @auxInitWindow(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
