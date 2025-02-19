; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_ebml_read_sint.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_ebml_read_sint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NEEDS_CHECKING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @ebml_read_sint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebml_read_sint(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 1, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32*, i32** %6, align 8
  store i32 0, i32* %11, align 4
  br label %31

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @avio_r8(i32* %13)
  %15 = call i32 @sign_extend(i32 %14, i32 8)
  %16 = load i32*, i32** %6, align 8
  store i32 %15, i32* %16, align 4
  br label %17

17:                                               ; preds = %22, %12
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @avio_r8(i32* %26)
  %28 = or i32 %25, %27
  %29 = load i32*, i32** %6, align 8
  store i32 %28, i32* %29, align 4
  br label %17

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30, %10
  %32 = load i32, i32* @NEEDS_CHECKING, align 4
  ret i32 %32
}

declare dso_local i32 @sign_extend(i32, i32) #1

declare dso_local i32 @avio_r8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
