; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvenc.c_dv_write_ssyb_id.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvenc.c_dv_write_ssyb_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @dv_write_ssyb_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dv_write_ssyb_id(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 6
  br i1 %11, label %12, label %18

12:                                               ; preds = %9, %3
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 %13, 7
  %15 = or i32 %14, 15
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %15, i32* %17, align 4
  br label %34

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 11
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 %22, 7
  %24 = or i32 %23, 127
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %24, i32* %26, align 4
  br label %33

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4
  %29 = shl i32 %28, 7
  %30 = or i32 %29, 15
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %27, %21
  br label %34

34:                                               ; preds = %33, %12
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, 15
  %37 = or i32 240, %36
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 %37, i32* %39, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  store i32 255, i32* %41, align 4
  ret i32 3
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
