; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_windowing_and_mdct_ltp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_windowing_and_mdct_ltp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*, i32*, i32*)* }
%struct.TYPE_7__ = type { i32 (i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32)* }
%struct.TYPE_8__ = type { i64*, i64* }

@ff_aac_kbd_long_1024 = common dso_local global i32 0, align 4
@ff_sine_1024 = common dso_local global i32 0, align 4
@ff_aac_kbd_short_128 = common dso_local global i32 0, align 4
@ff_sine_128 = common dso_local global i32 0, align 4
@LONG_STOP_SEQUENCE = common dso_local global i64 0, align 8
@LONG_START_SEQUENCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, i32*, %struct.TYPE_8__*)* @windowing_and_mdct_ltp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @windowing_and_mdct_ltp(%struct.TYPE_9__* %0, i32* %1, i32* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %8, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @ff_aac_kbd_long_1024, align 4
  %21 = call i32* @AAC_RENAME(i32 %20)
  br label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @ff_sine_1024, align 4
  %24 = call i32* @AAC_RENAME(i32 %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i32* [ %21, %19 ], [ %24, %22 ]
  store i32* %26, i32** %9, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @ff_aac_kbd_short_128, align 4
  %35 = call i32* @AAC_RENAME(i32 %34)
  br label %39

36:                                               ; preds = %25
  %37 = load i32, i32* @ff_sine_128, align 4
  %38 = call i32* @AAC_RENAME(i32 %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i32* [ %35, %33 ], [ %38, %36 ]
  store i32* %40, i32** %10, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @ff_aac_kbd_long_1024, align 4
  %49 = call i32* @AAC_RENAME(i32 %48)
  br label %53

50:                                               ; preds = %39
  %51 = load i32, i32* @ff_sine_1024, align 4
  %52 = call i32* @AAC_RENAME(i32 %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi i32* [ %49, %47 ], [ %52, %50 ]
  store i32* %54, i32** %11, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i32, i32* @ff_aac_kbd_short_128, align 4
  %63 = call i32* @AAC_RENAME(i32 %62)
  br label %67

64:                                               ; preds = %53
  %65 = load i32, i32* @ff_sine_128, align 4
  %66 = call i32* @AAC_RENAME(i32 %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = phi i32* [ %63, %61 ], [ %66, %64 ]
  store i32* %68, i32** %12, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @LONG_STOP_SEQUENCE, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %67
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32 (i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32)** %80, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 %81(i32* %82, i32* %83, i32* %84, i32 1024)
  br label %100

86:                                               ; preds = %67
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @memset(i32* %87, i32 0, i32 1792)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32 (i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32)** %92, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 448
  %96 = load i32*, i32** %7, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 448
  %98 = load i32*, i32** %12, align 8
  %99 = call i32 %93(i32* %95, i32* %97, i32* %98, i32 128)
  br label %100

100:                                              ; preds = %86, %76
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @LONG_START_SEQUENCE, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %100
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32 (i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32)** %112, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1024
  %116 = load i32*, i32** %7, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1024
  %118 = load i32*, i32** %9, align 8
  %119 = call i32 %113(i32* %115, i32* %117, i32* %118, i32 1024)
  br label %138

120:                                              ; preds = %100
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32 (i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32)** %124, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1024
  %128 = getelementptr inbounds i32, i32* %127, i64 448
  %129 = load i32*, i32** %7, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1024
  %131 = getelementptr inbounds i32, i32* %130, i64 448
  %132 = load i32*, i32** %10, align 8
  %133 = call i32 %125(i32* %128, i32* %131, i32* %132, i32 128)
  %134 = load i32*, i32** %7, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1024
  %136 = getelementptr inbounds i32, i32* %135, i64 576
  %137 = call i32 @memset(i32* %136, i32 0, i32 1792)
  br label %138

138:                                              ; preds = %120, %108
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i32 (%struct.TYPE_10__*, i32*, i32*)*, i32 (%struct.TYPE_10__*, i32*, i32*)** %141, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i32*, i32** %6, align 8
  %146 = load i32*, i32** %7, align 8
  %147 = call i32 %142(%struct.TYPE_10__* %144, i32* %145, i32* %146)
  ret void
}

declare dso_local i32* @AAC_RENAME(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
