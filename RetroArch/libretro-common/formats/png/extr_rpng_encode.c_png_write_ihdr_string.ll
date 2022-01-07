; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/png/extr_rpng_encode.c_png_write_ihdr_string.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/png/extr_rpng_encode.c_png_write_ihdr_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.png_ihdr = type { i8, i8, i8, i8, i8, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.png_ihdr*)* @png_write_ihdr_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @png_write_ihdr_string(i32* %0, %struct.png_ihdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.png_ihdr*, align 8
  %6 = alloca [21 x i8], align 16
  store i32* %0, i32** %4, align 8
  store %struct.png_ihdr* %1, %struct.png_ihdr** %5, align 8
  %7 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 0
  store i8 48, i8* %7, align 16
  %8 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 1
  store i8 48, i8* %8, align 1
  %9 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 2
  store i8 48, i8* %9, align 2
  %10 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 3
  store i8 48, i8* %10, align 1
  %11 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 4
  store i8 73, i8* %11, align 4
  %12 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 5
  store i8 72, i8* %12, align 1
  %13 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 6
  store i8 68, i8* %13, align 2
  %14 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 7
  store i8 82, i8* %14, align 1
  %15 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 8
  store i8 0, i8* %15, align 8
  %16 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 9
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 10
  store i8 0, i8* %17, align 2
  %18 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 11
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 12
  store i8 0, i8* %19, align 4
  %20 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 14
  store i8 0, i8* %21, align 2
  %22 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 15
  store i8 0, i8* %22, align 1
  %23 = load %struct.png_ihdr*, %struct.png_ihdr** %5, align 8
  %24 = getelementptr inbounds %struct.png_ihdr, %struct.png_ihdr* %23, i32 0, i32 0
  %25 = load i8, i8* %24, align 4
  %26 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 16
  store i8 %25, i8* %26, align 16
  %27 = load %struct.png_ihdr*, %struct.png_ihdr** %5, align 8
  %28 = getelementptr inbounds %struct.png_ihdr, %struct.png_ihdr* %27, i32 0, i32 1
  %29 = load i8, i8* %28, align 1
  %30 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 17
  store i8 %29, i8* %30, align 1
  %31 = load %struct.png_ihdr*, %struct.png_ihdr** %5, align 8
  %32 = getelementptr inbounds %struct.png_ihdr, %struct.png_ihdr* %31, i32 0, i32 2
  %33 = load i8, i8* %32, align 2
  %34 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 18
  store i8 %33, i8* %34, align 2
  %35 = load %struct.png_ihdr*, %struct.png_ihdr** %5, align 8
  %36 = getelementptr inbounds %struct.png_ihdr, %struct.png_ihdr* %35, i32 0, i32 3
  %37 = load i8, i8* %36, align 1
  %38 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 19
  store i8 %37, i8* %38, align 1
  %39 = load %struct.png_ihdr*, %struct.png_ihdr** %5, align 8
  %40 = getelementptr inbounds %struct.png_ihdr, %struct.png_ihdr* %39, i32 0, i32 4
  %41 = load i8, i8* %40, align 4
  %42 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 20
  store i8 %41, i8* %42, align 4
  %43 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 0
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = call i32 @dword_write_be(i8* %44, i32 13)
  %46 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 0
  %47 = getelementptr inbounds i8, i8* %46, i64 8
  %48 = load %struct.png_ihdr*, %struct.png_ihdr** %5, align 8
  %49 = getelementptr inbounds %struct.png_ihdr, %struct.png_ihdr* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dword_write_be(i8* %47, i32 %50)
  %52 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 0
  %53 = getelementptr inbounds i8, i8* %52, i64 12
  %54 = load %struct.png_ihdr*, %struct.png_ihdr** %5, align 8
  %55 = getelementptr inbounds %struct.png_ihdr, %struct.png_ihdr* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dword_write_be(i8* %53, i32 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 0
  %60 = call i32 @intfstream_write(i32* %58, i8* %59, i32 21)
  %61 = sext i32 %60 to i64
  %62 = icmp ne i64 %61, 21
  br i1 %62, label %63, label %64

63:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

64:                                               ; preds = %2
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 0
  %67 = getelementptr inbounds i8, i8* %66, i64 4
  %68 = call i32 @png_write_crc_string(i32* %65, i8* %67, i32 17)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %64, %63
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @dword_write_be(i8*, i32) #1

declare dso_local i32 @intfstream_write(i32*, i8*, i32) #1

declare dso_local i32 @png_write_crc_string(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
