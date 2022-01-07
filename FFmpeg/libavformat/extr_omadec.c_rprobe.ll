; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_omadec.c_rprobe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_omadec.c_rprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32*, i32* }
%struct.AVDES = type { i32 }

@OMA_ENC_HEADER_SIZE = common dso_local global i32 0, align 4
@OMA_RPROBE_M_VAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32, i32*)* @rprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rprobe(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.AVDES*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %10, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %4
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @OMA_ENC_HEADER_SIZE, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add i32 %23, %26
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add i32 %27, %30
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = add i32 %31, %34
  %36 = icmp ult i32 %22, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %21
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @OMA_RPROBE_M_VAL, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %21, %18, %4
  store i32 -1, i32* %5, align 4
  br label %115

42:                                               ; preds = %37
  %43 = call %struct.AVDES* (...) @av_des_alloc()
  store %struct.AVDES* %43, %struct.AVDES** %12, align 8
  %44 = load %struct.AVDES*, %struct.AVDES** %12, align 8
  %45 = icmp ne %struct.AVDES* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = call i32 @AVERROR(i32 %47)
  store i32 %48, i32* %5, align 4
  br label %115

49:                                               ; preds = %42
  %50 = load %struct.AVDES*, %struct.AVDES** %12, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @av_des_init(%struct.AVDES* %50, i32* %51, i32 192, i32 1)
  %53 = load %struct.AVDES*, %struct.AVDES** %12, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 5
  %56 = load i32*, i32** %55, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 48
  %59 = call i32 @av_des_crypt(%struct.AVDES* %53, i32* %56, i32* %58, i32 1, i32* null, i32 1)
  %60 = load %struct.AVDES*, %struct.AVDES** %12, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 5
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @av_des_init(%struct.AVDES* %60, i32* %63, i32 64, i32 0)
  %65 = load %struct.AVDES*, %struct.AVDES** %12, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @av_des_crypt(%struct.AVDES* %65, i32* %68, i32* null, i32 1, i32* null, i32 0)
  %70 = load i32, i32* @OMA_ENC_HEADER_SIZE, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add i32 %70, %73
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add i32 %74, %77
  store i32 %78, i32* %11, align 4
  %79 = load %struct.AVDES*, %struct.AVDES** %12, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @av_des_init(%struct.AVDES* %79, i32* %82, i32 64, i32 0)
  %84 = load %struct.AVDES*, %struct.AVDES** %12, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %11, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = lshr i32 %94, 3
  %96 = call i32 @av_des_mac(%struct.AVDES* %84, i32 %87, i32* %91, i32 %95)
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = add i32 %100, %99
  store i32 %101, i32* %11, align 4
  %102 = load %struct.AVDES*, %struct.AVDES** %12, align 8
  %103 = call i32 @av_free(%struct.AVDES* %102)
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %11, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @memcmp(i32* %107, i32 %110, i32 8)
  %112 = icmp ne i64 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 -1, i32 0
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %49, %46, %41
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local %struct.AVDES* @av_des_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_des_init(%struct.AVDES*, i32*, i32, i32) #1

declare dso_local i32 @av_des_crypt(%struct.AVDES*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @av_des_mac(%struct.AVDES*, i32, i32*, i32) #1

declare dso_local i32 @av_free(%struct.AVDES*) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
