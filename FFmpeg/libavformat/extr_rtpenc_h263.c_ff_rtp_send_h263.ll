; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpenc_h263.c_ff_rtp_send_h263.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpenc_h263.c_ff_rtp_send_h263.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_rtp_send_h263(%struct.TYPE_6__* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %7, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %71, %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %110

21:                                               ; preds = %18
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  store i64* %24, i64** %10, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp sge i32 %25, 2
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = load i64*, i64** %5, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load i64*, i64** %5, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i64*, i64** %10, align 8
  %39 = getelementptr inbounds i64, i64* %38, i32 1
  store i64* %39, i64** %10, align 8
  store i64 4, i64* %38, align 8
  %40 = load i64*, i64** %5, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 2
  store i64* %41, i64** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %42, 2
  store i32 %43, i32* %6, align 4
  br label %47

44:                                               ; preds = %32, %27, %21
  %45 = load i64*, i64** %10, align 8
  %46 = getelementptr inbounds i64, i64* %45, i32 1
  store i64* %46, i64** %10, align 8
  store i64 0, i64* %45, align 8
  br label %47

47:                                               ; preds = %44, %37
  %48 = load i64*, i64** %10, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 1
  store i64* %49, i64** %10, align 8
  store i64 0, i64* %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sub nsw i32 %50, 2
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @FFMIN(i32 %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %47
  %58 = load i64*, i64** %5, align 8
  %59 = load i64*, i64** %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = call i64* @ff_h263_find_resync_marker_reverse(i64* %58, i64* %62)
  store i64* %63, i64** %11, align 8
  %64 = load i64*, i64** %11, align 8
  %65 = load i64*, i64** %5, align 8
  %66 = ptrtoint i64* %64 to i64
  %67 = ptrtoint i64* %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %57, %47
  %72 = load i64*, i64** %10, align 8
  %73 = load i64*, i64** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @memcpy(i64* %72, i64* %73, i32 %74)
  %76 = load i32, i32* %8, align 4
  %77 = load i64*, i64** %10, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  store i64* %79, i64** %10, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i64*, i64** %10, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = ptrtoint i64* %89 to i64
  %94 = ptrtoint i64* %92 to i64
  %95 = sub i64 %93, %94
  %96 = sdiv exact i64 %95, 8
  %97 = trunc i64 %96 to i32
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp eq i32 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @ff_rtp_send_data(%struct.TYPE_6__* %85, i64* %88, i32 %97, i32 %101)
  %103 = load i32, i32* %8, align 4
  %104 = load i64*, i64** %5, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  store i64* %106, i64** %5, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %6, align 4
  %109 = sub nsw i32 %108, %107
  store i32 %109, i32* %6, align 4
  br label %18

110:                                              ; preds = %18
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i64* @ff_h263_find_resync_marker_reverse(i64*, i64*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @ff_rtp_send_data(%struct.TYPE_6__*, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
