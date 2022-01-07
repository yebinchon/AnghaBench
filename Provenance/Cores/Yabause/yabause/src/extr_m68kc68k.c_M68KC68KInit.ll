; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_m68kc68k.c_M68KC68KInit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_m68kc68k.c_M68KC68KInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32, i32)* }

@SoundDummy = common dso_local global i32* null, align 8
@C68K = common dso_local global i32 0, align 4
@M68K = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @M68KC68KInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @M68KC68KInit() #0 {
  %1 = alloca i32, align 4
  %2 = call i32* @T2MemoryInit(i32 65536)
  store i32* %2, i32** @SoundDummy, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32*, i32** @SoundDummy, align 8
  %6 = call i32 @memset(i32* %5, i32 255, i32 65536)
  br label %7

7:                                                ; preds = %4, %0
  %8 = call i32 @C68k_Init(i32* @C68K, i32* null)
  store i32 16, i32* %1, align 4
  br label %9

9:                                                ; preds = %24, %7
  %10 = load i32, i32* %1, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %27

12:                                               ; preds = %9
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @M68K, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %14, align 8
  %16 = load i32, i32* %1, align 4
  %17 = shl i32 %16, 16
  %18 = load i32, i32* %1, align 4
  %19 = shl i32 %18, 16
  %20 = add nsw i32 %19, 65535
  %21 = load i32*, i32** @SoundDummy, align 8
  %22 = ptrtoint i32* %21 to i32
  %23 = call i32 %15(i32 %17, i32 %20, i32 %22)
  br label %24

24:                                               ; preds = %12
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %9

27:                                               ; preds = %9
  ret i32 0
}

declare dso_local i32* @T2MemoryInit(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @C68k_Init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
