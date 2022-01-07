; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_prompeg.c_prompeg_write_fec.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_prompeg.c_prompeg_write_fec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64, i32, %struct.TYPE_7__*, %struct.TYPE_7__*, i32, i32, i32, i64* }
%struct.TYPE_8__ = type { i32, i32, i64* }

@PROMPEG_FEC_COL = common dso_local global i64 0, align 8
@PROMPEG_RTP_PT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, i64)* @prompeg_write_fec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prompeg_write_fec(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %7, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 8
  %18 = load i64*, i64** %17, align 8
  store i64* %18, i64** %9, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i64*, i64** %20, align 8
  store i64* %21, i64** %10, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @PROMPEG_FEC_COL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  br label %35

30:                                               ; preds = %3
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i32 [ %29, %25 ], [ %34, %30 ]
  store i32 %36, i32* %11, align 4
  %37 = load i64*, i64** %10, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = and i64 %39, 63
  %41 = or i64 128, %40
  %42 = load i64*, i64** %9, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  store i64 %41, i64* %43, align 8
  %44 = load i64*, i64** %10, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 1
  %46 = load i64, i64* %45, align 8
  %47 = and i64 %46, 128
  %48 = load i64, i64* @PROMPEG_RTP_PT, align 8
  %49 = or i64 %47, %48
  %50 = load i64*, i64** %9, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  store i64 %49, i64* %51, align 8
  %52 = load i64*, i64** %9, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 2
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @AV_WB16(i64* %53, i32 %54)
  %56 = load i64*, i64** %9, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @AV_WB32(i64* %57, i32 %60)
  %62 = load i64*, i64** %9, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 12
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @AV_WB16(i64* %63, i32 %66)
  %68 = load i64*, i64** %10, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 6
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** %9, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 14
  store i64 %70, i64* %72, align 8
  %73 = load i64*, i64** %10, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 7
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %9, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 15
  store i64 %75, i64* %77, align 8
  %78 = load i64*, i64** %10, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 1
  %80 = load i64, i64* %79, align 8
  %81 = or i64 128, %80
  %82 = load i64*, i64** %9, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 16
  store i64 %81, i64* %83, align 8
  %84 = load i64*, i64** %10, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64*, i64** %9, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 20
  store i64 %86, i64* %88, align 8
  %89 = load i64*, i64** %10, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 3
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** %9, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 21
  store i64 %91, i64* %93, align 8
  %94 = load i64*, i64** %10, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 4
  %96 = load i64, i64* %95, align 8
  %97 = load i64*, i64** %9, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 22
  store i64 %96, i64* %98, align 8
  %99 = load i64*, i64** %10, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 5
  %101 = load i64, i64* %100, align 8
  %102 = load i64*, i64** %9, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 23
  store i64 %101, i64* %103, align 8
  %104 = load i64, i64* %6, align 8
  %105 = load i64, i64* @PROMPEG_FEC_COL, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 0, i32 64
  %109 = sext i32 %108 to i64
  %110 = load i64*, i64** %9, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 24
  store i64 %109, i64* %111, align 8
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* @PROMPEG_FEC_COL, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %35
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  br label %120

119:                                              ; preds = %35
  br label %120

120:                                              ; preds = %119, %115
  %121 = phi i32 [ %118, %115 ], [ 1, %119 ]
  %122 = sext i32 %121 to i64
  %123 = load i64*, i64** %9, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 25
  store i64 %122, i64* %124, align 8
  %125 = load i64, i64* %6, align 8
  %126 = load i64, i64* @PROMPEG_FEC_COL, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %120
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  br label %137

132:                                              ; preds = %120
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  br label %137

137:                                              ; preds = %132, %128
  %138 = phi i64 [ %131, %128 ], [ %136, %132 ]
  %139 = load i64*, i64** %9, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 26
  store i64 %138, i64* %140, align 8
  %141 = load i64*, i64** %9, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 28
  %143 = load i64*, i64** %10, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @memcpy(i64* %142, i64* %144, i32 %147)
  %149 = load i64, i64* %6, align 8
  %150 = load i64, i64* @PROMPEG_FEC_COL, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %137
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 4
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  br label %160

156:                                              ; preds = %137
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 3
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  br label %160

160:                                              ; preds = %156, %152
  %161 = phi %struct.TYPE_7__* [ %155, %152 ], [ %159, %156 ]
  store %struct.TYPE_7__* %161, %struct.TYPE_7__** %8, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %163 = load i64*, i64** %9, align 8
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @ffurl_write(%struct.TYPE_7__* %162, i64* %163, i32 %166)
  store i32 %167, i32* %12, align 4
  %168 = load i32, i32* %12, align 4
  ret i32 %168
}

declare dso_local i32 @AV_WB16(i64*, i32) #1

declare dso_local i32 @AV_WB32(i64*, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @ffurl_write(%struct.TYPE_7__*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
