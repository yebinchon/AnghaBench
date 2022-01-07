; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_magicyuvenc.c_encode_table.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_magicyuvenc.c_encode_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, %struct.TYPE_9__*)* @encode_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_table(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, %struct.TYPE_9__* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca [256 x %struct.TYPE_8__], align 16
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %12, align 8
  %15 = bitcast [256 x %struct.TYPE_8__]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 3072, i1 false)
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = getelementptr inbounds [256 x %struct.TYPE_8__], [256 x %struct.TYPE_8__]* %13, i64 0, i64 0
  %20 = call i32 @count_usage(i32* %16, i32 %17, i32 %18, %struct.TYPE_8__* %19)
  store i32 0, i32* %14, align 4
  br label %21

21:                                               ; preds = %37, %6
  %22 = load i32, i32* %14, align 4
  %23 = icmp slt i32 %22, 256
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [256 x %struct.TYPE_8__], [256 x %struct.TYPE_8__]* %13, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %14, align 4
  %32 = sub nsw i32 255, %31
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [256 x %struct.TYPE_8__], [256 x %struct.TYPE_8__]* %13, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  br label %37

37:                                               ; preds = %24
  %38 = load i32, i32* %14, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %14, align 4
  br label %21

40:                                               ; preds = %21
  %41 = getelementptr inbounds [256 x %struct.TYPE_8__], [256 x %struct.TYPE_8__]* %13, i64 0, i64 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %43 = call i32 @magy_huffman_compute_bits(%struct.TYPE_8__* %41, %struct.TYPE_9__* %42, i32 256, i32 12)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %45 = call i32 @calculate_codes(%struct.TYPE_9__* %44)
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %60, %40
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %47, 256
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @put_bits(i32* %50, i32 1, i32 0)
  %52 = load i32*, i32** %11, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @put_bits(i32* %52, i32 7, i32 %58)
  br label %60

60:                                               ; preds = %49
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %14, align 4
  br label %46

63:                                               ; preds = %46
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @count_usage(i32*, i32, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @magy_huffman_compute_bits(%struct.TYPE_8__*, %struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @calculate_codes(%struct.TYPE_9__*) #2

declare dso_local i32 @put_bits(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
