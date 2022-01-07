; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutenc.c_put_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutenc.c_put_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_crc04C11DB7_update = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32)* @put_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_packet(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @avio_close_dyn_buf(i32* %14, i32** %11)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* %9, align 4
  %18 = mul nsw i32 4, %17
  %19 = add nsw i32 %16, %18
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp sgt i32 %20, 4096
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* @ff_crc04C11DB7_update, align 4
  %25 = call i32 @ffio_init_checksum(i32* %23, i32 %24, i32 0)
  br label %26

26:                                               ; preds = %22, %5
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @avio_wb64(i32* %27, i32 %28)
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @ff_put_v(i32* %30, i32 %31)
  %33 = load i32, i32* %13, align 4
  %34 = icmp sgt i32 %33, 4096
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @ffio_get_checksum(i32* %37)
  %39 = call i32 @avio_wl32(i32* %36, i32 %38)
  br label %40

40:                                               ; preds = %35, %26
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* @ff_crc04C11DB7_update, align 4
  %46 = call i32 @ffio_init_checksum(i32* %44, i32 %45, i32 0)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32*, i32** %7, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @avio_write(i32* %48, i32* %49, i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load i32*, i32** %7, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @ffio_get_checksum(i32* %56)
  %58 = call i32 @avio_wl32(i32* %55, i32 %57)
  br label %59

59:                                               ; preds = %54, %47
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @av_free(i32* %60)
  ret void
}

declare dso_local i32 @avio_close_dyn_buf(i32*, i32**) #1

declare dso_local i32 @ffio_init_checksum(i32*, i32, i32) #1

declare dso_local i32 @avio_wb64(i32*, i32) #1

declare dso_local i32 @ff_put_v(i32*, i32) #1

declare dso_local i32 @avio_wl32(i32*, i32) #1

declare dso_local i32 @ffio_get_checksum(i32*) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
