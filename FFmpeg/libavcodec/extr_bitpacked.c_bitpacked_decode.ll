; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bitpacked.c_bitpacked_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bitpacked.c_bitpacked_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.BitpackedContext* }
%struct.BitpackedContext = type { i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*)* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32*, %struct.TYPE_9__*)* @bitpacked_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitpacked_decode(%struct.TYPE_11__* %0, i8* %1, i32* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.BitpackedContext*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.BitpackedContext*, %struct.BitpackedContext** %15, align 8
  store %struct.BitpackedContext* %16, %struct.BitpackedContext** %10, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %12, align 8
  %22 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.BitpackedContext*, %struct.BitpackedContext** %10, align 8
  %28 = getelementptr inbounds %struct.BitpackedContext, %struct.BitpackedContext* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*)*, i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*)** %28, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %33 = call i32 %29(%struct.TYPE_11__* %30, %struct.TYPE_10__* %31, %struct.TYPE_9__* %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %5, align 4
  br label %41

38:                                               ; preds = %4
  %39 = load i32*, i32** %8, align 8
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %36
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
