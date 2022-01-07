; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_end_ebml_master_crc32.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_end_ebml_master_crc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@AV_CRC_32_IEEE_LE = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@EBML_ID_CRC32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32**, %struct.TYPE_3__*)* @end_ebml_master_crc32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_ebml_master_crc32(i32* %0, i32** %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32**, i32*** %5, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @avio_close_dyn_buf(i32* %12, i32** %7)
  store i32 %13, i32* %9, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @put_ebml_num(i32* %14, i32 %15, i32 0)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %3
  store i32 6, i32* %10, align 4
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %23 = load i32, i32* @AV_CRC_32_IEEE_LE, align 4
  %24 = call i32 @av_crc_get_table(i32 %23)
  %25 = load i32, i32* @UINT32_MAX, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = sub nsw i32 %30, %31
  %33 = call i32 @av_crc(i32 %24, i32 %25, i32* %29, i32 %32)
  %34 = load i32, i32* @UINT32_MAX, align 4
  %35 = xor i32 %33, %34
  %36 = call i32 @AV_WL32(i32* %22, i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @EBML_ID_CRC32, align 4
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %40 = call i32 @put_ebml_binary(i32* %37, i32 %38, i32* %39, i32 16)
  br label %41

41:                                               ; preds = %21, %3
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = sub nsw i32 %47, %48
  %50 = call i32 @avio_write(i32* %42, i32* %46, i32 %49)
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @av_free(i32* %51)
  %53 = load i32**, i32*** %5, align 8
  store i32* null, i32** %53, align 8
  ret void
}

declare dso_local i32 @avio_close_dyn_buf(i32*, i32**) #1

declare dso_local i32 @put_ebml_num(i32*, i32, i32) #1

declare dso_local i32 @AV_WL32(i32*, i32) #1

declare dso_local i32 @av_crc(i32, i32, i32*, i32) #1

declare dso_local i32 @av_crc_get_table(i32) #1

declare dso_local i32 @put_ebml_binary(i32*, i32, i32*, i32) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
