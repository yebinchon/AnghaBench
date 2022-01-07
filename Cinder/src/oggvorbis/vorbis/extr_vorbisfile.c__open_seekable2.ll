; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c__open_seekable2.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c__open_seekable2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64*, i32, i32, i32*, i64*, i64*, i32, %struct.TYPE_10__, i32, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 (i32)*, i32 (i32, i32, i32)* }
%struct.TYPE_9__ = type { i32 }

@SEEK_END = common dso_local global i32 0, align 4
@OV_EINVAL = common dso_local global i32 0, align 4
@OV_EREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @_open_seekable2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_open_seekable2(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %4, align 8
  store i64 -1, i64* %6, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 9
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 9
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @_initial_pcmoffset(%struct.TYPE_11__* %23, i32 %26)
  store i64 %27, i64* %9, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 7
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %30, align 8
  %32 = icmp ne i32 (i32, i32, i32)* %31, null
  br i1 %32, label %33, label %61

33:                                               ; preds = %1
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32 (i32)*, i32 (i32)** %36, align 8
  %38 = icmp ne i32 (i32)* %37, null
  br i1 %38, label %39, label %61

39:                                               ; preds = %33
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 7
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %42, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SEEK_END, align 4
  %48 = call i32 %43(i32 %46, i32 0, i32 %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32 (i32)*, i32 (i32)** %51, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = call i32 %52(i32 %55)
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  store i32 %56, i32* %60, align 8
  br label %66

61:                                               ; preds = %33, %1
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  store i32 -1, i32* %63, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  store i32 -1, i32* %65, align 8
  br label %66

66:                                               ; preds = %61, %39
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @OV_EINVAL, align 4
  store i32 %72, i32* %2, align 4
  br label %153

73:                                               ; preds = %66
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @_get_prev_page_serial(%struct.TYPE_11__* %74, i32* %78, i32 %83, i32* %7, i64* %6)
  store i64 %84, i64* %5, align 8
  %85 = load i64, i64* %5, align 8
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %73
  %88 = load i64, i64* %5, align 8
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %2, align 4
  br label %153

90:                                               ; preds = %73
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %92 = load i64, i64* %4, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @_bisect_forward_serialno(%struct.TYPE_11__* %91, i32 0, i64 %92, i32 %95, i64 %96, i32 %97, i32* %101, i32 %106, i32 0)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %90
  %110 = load i32, i32* @OV_EREAD, align 4
  store i32 %110, i32* %2, align 4
  br label %153

111:                                              ; preds = %90
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 5
  %114 = load i64*, i64** %113, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 0
  store i64 0, i64* %115, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  store i32 %116, i32* %120, align 4
  %121 = load i64, i64* %4, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 0
  store i64 %121, i64* %125, align 8
  %126 = load i64, i64* %9, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 4
  %129 = load i64*, i64** %128, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 0
  store i64 %126, i64* %130, align 8
  %131 = load i64, i64* %9, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 4
  %134 = load i64*, i64** %133, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 1
  %136 = load i64, i64* %135, align 8
  %137 = sub nsw i64 %136, %131
  store i64 %137, i64* %135, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 4
  %140 = load i64*, i64** %139, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %111
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 4
  %147 = load i64*, i64** %146, align 8
  %148 = getelementptr inbounds i64, i64* %147, i64 1
  store i64 0, i64* %148, align 8
  br label %149

149:                                              ; preds = %144, %111
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %151 = load i64, i64* %4, align 8
  %152 = call i32 @ov_raw_seek(%struct.TYPE_11__* %150, i64 %151)
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %149, %109, %87, %71
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i64 @_initial_pcmoffset(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @_get_prev_page_serial(%struct.TYPE_11__*, i32*, i32, i32*, i64*) #1

declare dso_local i64 @_bisect_forward_serialno(%struct.TYPE_11__*, i32, i64, i32, i64, i32, i32*, i32, i32) #1

declare dso_local i32 @ov_raw_seek(%struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
