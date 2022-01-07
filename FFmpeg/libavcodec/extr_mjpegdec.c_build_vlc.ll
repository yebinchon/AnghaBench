; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpegdec.c_build_vlc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpegdec.c_build_vlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i32, i32)* @build_vlc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_vlc(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [256 x i32], align 16
  %14 = alloca [256 x i32], align 16
  %15 = alloca [256 x i32], align 16
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = bitcast [256 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 1024, i1 false)
  %18 = load i32, i32* %10, align 4
  %19 = icmp sle i32 %18, 256
  %20 = zext i1 %19 to i32
  %21 = call i32 @av_assert0(i32 %20)
  %22 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  %23 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 0
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @ff_mjpeg_build_huffman_codes(i32* %22, i32* %23, i32* %24, i32* %25)
  store i32 0, i32* %16, align 4
  br label %27

27:                                               ; preds = %38, %6
  %28 = load i32, i32* %16, align 4
  %29 = icmp slt i32 %28, 256
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %12, align 4
  %33 = mul nsw i32 16, %32
  %34 = add nsw i32 %31, %33
  %35 = load i32, i32* %16, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 %36
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %16, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %16, align 4
  br label %27

41:                                               ; preds = %27
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 0
  store i32 4096, i32* %45, align 16
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  %50 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 0
  %51 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 0
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @ff_init_vlc_sparse(i32* %47, i32 9, i32 %48, i32* %49, i32 1, i32 1, i32* %50, i32 2, i32 2, i32* %51, i32 2, i32 2, i32 %52)
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_assert0(i32) #2

declare dso_local i32 @ff_mjpeg_build_huffman_codes(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @ff_init_vlc_sparse(i32*, i32, i32, i32*, i32, i32, i32*, i32, i32, i32*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
