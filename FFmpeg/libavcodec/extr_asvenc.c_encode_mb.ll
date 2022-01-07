; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_asvenc.c_encode_mb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_asvenc.c_encode_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32 }

@MAX_MB_SIZE = common dso_local global i32 0, align 4
@AV_CODEC_ID_ASV1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, [64 x i32]*)* @encode_mb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_mb(%struct.TYPE_8__* %0, [64 x i32]* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca [64 x i32]*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store [64 x i32]* %1, [64 x i32]** %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %9, %13
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = call i32 @put_bits_count(%struct.TYPE_9__* %16)
  %18 = ashr i32 %17, 3
  %19 = sub nsw i32 %14, %18
  %20 = load i32, i32* @MAX_MB_SIZE, align 4
  %21 = icmp sge i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @av_assert0(i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AV_CODEC_ID_ASV1, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %43, %31
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 6
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = load [64 x i32]*, [64 x i32]** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [64 x i32], [64 x i32]* %37, i64 %39
  %41 = getelementptr inbounds [64 x i32], [64 x i32]* %40, i64 0, i64 0
  %42 = call i32 @asv1_encode_block(%struct.TYPE_8__* %36, i32* %41)
  br label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %32

46:                                               ; preds = %32
  br label %63

47:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %59, %47
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 6
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = load [64 x i32]*, [64 x i32]** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [64 x i32], [64 x i32]* %53, i64 %55
  %57 = getelementptr inbounds [64 x i32], [64 x i32]* %56, i64 0, i64 0
  %58 = call i32 @asv2_encode_block(%struct.TYPE_8__* %52, i32* %57)
  br label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %48

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %62, %46
  ret i32 0
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @put_bits_count(%struct.TYPE_9__*) #1

declare dso_local i32 @asv1_encode_block(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @asv2_encode_block(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
