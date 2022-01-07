; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_gxf.c_parse_packet_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_gxf.c_parse_packet_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @parse_packet_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_packet_header(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @avio_rb32(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %52

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @avio_r8(i32* %13)
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %52

17:                                               ; preds = %12
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @avio_r8(i32* %18)
  %20 = load i32*, i32** %6, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @avio_rb32(i32* %21)
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 24
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %17
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 16
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %17
  store i32 0, i32* %4, align 4
  br label %52

33:                                               ; preds = %28
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 16
  store i32 %36, i32* %34, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @avio_rb32(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %52

41:                                               ; preds = %33
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @avio_r8(i32* %42)
  %44 = icmp ne i32 %43, 225
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %52

46:                                               ; preds = %41
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @avio_r8(i32* %47)
  %49 = icmp ne i32 %48, 226
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %52

51:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %50, %45, %40, %32, %16, %11
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @avio_rb32(i32*) #1

declare dso_local i32 @avio_r8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
