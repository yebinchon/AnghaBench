; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/pandora/extr_plat.c_draw_cd_leds.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/pandora/extr_plat.c_draw_cd_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@Pico_mcd = common dso_local global %struct.TYPE_2__* null, align 8
@g_screen_ptr = common dso_local global i64 0, align 8
@g_screen_width = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @draw_cd_leds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_cd_leds() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Pico_mcd, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %1, align 4
  %10 = load i64, i64* @g_screen_ptr, align 8
  %11 = inttoptr i64 %10 to i16*
  %12 = load i32, i32* @g_screen_width, align 4
  %13 = mul nsw i32 %12, 2
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i16, i16* %11, i64 %14
  %16 = getelementptr inbounds i16, i16* %15, i64 4
  %17 = bitcast i16* %16 to i32*
  store i32* %17, i32** %2, align 8
  %18 = load i32, i32* %1, align 4
  %19 = and i32 %18, 2
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 100664832, i32 0
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %1, align 4
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 -1073692672, i32 0
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32*, i32** %2, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %2, align 8
  store i32 %28, i32* %29, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32*, i32** %2, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %2, align 8
  store i32 %31, i32* %32, align 4
  %34 = load i32*, i32** %2, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  store i32* %35, i32** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32*, i32** %2, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %2, align 8
  store i32 %36, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32*, i32** %2, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %2, align 8
  store i32 %39, i32* %40, align 4
  %42 = load i32, i32* @g_screen_width, align 4
  %43 = sdiv i32 %42, 2
  %44 = sub nsw i32 %43, 6
  %45 = load i32*, i32** %2, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32* %47, i32** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load i32*, i32** %2, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %2, align 8
  store i32 %48, i32* %49, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32*, i32** %2, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %2, align 8
  store i32 %51, i32* %52, align 4
  %54 = load i32*, i32** %2, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32* %55, i32** %2, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i32*, i32** %2, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %2, align 8
  store i32 %56, i32* %57, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32*, i32** %2, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %2, align 8
  store i32 %59, i32* %60, align 4
  %62 = load i32, i32* @g_screen_width, align 4
  %63 = sdiv i32 %62, 2
  %64 = sub nsw i32 %63, 6
  %65 = load i32*, i32** %2, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %2, align 8
  %68 = load i32, i32* %3, align 4
  %69 = load i32*, i32** %2, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %2, align 8
  store i32 %68, i32* %69, align 4
  %71 = load i32, i32* %3, align 4
  %72 = load i32*, i32** %2, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %2, align 8
  store i32 %71, i32* %72, align 4
  %74 = load i32*, i32** %2, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  store i32* %75, i32** %2, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load i32*, i32** %2, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %2, align 8
  store i32 %76, i32* %77, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32*, i32** %2, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %2, align 8
  store i32 %79, i32* %80, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
