; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/android/jni/extr_sndopensl.c_sdlConvert32uto16s.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/android/jni/extr_sndopensl.c_sdlConvert32uto16s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@soundvolume = common dso_local global i32 0, align 4
@soundmaxvolume = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i64)* @sdlConvert32uto16s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdlConvert32uto16s(i32* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %71, %4
  %11 = load i64, i64* %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %74

14:                                               ; preds = %10
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @soundvolume, align 4
  %18 = mul nsw i32 %16, %17
  %19 = load i32, i32* @soundmaxvolume, align 4
  %20 = sdiv i32 %18, %19
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 32767
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i32*, i32** %7, align 8
  store i32 32767, i32* %26, align 4
  br label %38

27:                                               ; preds = %14
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, -32768
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32*, i32** %7, align 8
  store i32 -32768, i32* %32, align 4
  br label %37

33:                                               ; preds = %27
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %31
  br label %38

38:                                               ; preds = %37, %25
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %5, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %7, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @soundvolume, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i32, i32* @soundmaxvolume, align 4
  %48 = sdiv i32 %46, %47
  %49 = load i32*, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %51, 32767
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = load i32*, i32** %7, align 8
  store i32 32767, i32* %54, align 4
  br label %66

55:                                               ; preds = %38
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, -32768
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32*, i32** %7, align 8
  store i32 -32768, i32* %60, align 4
  br label %65

61:                                               ; preds = %55
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %59
  br label %66

66:                                               ; preds = %65, %53
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %6, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %7, align 8
  br label %71

71:                                               ; preds = %66
  %72 = load i64, i64* %9, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %9, align 8
  br label %10

74:                                               ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
