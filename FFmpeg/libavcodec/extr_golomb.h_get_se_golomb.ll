; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_golomb.h_get_se_golomb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_golomb.h_get_se_golomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@re = common dso_local global i32 0, align 4
@ff_golomb_vlc_len = common dso_local global i32* null, align 8
@ff_se_golomb_vlc_code = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @get_se_golomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_se_golomb(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32, i32* @re, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @OPEN_READER(i32 %7, i32* %8)
  %10 = load i32, i32* @re, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @UPDATE_CACHE(i32 %10, i32* %11)
  %13 = load i32, i32* @re, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @GET_CACHE(i32 %13, i32* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp uge i32 %16, 134217728
  br i1 %17, label %18, label %37

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = lshr i32 %19, 23
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @re, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** @ff_golomb_vlc_len, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @LAST_SKIP_BITS(i32 %21, i32* %22, i32 %27)
  %29 = load i32, i32* @re, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @CLOSE_READER(i32 %29, i32* %30)
  %32 = load i32*, i32** @ff_se_golomb_vlc_code, align 8
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %2, align 4
  br label %72

37:                                               ; preds = %1
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @av_log2(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* @re, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sub nsw i32 31, %42
  %44 = call i32 @LAST_SKIP_BITS(i32 %40, i32* %41, i32 %43)
  %45 = load i32, i32* @re, align 4
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @UPDATE_CACHE(i32 %45, i32* %46)
  %48 = load i32, i32* @re, align 4
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @GET_CACHE(i32 %48, i32* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %4, align 4
  %53 = lshr i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* @re, align 4
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sub nsw i32 32, %56
  %58 = call i32 @LAST_SKIP_BITS(i32 %54, i32* %55, i32 %57)
  %59 = load i32, i32* @re, align 4
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @CLOSE_READER(i32 %59, i32* %60)
  %62 = load i32, i32* %4, align 4
  %63 = and i32 %62, 1
  %64 = sub i32 0, %63
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %4, align 4
  %66 = lshr i32 %65, 1
  %67 = load i32, i32* %6, align 4
  %68 = xor i32 %66, %67
  %69 = load i32, i32* %6, align 4
  %70 = sub i32 %68, %69
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %37, %18
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @OPEN_READER(i32, i32*) #1

declare dso_local i32 @UPDATE_CACHE(i32, i32*) #1

declare dso_local i32 @GET_CACHE(i32, i32*) #1

declare dso_local i32 @LAST_SKIP_BITS(i32, i32*, i32) #1

declare dso_local i32 @CLOSE_READER(i32, i32*) #1

declare dso_local i32 @av_log2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
