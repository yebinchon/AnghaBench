; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_qcelp.c_qcelp_parse_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_qcelp.c_qcelp_parse_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32)* @qcelp_parse_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcelp_parse_packet(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %20 = load i32*, i32** %16, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %9
  %23 = load i32*, i32** %11, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = load i32*, i32** %15, align 8
  %28 = load i32*, i32** %16, align 8
  %29 = load i32, i32* %17, align 4
  %30 = call i32 @store_packet(i32* %23, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  br label %40

31:                                               ; preds = %9
  %32 = load i32*, i32** %11, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = load i32*, i32** %15, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = load i32, i32* %17, align 4
  %39 = call i32 @return_stored_frame(i32* %32, i32* %33, i32* %34, i32* %35, i32* %36, i32* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %31, %22
  %41 = load i32, i32* %10, align 4
  ret i32 %41
}

declare dso_local i32 @store_packet(i32*, i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @return_stored_frame(i32*, i32*, i32*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
