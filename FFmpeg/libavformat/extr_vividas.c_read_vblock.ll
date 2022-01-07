; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_vividas.c_read_vblock.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_vividas.c_read_vblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32, i32*, i32)* @read_vblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_vblock(i32* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %17 = call i32 @avio_read(i32* %15, i32* %16, i32 4)
  %18 = icmp ne i32 %17, 4
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32* null, i32** %6, align 8
  br label %68

20:                                               ; preds = %5
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %23 = load i32, i32* %9, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @decode_block(i32* %21, i32* %22, i32 4, i32 %23, i32* %24, i32 %25)
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %28 = call i32 @get_v(i32* %27, i32 4)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ult i32 %29, 4
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  store i32* null, i32** %6, align 8
  br label %68

32:                                               ; preds = %20
  %33 = load i32, i32* %14, align 4
  %34 = call i32* @av_malloc(i32 %33)
  store i32* %34, i32** %13, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32* null, i32** %6, align 8
  br label %68

38:                                               ; preds = %32
  %39 = load i32, i32* %14, align 4
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %14, align 4
  %42 = sub i32 %41, 4
  store i32 %42, i32* %14, align 4
  %43 = load i32*, i32** %13, align 8
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %45 = call i32 @memcpy(i32* %43, i32* %44, i32 4)
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @avio_read(i32* %46, i32* %48, i32 %49)
  %51 = load i32, i32* %14, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %38
  %54 = load i32*, i32** %13, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  %56 = load i32*, i32** %13, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @decode_block(i32* %55, i32* %57, i32 %58, i32 %59, i32* %60, i32 %61)
  br label %66

63:                                               ; preds = %38
  %64 = load i32*, i32** %13, align 8
  %65 = call i32 @av_free(i32* %64)
  store i32* null, i32** %13, align 8
  br label %66

66:                                               ; preds = %63, %53
  %67 = load i32*, i32** %13, align 8
  store i32* %67, i32** %6, align 8
  br label %68

68:                                               ; preds = %66, %37, %31, %19
  %69 = load i32*, i32** %6, align 8
  ret i32* %69
}

declare dso_local i32 @avio_read(i32*, i32*, i32) #1

declare dso_local i32 @decode_block(i32*, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @get_v(i32*, i32) #1

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
