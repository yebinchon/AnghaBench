; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_removegrain.c_mode18.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_removegrain.c_mode18.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)* @mode18 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mode18(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = sub nsw i32 %25, %26
  %28 = call i32 @FFABS(i32 %27)
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %19, align 4
  %31 = sub nsw i32 %29, %30
  %32 = call i32 @FFABS(i32 %31)
  %33 = call i32 @FFMAX(i32 %28, i32 %32)
  store i32 %33, i32* %20, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %13, align 4
  %36 = sub nsw i32 %34, %35
  %37 = call i32 @FFABS(i32 %36)
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %18, align 4
  %40 = sub nsw i32 %38, %39
  %41 = call i32 @FFABS(i32 %40)
  %42 = call i32 @FFMAX(i32 %37, i32 %41)
  store i32 %42, i32* %21, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %14, align 4
  %45 = sub nsw i32 %43, %44
  %46 = call i32 @FFABS(i32 %45)
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %17, align 4
  %49 = sub nsw i32 %47, %48
  %50 = call i32 @FFABS(i32 %49)
  %51 = call i32 @FFMAX(i32 %46, i32 %50)
  store i32 %51, i32* %22, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %15, align 4
  %54 = sub nsw i32 %52, %53
  %55 = call i32 @FFABS(i32 %54)
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %16, align 4
  %58 = sub nsw i32 %56, %57
  %59 = call i32 @FFABS(i32 %58)
  %60 = call i32 @FFMAX(i32 %55, i32 %59)
  store i32 %60, i32* %23, align 4
  %61 = load i32, i32* %20, align 4
  %62 = load i32, i32* %21, align 4
  %63 = call i32 @FFMIN(i32 %61, i32 %62)
  %64 = load i32, i32* %22, align 4
  %65 = load i32, i32* %23, align 4
  %66 = call i32 @FFMIN(i32 %64, i32 %65)
  %67 = call i32 @FFMIN(i32 %63, i32 %66)
  store i32 %67, i32* %24, align 4
  %68 = load i32, i32* %24, align 4
  %69 = load i32, i32* %23, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %9
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @FFMIN(i32 %73, i32 %74)
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %16, align 4
  %78 = call i32 @FFMAX(i32 %76, i32 %77)
  %79 = call i32 @av_clip(i32 %72, i32 %75, i32 %78)
  store i32 %79, i32* %10, align 4
  br label %115

80:                                               ; preds = %9
  %81 = load i32, i32* %24, align 4
  %82 = load i32, i32* %21, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %18, align 4
  %88 = call i32 @FFMIN(i32 %86, i32 %87)
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %18, align 4
  %91 = call i32 @FFMAX(i32 %89, i32 %90)
  %92 = call i32 @av_clip(i32 %85, i32 %88, i32 %91)
  store i32 %92, i32* %10, align 4
  br label %115

93:                                               ; preds = %80
  %94 = load i32, i32* %24, align 4
  %95 = load i32, i32* %22, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %17, align 4
  %101 = call i32 @FFMIN(i32 %99, i32 %100)
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %17, align 4
  %104 = call i32 @FFMAX(i32 %102, i32 %103)
  %105 = call i32 @av_clip(i32 %98, i32 %101, i32 %104)
  store i32 %105, i32* %10, align 4
  br label %115

106:                                              ; preds = %93
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %19, align 4
  %110 = call i32 @FFMIN(i32 %108, i32 %109)
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %19, align 4
  %113 = call i32 @FFMAX(i32 %111, i32 %112)
  %114 = call i32 @av_clip(i32 %107, i32 %110, i32 %113)
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %106, %97, %84, %71
  %116 = load i32, i32* %10, align 4
  ret i32 %116
}

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
