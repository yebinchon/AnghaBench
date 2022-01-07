; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavsdsp.c_loop_filter_c2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavsdsp.c_loop_filter_c2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P0 = common dso_local global i32 0, align 4
@Q0 = common dso_local global i32 0, align 4
@P1 = common dso_local global i32 0, align 4
@Q1 = common dso_local global i32 0, align 4
@P2 = common dso_local global i32 0, align 4
@Q2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @loop_filter_c2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loop_filter_c2(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @P0, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @Q0, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = sub nsw i32 %14, %15
  %17 = call i32 @abs(i32 %16) #2
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %96

20:                                               ; preds = %4
  %21 = load i32, i32* @P1, align 4
  %22 = load i32, i32* %9, align 4
  %23 = sub nsw i32 %21, %22
  %24 = call i32 @abs(i32 %23) #2
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %96

27:                                               ; preds = %20
  %28 = load i32, i32* @Q1, align 4
  %29 = load i32, i32* %10, align 4
  %30 = sub nsw i32 %28, %29
  %31 = call i32 @abs(i32 %30) #2
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %96

34:                                               ; preds = %27
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %35, %36
  %38 = add nsw i32 %37, 2
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %7, align 4
  %40 = ashr i32 %39, 2
  %41 = add nsw i32 %40, 2
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @P2, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %42, %43
  %45 = call i32 @abs(i32 %44) #2
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %34
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 %49, %50
  %52 = call i32 @abs(i32 %51) #2
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load i32, i32* @P1, align 4
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %58, %59
  %61 = ashr i32 %60, 2
  store i32 %61, i32* @P0, align 4
  br label %68

62:                                               ; preds = %48, %34
  %63 = load i32, i32* @P1, align 4
  %64 = mul nsw i32 2, %63
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %64, %65
  %67 = ashr i32 %66, 2
  store i32 %67, i32* @P0, align 4
  br label %68

68:                                               ; preds = %62, %55
  %69 = load i32, i32* @Q2, align 4
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 %69, %70
  %72 = call i32 @abs(i32 %71) #2
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %68
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %9, align 4
  %78 = sub nsw i32 %76, %77
  %79 = call i32 @abs(i32 %78) #2
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %75
  %83 = load i32, i32* @Q1, align 4
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %85, %86
  %88 = ashr i32 %87, 2
  store i32 %88, i32* @Q0, align 4
  br label %95

89:                                               ; preds = %75, %68
  %90 = load i32, i32* @Q1, align 4
  %91 = mul nsw i32 2, %90
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %91, %92
  %94 = ashr i32 %93, 2
  store i32 %94, i32* @Q0, align 4
  br label %95

95:                                               ; preds = %89, %82
  br label %96

96:                                               ; preds = %95, %27, %20, %4
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
