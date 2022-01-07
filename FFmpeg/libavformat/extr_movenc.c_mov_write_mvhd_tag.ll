; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_mvhd_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_mvhd_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i64, i32 }

@MOV_TIMESCALE = common dso_local global i32 0, align 4
@AV_ROUND_UP = common dso_local global i32 0, align 4
@FF_MOV_FLAG_EMPTY_MOOV = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"mvhd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @mov_write_mvhd_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_mvhd_tag(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store i32 1, i32* %5, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %83, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %86

16:                                               ; preds = %10
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %82

26:                                               ; preds = %16
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %82

36:                                               ; preds = %26
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @MOV_TIMESCALE, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @AV_ROUND_UP, align 4
  %55 = call i64 @av_rescale_rnd(i32 %44, i32 %45, i64 %53, i32 %54)
  store i64 %55, i64* %9, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %36
  %60 = load i64, i64* %9, align 8
  store i64 %60, i64* %7, align 8
  br label %61

61:                                               ; preds = %59, %36
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %62, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %61
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %72, %61
  br label %82

82:                                               ; preds = %81, %26, %16
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %10

86:                                               ; preds = %10
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @FF_MOV_FLAG_EMPTY_MOOV, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i64 0, i64* %7, align 8
  store i32 1, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %86
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* @UINT32_MAX, align 8
  %97 = icmp slt i64 %95, %96
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 0, i32 1
  store i32 %99, i32* %8, align 4
  %100 = load i32*, i32** %3, align 8
  %101 = load i32, i32* %8, align 4
  %102 = icmp eq i32 %101, 1
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 120, i32 108
  %105 = call i32 @avio_wb32(i32* %100, i32 %104)
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @ffio_wfourcc(i32* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %108 = load i32*, i32** %3, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @avio_w8(i32* %108, i32 %109)
  %111 = load i32*, i32** %3, align 8
  %112 = call i32 @avio_wb24(i32* %111, i32 0)
  %113 = load i32, i32* %8, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %126

115:                                              ; preds = %94
  %116 = load i32*, i32** %3, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @avio_wb64(i32* %116, i64 %119)
  %121 = load i32*, i32** %3, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @avio_wb64(i32* %121, i64 %124)
  br label %139

126:                                              ; preds = %94
  %127 = load i32*, i32** %3, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = call i32 @avio_wb32(i32* %127, i32 %131)
  %133 = load i32*, i32** %3, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = call i32 @avio_wb32(i32* %133, i32 %137)
  br label %139

139:                                              ; preds = %126, %115
  %140 = load i32*, i32** %3, align 8
  %141 = load i32, i32* @MOV_TIMESCALE, align 4
  %142 = call i32 @avio_wb32(i32* %140, i32 %141)
  %143 = load i32, i32* %8, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = load i32*, i32** %3, align 8
  %147 = load i64, i64* %7, align 8
  %148 = call i32 @avio_wb64(i32* %146, i64 %147)
  br label %154

149:                                              ; preds = %139
  %150 = load i32*, i32** %3, align 8
  %151 = load i64, i64* %7, align 8
  %152 = trunc i64 %151 to i32
  %153 = call i32 @avio_wb32(i32* %150, i32 %152)
  br label %154

154:                                              ; preds = %149, %145
  %155 = phi i32 [ %148, %145 ], [ %153, %149 ]
  %156 = load i32*, i32** %3, align 8
  %157 = call i32 @avio_wb32(i32* %156, i32 65536)
  %158 = load i32*, i32** %3, align 8
  %159 = call i32 @avio_wb16(i32* %158, i32 256)
  %160 = load i32*, i32** %3, align 8
  %161 = call i32 @avio_wb16(i32* %160, i32 0)
  %162 = load i32*, i32** %3, align 8
  %163 = call i32 @avio_wb32(i32* %162, i32 0)
  %164 = load i32*, i32** %3, align 8
  %165 = call i32 @avio_wb32(i32* %164, i32 0)
  %166 = load i32*, i32** %3, align 8
  %167 = call i32 @write_matrix(i32* %166, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0)
  %168 = load i32*, i32** %3, align 8
  %169 = call i32 @avio_wb32(i32* %168, i32 0)
  %170 = load i32*, i32** %3, align 8
  %171 = call i32 @avio_wb32(i32* %170, i32 0)
  %172 = load i32*, i32** %3, align 8
  %173 = call i32 @avio_wb32(i32* %172, i32 0)
  %174 = load i32*, i32** %3, align 8
  %175 = call i32 @avio_wb32(i32* %174, i32 0)
  %176 = load i32*, i32** %3, align 8
  %177 = call i32 @avio_wb32(i32* %176, i32 0)
  %178 = load i32*, i32** %3, align 8
  %179 = call i32 @avio_wb32(i32* %178, i32 0)
  %180 = load i32*, i32** %3, align 8
  %181 = load i32, i32* %5, align 4
  %182 = add nsw i32 %181, 1
  %183 = call i32 @avio_wb32(i32* %180, i32 %182)
  ret i32 108
}

declare dso_local i64 @av_rescale_rnd(i32, i32, i64, i32) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_wb24(i32*, i32) #1

declare dso_local i32 @avio_wb64(i32*, i64) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i32 @write_matrix(i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
