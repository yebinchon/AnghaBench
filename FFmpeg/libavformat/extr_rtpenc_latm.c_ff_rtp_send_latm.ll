; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpenc_latm.c_ff_rtp_send_latm.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpenc_latm.c_ff_rtp_send_latm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__**, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32*, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_rtp_send_latm(%struct.TYPE_10__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %16, i64 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, 7
  store i32 %26, i32* %6, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 7
  store i32* %28, i32** %5, align 8
  br label %29

29:                                               ; preds = %24, %3
  %30 = load i32, i32* %6, align 4
  %31 = sdiv i32 %30, 255
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @memset(i32* %35, i32 255, i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = srem i32 %39, 255
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32 %40, i32* %47, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %110, %29
  %54 = load i32, i32* %6, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %114

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %8, align 4
  br label %66

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i32 [ %64, %63 ], [ 0, %65 ]
  %68 = sext i32 %67 to i64
  %69 = sub nsw i64 %60, %68
  %70 = call i32 @FFMIN(i32 %57, i64 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %98, label %76

76:                                               ; preds = %66
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @memcpy(i32* %82, i32* %83, i32 %84)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %90, %91
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i32 @ff_rtp_send_data(%struct.TYPE_10__* %86, i32* %89, i32 %92, i32 %96)
  br label %110

98:                                               ; preds = %66
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i32 @ff_rtp_send_data(%struct.TYPE_10__* %99, i32* %103, i32 %104, i32 %108)
  br label %110

110:                                              ; preds = %98, %76
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %9, align 4
  br label %53

114:                                              ; preds = %53
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ff_rtp_send_data(%struct.TYPE_10__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
