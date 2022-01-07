; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lzw.c_ff_lzw_decode_tail.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lzw.c_ff_lzw_decode_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LZWState = type { i64, i64, i32 }

@FF_LZW_GIF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_lzw_decode_tail(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.LZWState*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = bitcast i32* %4 to %struct.LZWState*
  store %struct.LZWState* %5, %struct.LZWState** %3, align 8
  %6 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %7 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @FF_LZW_GIF, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %24, %11
  %13 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %14 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %19 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %18, i32 0, i32 2
  %20 = call i64 @bytestream2_get_bytes_left(i32* %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi i1 [ false, %12 ], [ %21, %17 ]
  br i1 %23, label %24, label %36

24:                                               ; preds = %22
  %25 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %26 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %25, i32 0, i32 2
  %27 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %28 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @bytestream2_skip(i32* %26, i64 %29)
  %31 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %32 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %31, i32 0, i32 2
  %33 = call i64 @bytestream2_get_byte(i32* %32)
  %34 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %35 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  br label %12

36:                                               ; preds = %22
  br label %44

37:                                               ; preds = %1
  %38 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %39 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %38, i32 0, i32 2
  %40 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %41 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %40, i32 0, i32 2
  %42 = call i64 @bytestream2_get_bytes_left(i32* %41)
  %43 = call i32 @bytestream2_skip(i32* %39, i64 %42)
  br label %44

44:                                               ; preds = %37, %36
  %45 = load %struct.LZWState*, %struct.LZWState** %3, align 8
  %46 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %45, i32 0, i32 2
  %47 = call i32 @bytestream2_tell(i32* %46)
  ret i32 %47
}

declare dso_local i64 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i64) #1

declare dso_local i64 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_tell(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
