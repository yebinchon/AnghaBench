; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpenc_vc2hq.c_send_picture.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpenc_vc2hq.c_send_picture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i64 }

@DIRAC_PIC_NR_SIZE = common dso_local global i64 0, align 8
@DIRAC_RTP_PCODE_HQ_PIC_FRAGMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32, i32)* @send_picture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_picture(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %9, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 4
  store i8* %25, i8** %18, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = call i32 @AV_RB32(i32* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i64, i64* @DIRAC_PIC_NR_SIZE, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 %29
  store i32* %31, i32** %6, align 8
  %32 = load i64, i64* @DIRAC_PIC_NR_SIZE, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %4
  %40 = load i32, i32* %13, align 4
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %39, %4
  %44 = phi i1 [ false, %4 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %12, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 8, %47
  %49 = call i32 @init_get_bits(i32* %10, i32* %46, i32 %48)
  %50 = call i32 @get_interleaved_ue_golomb(i32* %10)
  %51 = call i32 @get_interleaved_ue_golomb(i32* %10)
  store i32 %51, i32* %14, align 4
  %52 = call i32 @get_interleaved_ue_golomb(i32* %10)
  %53 = call i32 @get_interleaved_ue_golomb(i32* %10)
  %54 = call i32 @get_interleaved_ue_golomb(i32* %10)
  store i32 %54, i32* %15, align 4
  %55 = call i32 @get_interleaved_ue_golomb(i32* %10)
  store i32 %55, i32* %16, align 4
  %56 = call i32 @get_interleaved_ue_golomb(i32* %10)
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %65, %43
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = call i32 @get_interleaved_ue_golomb(i32* %10)
  %63 = call i32 @get_interleaved_ue_golomb(i32* %10)
  %64 = call i32 @get_interleaved_ue_golomb(i32* %10)
  br label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %57

68:                                               ; preds = %57
  %69 = call i32 @get_bits_count(i32* %10)
  %70 = add nsw i32 %69, 7
  %71 = sdiv i32 %70, 8
  store i32 %71, i32* %17, align 4
  %72 = load i8*, i8** %18, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @AV_WB32(i8* %73, i32 %74)
  %76 = load i8*, i8** %18, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 4
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @AV_WB16(i8* %77, i32 %78)
  %80 = load i8*, i8** %18, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 6
  %82 = load i32, i32* %16, align 4
  %83 = call i32 @AV_WB16(i8* %81, i32 %82)
  %84 = load i8*, i8** %18, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 8
  %86 = load i32, i32* %17, align 4
  %87 = call i32 @AV_WB16(i8* %85, i32 %86)
  %88 = load i8*, i8** %18, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 10
  %90 = call i32 @AV_WB16(i8* %89, i32 0)
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = load i32, i32* @DIRAC_RTP_PCODE_HQ_PIC_FRAGMENT, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @send_packet(%struct.TYPE_6__* %91, i32 %92, i32 12, i32* %93, i32 %94, i32 %95, i32 %96, i32 0)
  %98 = load i32, i32* %17, align 4
  %99 = load i32*, i32** %6, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32* %101, i32** %6, align 8
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %7, align 4
  %104 = sub nsw i32 %103, %102
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %108, %68
  %106 = load i32, i32* %7, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %146

108:                                              ; preds = %105
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %111, 20
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @FFMIN(i64 %112, i32 %113)
  store i32 %114, i32* %17, align 4
  %115 = load i8*, i8** %18, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 8
  %117 = load i32, i32* %17, align 4
  %118 = call i32 @AV_WB16(i8* %116, i32 %117)
  %119 = load i8*, i8** %18, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 10
  %121 = call i32 @AV_WB16(i8* %120, i32 1)
  %122 = load i8*, i8** %18, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 12
  %124 = call i32 @AV_WB16(i8* %123, i32 0)
  %125 = load i8*, i8** %18, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 14
  %127 = call i32 @AV_WB16(i8* %126, i32 0)
  %128 = load i32, i32* %17, align 4
  %129 = load i32, i32* %7, align 4
  %130 = sub nsw i32 %129, %128
  store i32 %130, i32* %7, align 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %132 = load i32, i32* @DIRAC_RTP_PCODE_HQ_PIC_FRAGMENT, align 4
  %133 = load i32*, i32** %6, align 8
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp sgt i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i32 0, i32 1
  %141 = call i32 @send_packet(%struct.TYPE_6__* %131, i32 %132, i32 16, i32* %133, i32 %134, i32 %135, i32 %136, i32 %140)
  %142 = load i32, i32* %17, align 4
  %143 = load i32*, i32** %6, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  store i32* %145, i32** %6, align 8
  br label %105

146:                                              ; preds = %105
  ret void
}

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i32 @get_interleaved_ue_golomb(i32*) #1

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32 @AV_WB32(i8*, i32) #1

declare dso_local i32 @AV_WB16(i8*, i32) #1

declare dso_local i32 @send_packet(%struct.TYPE_6__*, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @FFMIN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
