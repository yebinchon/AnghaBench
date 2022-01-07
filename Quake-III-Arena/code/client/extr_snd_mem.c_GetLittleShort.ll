; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_mem.c_GetLittleShort.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_mem.c_GetLittleShort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@data_p = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 ()* @GetLittleShort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @GetLittleShort() #0 {
  %1 = alloca i16, align 2
  store i16 0, i16* %1, align 2
  %2 = load i32*, i32** @data_p, align 8
  %3 = load i32, i32* %2, align 4
  %4 = trunc i32 %3 to i16
  store i16 %4, i16* %1, align 2
  %5 = load i16, i16* %1, align 2
  %6 = sext i16 %5 to i32
  %7 = load i32*, i32** @data_p, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 %9, 8
  %11 = add nsw i32 %6, %10
  %12 = trunc i32 %11 to i16
  store i16 %12, i16* %1, align 2
  %13 = load i32*, i32** @data_p, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  store i32* %14, i32** @data_p, align 8
  %15 = load i16, i16* %1, align 2
  ret i16 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
