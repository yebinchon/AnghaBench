; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_golomb.h_get_ur_golomb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_golomb.h_get_ur_golomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@re = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @get_ur_golomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ur_golomb(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @re, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @OPEN_READER(i32 %12, i32* %13)
  %15 = load i32, i32* @re, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @UPDATE_CACHE(i32 %15, i32* %16)
  %18 = load i32, i32* @re, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @GET_CACHE(i32 %18, i32* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @av_log2(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 31, %24
  %26 = icmp sgt i32 %23, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %28, %29
  %31 = load i32, i32* %10, align 4
  %32 = lshr i32 %31, %30
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = sub i32 30, %33
  %35 = load i32, i32* %7, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* %10, align 4
  %38 = add i32 %37, %36
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* @re, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 32, %41
  %43 = load i32, i32* %11, align 4
  %44 = sub nsw i32 %42, %43
  %45 = call i32 @LAST_SKIP_BITS(i32 %39, i32* %40, i32 %44)
  %46 = load i32, i32* @re, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @CLOSE_READER(i32 %46, i32* %47)
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %5, align 4
  br label %73

50:                                               ; preds = %4
  %51 = load i32, i32* @re, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @LAST_SKIP_BITS(i32 %51, i32* %52, i32 %53)
  %55 = load i32, i32* @re, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @UPDATE_CACHE(i32 %55, i32* %56)
  %58 = load i32, i32* @re, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @SHOW_UBITS(i32 %58, i32* %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* @re, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @LAST_SKIP_BITS(i32 %62, i32* %63, i32 %64)
  %66 = load i32, i32* @re, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @CLOSE_READER(i32 %66, i32* %67)
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %8, align 4
  %71 = add i32 %69, %70
  %72 = sub i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %50, %27
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @OPEN_READER(i32, i32*) #1

declare dso_local i32 @UPDATE_CACHE(i32, i32*) #1

declare dso_local i32 @GET_CACHE(i32, i32*) #1

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @LAST_SKIP_BITS(i32, i32*, i32) #1

declare dso_local i32 @CLOSE_READER(i32, i32*) #1

declare dso_local i32 @SHOW_UBITS(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
