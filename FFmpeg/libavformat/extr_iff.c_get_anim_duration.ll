; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_iff.c_get_anim_duration.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_iff.c_get_anim_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ID_ANHD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @get_anim_duration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_anim_duration(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @bytestream2_init(i32* %6, i32* %9, i32 %10)
  %12 = call i32 @bytestream2_skip(i32* %6, i32 4)
  br label %13

13:                                               ; preds = %35, %2
  %14 = call i32 @bytestream2_get_bytes_left(i32* %6)
  %15 = icmp sgt i32 %14, 8
  br i1 %15, label %16, label %36

16:                                               ; preds = %13
  %17 = call i32 @bytestream2_get_le32(i32* %6)
  store i32 %17, i32* %7, align 4
  %18 = call i32 @bytestream2_get_be32(i32* %6)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @ID_ANHD, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  %24 = icmp ult i32 %23, 40
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %36

26:                                               ; preds = %22
  %27 = call i32 @bytestream2_skip(i32* %6, i32 14)
  %28 = call i32 @bytestream2_get_be32(i32* %6)
  store i32 %28, i32* %3, align 4
  br label %37

29:                                               ; preds = %16
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = add i32 %30, %31
  %33 = and i32 %32, 1
  %34 = call i32 @bytestream2_skip(i32* %6, i32 %33)
  br label %35

35:                                               ; preds = %29
  br label %13

36:                                               ; preds = %25, %13
  store i32 10, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %26
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @bytestream2_get_be32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
