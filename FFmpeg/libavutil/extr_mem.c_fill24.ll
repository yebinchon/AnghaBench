; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_mem.c_fill24.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_mem.c_fill24.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @fill24 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill24(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 -3
  %11 = call i32 @AV_RL24(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 %13, 24
  %15 = or i32 %12, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 8
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 %18, 16
  %20 = or i32 %17, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = ashr i32 %21, 16
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 %23, 8
  %25 = or i32 %22, %24
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %29, %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp sge i32 %27, 12
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @AV_WN32(i32* %30, i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @AV_WN32(i32* %34, i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @AV_WN32(i32* %38, i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 12
  store i32* %42, i32** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 %43, 12
  store i32 %44, i32* %4, align 4
  br label %26

45:                                               ; preds = %26
  %46 = load i32, i32* %4, align 4
  %47 = icmp sge i32 %46, 4
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @AV_WN32(i32* %49, i32 %50)
  %52 = load i32*, i32** %3, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  store i32* %53, i32** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sub nsw i32 %54, 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %48, %45
  %57 = load i32, i32* %4, align 4
  %58 = icmp sge i32 %57, 4
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @AV_WN32(i32* %60, i32 %61)
  %63 = load i32*, i32** %3, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  store i32* %64, i32** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sub nsw i32 %65, 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %59, %56
  br label %68

68:                                               ; preds = %72, %67
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %4, align 4
  %71 = icmp ne i32 %69, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load i32*, i32** %3, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 -3
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %3, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32*, i32** %3, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %3, align 8
  br label %68

79:                                               ; preds = %68
  ret void
}

declare dso_local i32 @AV_RL24(i32*) #1

declare dso_local i32 @AV_WN32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
