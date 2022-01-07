; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_spdifenc.c_spdif_header_truehd.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_spdifenc.c_spdif_header_truehd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32*, i32*, i32 }
%struct.TYPE_8__ = type { i32, i8* }

@spdif_header_truehd.mat_end_code = internal constant [16 x i8] c"\C3\C2\C0\C4\00\00\00\00\00\00\00\00\00\00\97\11", align 16
@spdif_header_truehd.mat_start_code = internal constant [20 x i8] c"\07\9E\00\03\84\01\01\01\80\00V\A5;\F4\81\83I\80w\E0", align 16
@BURST_HEADER_SIZE = common dso_local global i32 0, align 4
@spdif_header_truehd.mat_middle_code = internal constant [12 x i8] c"\C3\C1BI;\FA\82\83I\80w\E0", align 1
@MAT_MIDDLE_CODE_OFFSET = common dso_local global i32 0, align 4
@TRUEHD_FRAME_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Too large TrueHD frame of %d bytes\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@MAT_FRAME_SIZE = common dso_local global i32 0, align 4
@IEC61937_TRUEHD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*)* @spdif_header_truehd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spdif_header_truehd(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @BURST_HEADER_SIZE, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 20, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @memcpy(i32* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @spdif_header_truehd.mat_start_code, i64 0, i64 0), i32 20)
  br label %48

25:                                               ; preds = %2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 12
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  %31 = load i32, i32* @MAT_MIDDLE_CODE_OFFSET, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 12, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @TRUEHD_FRAME_OFFSET, align 4
  %39 = mul nsw i32 12, %38
  %40 = load i32, i32* @BURST_HEADER_SIZE, align 4
  %41 = sub nsw i32 %39, %40
  %42 = load i32, i32* @MAT_MIDDLE_CODE_OFFSET, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %37, i64 %44
  %46 = call i32 @memcpy(i32* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @spdif_header_truehd.mat_middle_code, i64 0, i64 0), i32 12)
  br label %47

47:                                               ; preds = %30, %25
  br label %48

48:                                               ; preds = %47, %16
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @TRUEHD_FRAME_OFFSET, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 %52, %53
  %55 = icmp sgt i32 %51, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %48
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @avpriv_request_sample(%struct.TYPE_9__* %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %62, i32* %3, align 4
  br label %178

63:                                               ; preds = %48
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @TRUEHD_FRAME_OFFSET, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32, i32* @BURST_HEADER_SIZE, align 4
  %73 = sub nsw i32 %71, %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %66, i64 %76
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @memcpy(i32* %77, i8* %80, i32 %83)
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %87, 23
  br i1 %88, label %89, label %117

89:                                               ; preds = %63
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @TRUEHD_FRAME_OFFSET, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32, i32* @BURST_HEADER_SIZE, align 4
  %99 = sub nsw i32 %97, %98
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %99, %100
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %101, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %92, i64 %106
  %108 = load i32, i32* @TRUEHD_FRAME_OFFSET, align 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %108, %111
  %113 = load i32, i32* %7, align 4
  %114 = sub nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = call i32 @memset(i32* %107, i32 0, i64 %115)
  br label %142

117:                                              ; preds = %63
  %118 = load i32, i32* @MAT_FRAME_SIZE, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @TRUEHD_FRAME_OFFSET, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load i32, i32* @BURST_HEADER_SIZE, align 4
  %125 = sub nsw i32 %123, %124
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %125, %128
  %130 = sub nsw i32 %118, %129
  %131 = sext i32 %130 to i64
  store i64 %131, i64* %8, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 4
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* @MAT_FRAME_SIZE, align 4
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* %8, align 8
  %138 = sub i64 %136, %137
  %139 = getelementptr inbounds i32, i32* %134, i64 %138
  %140 = load i64, i64* %8, align 8
  %141 = call i32 @memset(i32* %139, i32 0, i64 %140)
  br label %142

142:                                              ; preds = %117, %89
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 8
  %147 = icmp slt i32 %146, 24
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  store i32 0, i32* %150, align 4
  store i32 0, i32* %3, align 4
  br label %178

151:                                              ; preds = %142
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 4
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* @MAT_FRAME_SIZE, align 4
  %156 = sext i32 %155 to i64
  %157 = sub i64 %156, 16
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = call i32 @memcpy(i32* %158, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @spdif_header_truehd.mat_end_code, i64 0, i64 0), i32 16)
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  store i32 0, i32* %161, align 8
  %162 = load i32, i32* @IEC61937_TRUEHD, align 4
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 6
  store i32 %162, i32* %164, align 8
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  store i32 61440, i32* %166, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 4
  %169 = load i32*, i32** %168, align 8
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 5
  store i32* %169, i32** %171, align 8
  %172 = load i32, i32* @MAT_FRAME_SIZE, align 4
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 8
  %175 = load i32, i32* @MAT_FRAME_SIZE, align 4
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 4
  store i32 0, i32* %3, align 4
  br label %178

178:                                              ; preds = %151, %148, %56
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
