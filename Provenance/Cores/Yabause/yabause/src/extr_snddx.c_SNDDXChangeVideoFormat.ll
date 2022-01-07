; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_snddx.c_SNDDXChangeVideoFormat.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_snddx.c_SNDDXChangeVideoFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@soundlen = common dso_local global i32 0, align 4
@NUMSOUNDBLOCKS = common dso_local global i32 0, align 4
@soundbufsize = common dso_local global i32 0, align 4
@stereodata16 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SNDDXChangeVideoFormat(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = sdiv i32 44100, %4
  store i32 %5, i32* @soundlen, align 4
  %6 = load i32, i32* @soundlen, align 4
  %7 = load i32, i32* @NUMSOUNDBLOCKS, align 4
  %8 = mul nsw i32 %6, %7
  %9 = mul nsw i32 %8, 2
  %10 = mul nsw i32 %9, 2
  store i32 %10, i32* @soundbufsize, align 4
  %11 = load i32*, i32** @stereodata16, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32*, i32** @stereodata16, align 8
  %15 = call i32 @free(i32* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load i32, i32* @soundbufsize, align 4
  %18 = call i64 @malloc(i32 %17)
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** @stereodata16, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  br label %26

22:                                               ; preds = %16
  %23 = load i32*, i32** @stereodata16, align 8
  %24 = load i32, i32* @soundbufsize, align 4
  %25 = call i32 @memset(i32* %23, i32 0, i32 %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %22, %21
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
