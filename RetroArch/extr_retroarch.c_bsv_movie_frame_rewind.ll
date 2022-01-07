; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_bsv_movie_frame_rewind.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_bsv_movie_frame_rewind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64*, i64, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@bsv_movie_state_handle = common dso_local global %struct.TYPE_6__* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bsv_movie_frame_rewind() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bsv_movie_state_handle, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %1, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %5 = icmp ne %struct.TYPE_6__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %118

7:                                                ; preds = %0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp sle i32 %12, 1
  br i1 %13, label %14, label %36

14:                                               ; preds = %7
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %14
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @SEEK_SET, align 4
  %35 = call i32 @intfstream_seek(i32 %29, i32 %33, i32 %34)
  br label %68

36:                                               ; preds = %14, %7
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 9
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 2
  %46 = sub nsw i32 %39, %45
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %46, %49
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %58, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* @SEEK_SET, align 4
  %67 = call i32 @intfstream_seek(i32 %55, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %36, %24
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @intfstream_tell(i32 %71)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp sle i64 %72, %75
  br i1 %76, label %77, label %118

77:                                               ; preds = %68
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %107, label %82

82:                                               ; preds = %77
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SEEK_SET, align 4
  %87 = call i32 @intfstream_seek(i32 %85, i32 16, i32 %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  store i32 %90, i32* %91, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  store i32 %94, i32* %95, align 4
  %96 = call i32 @core_serialize(%struct.TYPE_5__* %2)
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @intfstream_write(i32 %99, i32 %102, i32 %105)
  br label %117

107:                                              ; preds = %77
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = load i32, i32* @SEEK_SET, align 4
  %116 = call i32 @intfstream_seek(i32 %110, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %107, %82
  br label %118

118:                                              ; preds = %6, %117, %68
  ret void
}

declare dso_local i32 @intfstream_seek(i32, i32, i32) #1

declare dso_local i64 @intfstream_tell(i32) #1

declare dso_local i32 @core_serialize(%struct.TYPE_5__*) #1

declare dso_local i32 @intfstream_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
