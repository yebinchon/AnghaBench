; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_vividas.c_viv_read_seek.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_vividas.c_viv_read_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__**, i32, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i64, i8*, %struct.TYPE_9__*, i64, i64, i64 }
%struct.TYPE_9__ = type { i64, i64, i64 }

@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, i64, i32)* @viv_read_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viv_read_seek(%struct.TYPE_13__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i64, i64* %8, align 8
  store i64 %19, i64* %11, align 8
  br label %40

20:                                               ; preds = %4
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %24, i64 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %31, i64 %33
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @av_rescale_q(i64 %21, i32 %28, i32 %37)
  %39 = ptrtoint i8* %38 to i64
  store i64 %39, i64* %11, align 8
  br label %40

40:                                               ; preds = %20, %18
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %151, %40
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %154

47:                                               ; preds = %41
  %48 = load i64, i64* %11, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sge i64 %48, %56
  br i1 %57, label %58, label %150

58:                                               ; preds = %47
  %59 = load i64, i64* %11, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %67, %75
  %77 = icmp slt i64 %59, %76
  br i1 %77, label %78, label %150

78:                                               ; preds = %58
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 7
  store i64 0, i64* %80, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 6
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %91, %99
  %101 = load i32, i32* @SEEK_SET, align 4
  %102 = call i32 @avio_seek(i32 %88, i64 %100, i32 %101)
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %105 = call i32 @load_sb_block(%struct.TYPE_13__* %103, %struct.TYPE_12__* %104, i32 0)
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %116, i64 1
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @av_make_q(i64 %122, i32 1)
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %126, i64 0
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @av_inv_q(i32 %130)
  %132 = call i8* @av_rescale_q(i64 %113, i32 %123, i32 %131)
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 3
  store i8* %132, i8** %134, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %137, i64 1
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 3
  %146 = load i8*, i8** %145, align 8
  %147 = getelementptr i8, i8* %146, i64 %143
  store i8* %147, i8** %145, align 8
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 2
  store i64 0, i64* %149, align 8
  store i32 1, i32* %5, align 4
  br label %155

150:                                              ; preds = %58, %47
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %12, align 4
  br label %41

154:                                              ; preds = %41
  store i32 0, i32* %5, align 4
  br label %155

155:                                              ; preds = %154, %78
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local i8* @av_rescale_q(i64, i32, i32) #1

declare dso_local i32 @avio_seek(i32, i64, i32) #1

declare dso_local i32 @load_sb_block(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @av_make_q(i64, i32) #1

declare dso_local i32 @av_inv_q(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
