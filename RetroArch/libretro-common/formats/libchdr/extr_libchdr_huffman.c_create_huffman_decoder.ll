; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_huffman.c_create_huffman_decoder.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_huffman.c_create_huffman_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.huffman_decoder = type { i32, i32, i64, i64, i32*, %struct.node_t*, i32* }
%struct.node_t = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.huffman_decoder* @create_huffman_decoder(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.huffman_decoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.huffman_decoder*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sgt i32 %7, 24
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.huffman_decoder* null, %struct.huffman_decoder** %3, align 8
  br label %43

10:                                               ; preds = %2
  %11 = call i64 @malloc(i32 48)
  %12 = inttoptr i64 %11 to %struct.huffman_decoder*
  store %struct.huffman_decoder* %12, %struct.huffman_decoder** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.huffman_decoder*, %struct.huffman_decoder** %6, align 8
  %15 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.huffman_decoder*, %struct.huffman_decoder** %6, align 8
  %18 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 1, %19
  %21 = sext i32 %20 to i64
  %22 = mul i64 4, %21
  %23 = trunc i64 %22 to i32
  %24 = call i64 @malloc(i32 %23)
  %25 = inttoptr i64 %24 to i32*
  %26 = load %struct.huffman_decoder*, %struct.huffman_decoder** %6, align 8
  %27 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %26, i32 0, i32 6
  store i32* %25, i32** %27, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 4, %29
  %31 = trunc i64 %30 to i32
  %32 = call i64 @malloc(i32 %31)
  %33 = inttoptr i64 %32 to %struct.node_t*
  %34 = load %struct.huffman_decoder*, %struct.huffman_decoder** %6, align 8
  %35 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %34, i32 0, i32 5
  store %struct.node_t* %33, %struct.node_t** %35, align 8
  %36 = load %struct.huffman_decoder*, %struct.huffman_decoder** %6, align 8
  %37 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %36, i32 0, i32 4
  store i32* null, i32** %37, align 8
  %38 = load %struct.huffman_decoder*, %struct.huffman_decoder** %6, align 8
  %39 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.huffman_decoder*, %struct.huffman_decoder** %6, align 8
  %41 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.huffman_decoder*, %struct.huffman_decoder** %6, align 8
  store %struct.huffman_decoder* %42, %struct.huffman_decoder** %3, align 8
  br label %43

43:                                               ; preds = %10, %9
  %44 = load %struct.huffman_decoder*, %struct.huffman_decoder** %3, align 8
  ret %struct.huffman_decoder* %44
}

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
