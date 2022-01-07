; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_huffman.c_huffman_decode_one.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_huffman.c_huffman_decode_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.huffman_decoder = type { i32*, i32 }
%struct.bitstream = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @huffman_decode_one(%struct.huffman_decoder* %0, %struct.bitstream* %1) #0 {
  %3 = alloca %struct.huffman_decoder*, align 8
  %4 = alloca %struct.bitstream*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.huffman_decoder* %0, %struct.huffman_decoder** %3, align 8
  store %struct.bitstream* %1, %struct.bitstream** %4, align 8
  %7 = load %struct.bitstream*, %struct.bitstream** %4, align 8
  %8 = load %struct.huffman_decoder*, %struct.huffman_decoder** %3, align 8
  %9 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @bitstream_peek(%struct.bitstream* %7, i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load %struct.huffman_decoder*, %struct.huffman_decoder** %3, align 8
  %13 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.bitstream*, %struct.bitstream** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 31
  %21 = call i32 @bitstream_remove(%struct.bitstream* %18, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 5
  %24 = sext i32 %23 to i64
  ret i64 %24
}

declare dso_local i64 @bitstream_peek(%struct.bitstream*, i32) #1

declare dso_local i32 @bitstream_remove(%struct.bitstream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
