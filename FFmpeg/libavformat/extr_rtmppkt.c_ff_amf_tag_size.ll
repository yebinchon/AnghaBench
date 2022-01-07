; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmppkt.c_ff_amf_tag_size.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmppkt.c_ff_amf_tag_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_amf_tag_size(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp uge i32* %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %47

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = ptrtoint i32* %14 to i64
  %17 = ptrtoint i32* %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = call i32 @bytestream2_init(i32* %6, i32* %13, i32 %20)
  %22 = call i32 @amf_tag_skip(i32* %6)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %12
  %26 = call i64 @bytestream2_get_bytes_left(i32* %6)
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %12
  store i32 -1, i32* %3, align 4
  br label %47

29:                                               ; preds = %25
  %30 = call i32 @bytestream2_tell(i32* %6)
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = call i32 @bytestream2_tell(i32* %6)
  %34 = sext i32 %33 to i64
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = ptrtoint i32* %35 to i64
  %38 = ptrtoint i32* %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 4
  %41 = icmp sle i64 %34, %40
  br label %42

42:                                               ; preds = %32, %29
  %43 = phi i1 [ false, %29 ], [ %41, %32 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @av_assert0(i32 %44)
  %46 = call i32 @bytestream2_tell(i32* %6)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %28, %11
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i32 @amf_tag_skip(i32*) #1

declare dso_local i64 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @bytestream2_tell(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
