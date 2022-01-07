; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/alpha/extr_blockdsp_alpha.c_clear_blocks_axp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/alpha/extr_blockdsp_alpha.c_clear_blocks_axp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @clear_blocks_axp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_blocks_axp(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = bitcast i32* %5 to i64*
  store i64* %6, i64** %3, align 8
  store i32 1536, i32* %4, align 4
  br label %7

7:                                                ; preds = %28, %1
  %8 = load i64*, i64** %3, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  store i64 0, i64* %9, align 8
  %10 = load i64*, i64** %3, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 1
  store i64 0, i64* %11, align 8
  %12 = load i64*, i64** %3, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 2
  store i64 0, i64* %13, align 8
  %14 = load i64*, i64** %3, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 3
  store i64 0, i64* %15, align 8
  %16 = load i64*, i64** %3, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 4
  store i64 0, i64* %17, align 8
  %18 = load i64*, i64** %3, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 5
  store i64 0, i64* %19, align 8
  %20 = load i64*, i64** %3, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 6
  store i64 0, i64* %21, align 8
  %22 = load i64*, i64** %3, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 7
  store i64 0, i64* %23, align 8
  %24 = load i64*, i64** %3, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 8
  store i64* %25, i64** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 %26, 64
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %7
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %7, label %31

31:                                               ; preds = %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
