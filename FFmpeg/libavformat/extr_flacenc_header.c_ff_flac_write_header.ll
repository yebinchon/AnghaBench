; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_flacenc_header.c_ff_flac_write_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_flacenc_header.c_ff_flac_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.ff_flac_write_header.header = private unnamed_addr constant [8 x i32] [i32 102, i32 76, i32 97, i32 67, i32 0, i32 0, i32 0, i32 34], align 16
@FLAC_STREAMINFO_SIZE = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_flac_write_header(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8 x i32], align 16
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = bitcast [8 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([8 x i32]* @__const.ff_flac_write_header.header to i8*), i64 32, i1 false)
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 128, i32 0
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 4
  store i32 %15, i32* %16, align 16
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @FLAC_STREAMINFO_SIZE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %21, i32* %5, align 4
  br label %30

22:                                               ; preds = %4
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %25 = call i32 @avio_write(i32* %23, i32* %24, i32 8)
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* @FLAC_STREAMINFO_SIZE, align 4
  %29 = call i32 @avio_write(i32* %26, i32* %27, i32 %28)
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %22, %20
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
