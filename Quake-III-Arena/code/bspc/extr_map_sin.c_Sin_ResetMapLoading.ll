; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_sin.c_Sin_ResetMapLoading.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_sin.c_Sin_ResetMapLoading.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nodestack = common dso_local global i32 0, align 4
@NODESTACKSIZE = common dso_local global i32 0, align 4
@nodestackptr = common dso_local global i32* null, align 8
@nodestacksize = common dso_local global i64 0, align 8
@brushmodelnumbers = common dso_local global i32 0, align 4
@MAX_MAPFILE_BRUSHES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Sin_ResetMapLoading() #0 {
  %1 = load i32, i32* @nodestack, align 4
  %2 = load i32, i32* @NODESTACKSIZE, align 4
  %3 = sext i32 %2 to i64
  %4 = mul i64 %3, 4
  %5 = trunc i64 %4 to i32
  %6 = call i32 @memset(i32 %1, i32 0, i32 %5)
  store i32* null, i32** @nodestackptr, align 8
  store i64 0, i64* @nodestacksize, align 8
  %7 = load i32, i32* @brushmodelnumbers, align 4
  %8 = load i32, i32* @MAX_MAPFILE_BRUSHES, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = trunc i64 %10 to i32
  %12 = call i32 @memset(i32 %7, i32 0, i32 %11)
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
