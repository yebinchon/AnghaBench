; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_parser.c_vc1_split.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_parser.c_vc1_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VC1_CODE_SEQHDR = common dso_local global i64 0, align 8
@VC1_CODE_ENTRYPOINT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @vc1_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc1_split(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 -1, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32*, i32** %6, align 8
  store i32* %12, i32** %10, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32* %16, i32** %11, align 8
  br label %17

17:                                               ; preds = %50, %3
  %18 = load i32*, i32** %10, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = icmp ult i32* %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %17
  %22 = load i32*, i32** %10, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = call i32* @avpriv_find_start_code(i32* %22, i32* %23, i64* %8)
  store i32* %24, i32** %10, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @VC1_CODE_SEQHDR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @VC1_CODE_ENTRYPOINT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %21
  store i32 1, i32* %9, align 4
  br label %50

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @IS_MARKER(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 -4
  %43 = load i32*, i32** %6, align 8
  %44 = ptrtoint i32* %42 to i64
  %45 = ptrtoint i32* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 4
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %4, align 4
  br label %52

49:                                               ; preds = %36, %33
  br label %50

50:                                               ; preds = %49, %32
  br label %17

51:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %40
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32* @avpriv_find_start_code(i32*, i32*, i64*) #1

declare dso_local i64 @IS_MARKER(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
