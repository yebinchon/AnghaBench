; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_ares.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_ares.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_16__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i64, i32 }
%struct.TYPE_15__ = type { i32 }

@AV_CODEC_ID_H264 = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32*, i32)* @mov_read_ares to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_read_ares(%struct.TYPE_14__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  store i32 %2, i32* %12, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32* %1, i32** %7, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %17, 1
  br i1 %18, label %19, label %150

19:                                               ; preds = %3
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %23, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %24, i64 %31
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  store %struct.TYPE_16__* %35, %struct.TYPE_16__** %8, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @MKTAG(i8 signext 65, i8 signext 86, i8 signext 105, i8 signext 110)
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %19
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AV_CODEC_ID_H264, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 11
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @avio_skip(i32* %52, i32 10)
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @avio_rb16(i32* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 3405
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 3406
  br i1 %60, label %61, label %64

61:                                               ; preds = %58, %51
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 2
  store i32 1440, i32* %63, align 8
  br label %64

64:                                               ; preds = %61, %58
  store i32 0, i32* %4, align 4
  br label %156

65:                                               ; preds = %47, %41, %19
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @MKTAG(i8 signext 65, i8 signext 86, i8 signext 100, i8 signext 49)
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %83, label %71

71:                                               ; preds = %65
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @MKTAG(i8 signext 65, i8 signext 86, i8 signext 106, i8 signext 50)
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @MKTAG(i8 signext 65, i8 signext 86, i8 signext 100, i8 signext 110)
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %148

83:                                               ; preds = %77, %71, %65
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp sge i32 %85, 24
  br i1 %86, label %87, label %148

87:                                               ; preds = %83
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @avio_skip(i32* %88, i32 12)
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @avio_rb32(i32* %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @avio_rb32(i32* %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp sle i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %87
  %97 = load i32, i32* %11, align 4
  %98 = icmp sle i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96, %87
  store i32 0, i32* %4, align 4
  br label %156

100:                                              ; preds = %96
  %101 = load i32*, i32** %7, align 8
  %102 = call i32 @avio_rb32(i32* %101)
  switch i32 %102, label %147 [
    i32 2, label %103
    i32 1, label %112
  ]

103:                                              ; preds = %100
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @INT_MAX, align 4
  %106 = sdiv i32 %105, 2
  %107 = icmp sge i32 %104, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  store i32 0, i32* %4, align 4
  br label %156

109:                                              ; preds = %103
  %110 = load i32, i32* %11, align 4
  %111 = mul nsw i32 %110, 2
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %100, %109
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %117, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %118, i64 %125
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  store i32 %113, i32* %129, align 8
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %134, align 8
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %135, i64 %142
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  store i32 %130, i32* %146, align 4
  br label %147

147:                                              ; preds = %100, %112
  store i32 0, i32* %4, align 4
  br label %156

148:                                              ; preds = %83, %77
  br label %149

149:                                              ; preds = %148
  br label %150

150:                                              ; preds = %149, %3
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %152 = load i32*, i32** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @mov_read_avid(%struct.TYPE_14__* %151, i32* %152, i32 %154)
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %150, %147, %108, %99, %64
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @avio_rb16(i32*) #1

declare dso_local i32 @avio_rb32(i32*) #1

declare dso_local i32 @mov_read_avid(%struct.TYPE_14__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
