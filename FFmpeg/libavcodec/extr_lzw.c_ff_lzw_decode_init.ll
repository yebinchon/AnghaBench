; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lzw.c_ff_lzw_decode_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lzw.c_ff_lzw_decode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LZWState = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32 }

@LZW_MAXBITS = common dso_local global i32 0, align 4
@mask = common dso_local global i32* null, align 8
@FF_LZW_TIFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_lzw_decode_init(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.LZWState*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = bitcast i32* %13 to %struct.LZWState*
  store %struct.LZWState* %14, %struct.LZWState** %12, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %21, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @LZW_MAXBITS, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %5
  store i32 -1, i32* %6, align 4
  br label %98

22:                                               ; preds = %17
  %23 = load %struct.LZWState*, %struct.LZWState** %12, align 8
  %24 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %23, i32 0, i32 17
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @bytestream2_init(i32* %24, i32* %25, i32 %26)
  %28 = load %struct.LZWState*, %struct.LZWState** %12, align 8
  %29 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %28, i32 0, i32 16
  store i64 0, i64* %29, align 8
  %30 = load %struct.LZWState*, %struct.LZWState** %12, align 8
  %31 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %30, i32 0, i32 15
  store i64 0, i64* %31, align 8
  %32 = load %struct.LZWState*, %struct.LZWState** %12, align 8
  %33 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %32, i32 0, i32 14
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.LZWState*, %struct.LZWState** %12, align 8
  %36 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.LZWState*, %struct.LZWState** %12, align 8
  %38 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  %41 = load %struct.LZWState*, %struct.LZWState** %12, align 8
  %42 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32*, i32** @mask, align 8
  %44 = load %struct.LZWState*, %struct.LZWState** %12, align 8
  %45 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.LZWState*, %struct.LZWState** %12, align 8
  %51 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %50, i32 0, i32 13
  store i32 %49, i32* %51, align 4
  %52 = load %struct.LZWState*, %struct.LZWState** %12, align 8
  %53 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 1, %54
  %56 = load %struct.LZWState*, %struct.LZWState** %12, align 8
  %57 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.LZWState*, %struct.LZWState** %12, align 8
  %59 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = shl i32 1, %60
  %62 = load %struct.LZWState*, %struct.LZWState** %12, align 8
  %63 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.LZWState*, %struct.LZWState** %12, align 8
  %65 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  %68 = load %struct.LZWState*, %struct.LZWState** %12, align 8
  %69 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.LZWState*, %struct.LZWState** %12, align 8
  %71 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 2
  %74 = load %struct.LZWState*, %struct.LZWState** %12, align 8
  %75 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 8
  %76 = load %struct.LZWState*, %struct.LZWState** %12, align 8
  %77 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %76, i32 0, i32 5
  store i32 %73, i32* %77, align 4
  %78 = load %struct.LZWState*, %struct.LZWState** %12, align 8
  %79 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %78, i32 0, i32 8
  store i32 -1, i32* %79, align 8
  %80 = load %struct.LZWState*, %struct.LZWState** %12, align 8
  %81 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %80, i32 0, i32 7
  store i32 -1, i32* %81, align 4
  %82 = load %struct.LZWState*, %struct.LZWState** %12, align 8
  %83 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %82, i32 0, i32 11
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.LZWState*, %struct.LZWState** %12, align 8
  %86 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %85, i32 0, i32 12
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.LZWState*, %struct.LZWState** %12, align 8
  %89 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %88, i32 0, i32 9
  store i32 %87, i32* %89, align 4
  %90 = load %struct.LZWState*, %struct.LZWState** %12, align 8
  %91 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %90, i32 0, i32 9
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @FF_LZW_TIFF, align 4
  %94 = icmp eq i32 %92, %93
  %95 = zext i1 %94 to i32
  %96 = load %struct.LZWState*, %struct.LZWState** %12, align 8
  %97 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %96, i32 0, i32 10
  store i32 %95, i32* %97, align 8
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %22, %21
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
