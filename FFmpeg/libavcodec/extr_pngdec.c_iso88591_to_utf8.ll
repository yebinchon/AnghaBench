; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngdec.c_iso88591_to_utf8.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngdec.c_iso88591_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64)* @iso88591_to_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @iso88591_to_utf8(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %24, %2
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load i32*, i32** %4, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %18, 128
  %20 = zext i1 %19 to i32
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %6, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %14
  %25 = load i64, i64* %7, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %7, align 8
  br label %10

27:                                               ; preds = %10
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @SIZE_MAX, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @SIZE_MAX, align 8
  %34 = load i64, i64* %5, align 8
  %35 = sub i64 %33, %34
  %36 = sub i64 %35, 1
  %37 = icmp ugt i64 %32, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31, %27
  store i32* null, i32** %3, align 8
  br label %91

39:                                               ; preds = %31
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %40, %41
  %43 = add i64 %42, 1
  %44 = call i32* @av_malloc(i64 %43)
  store i32* %44, i32** %8, align 8
  store i32* %44, i32** %9, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  store i32* null, i32** %3, align 8
  br label %91

48:                                               ; preds = %39
  store i64 0, i64* %7, align 8
  br label %49

49:                                               ; preds = %84, %48
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %87

53:                                               ; preds = %49
  %54 = load i32*, i32** %4, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %57, 128
  br i1 %58, label %59, label %76

59:                                               ; preds = %53
  %60 = load i32*, i32** %4, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 6
  %65 = or i32 192, %64
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 63
  %73 = or i32 128, %72
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %9, align 8
  store i32 %73, i32* %74, align 4
  br label %83

76:                                               ; preds = %53
  %77 = load i32*, i32** %4, align 8
  %78 = load i64, i64* %7, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  br label %83

83:                                               ; preds = %76, %59
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %7, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %7, align 8
  br label %49

87:                                               ; preds = %49
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %9, align 8
  store i32 0, i32* %88, align 4
  %90 = load i32*, i32** %8, align 8
  store i32* %90, i32** %3, align 8
  br label %91

91:                                               ; preds = %87, %47, %38
  %92 = load i32*, i32** %3, align 8
  ret i32* %92
}

declare dso_local i32* @av_malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
