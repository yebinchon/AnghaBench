; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_interplayacm.c_juggle.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_interplayacm.c_juggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @juggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @juggle(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %74, %4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %77

20:                                               ; preds = %16
  %21 = load i32*, i32** %6, align 8
  store i32* %21, i32** %11, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %62, %20
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %8, align 4
  %31 = udiv i32 %30, 2
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %28
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %13, align 4
  %37 = mul i32 %36, 2
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %14, align 4
  %40 = add i32 %38, %39
  %41 = add i32 %37, %40
  %42 = load i32*, i32** %11, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = zext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %11, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %14, align 4
  %50 = mul i32 %49, 2
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %15, align 4
  %53 = add i32 %51, %52
  %54 = sub i32 %50, %53
  %55 = load i32*, i32** %11, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = zext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32* %59, i32** %11, align 8
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %15, align 4
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %33
  %63 = load i32, i32* %10, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %28

65:                                               ; preds = %28
  %66 = load i32, i32* %12, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %5, align 8
  store i32 %66, i32* %67, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %6, align 8
  br label %74

74:                                               ; preds = %65
  %75 = load i32, i32* %9, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %16

77:                                               ; preds = %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
