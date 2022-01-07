; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_filter.c_init_simple_filtergraph.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_filter.c_init_simple_filtergraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_10__**, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_10__**, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__** }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }

@nb_filtergraphs = common dso_local global i32 0, align 4
@filtergraphs = common dso_local global %struct.TYPE_10__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_simple_filtergraph(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %6 = call i8* @av_mallocz(i32 64)
  %7 = bitcast i8* %6 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %5, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %9 = icmp ne %struct.TYPE_10__* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = call i32 @exit_program(i32 1)
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i32, i32* @nb_filtergraphs, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 8
  %18 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %17, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @GROW_ARRAY(%struct.TYPE_10__** %18, i32 %21)
  %23 = call i8* @av_mallocz(i32 64)
  %24 = bitcast i8* %23 to %struct.TYPE_10__*
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 8
  %27 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %27, i64 0
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %28, align 8
  %29 = icmp ne %struct.TYPE_10__* %24, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %12
  %31 = call i32 @exit_program(i32 1)
  br label %32

32:                                               ; preds = %30, %12
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 8
  %36 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %36, i64 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 9
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %39, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 8
  %43 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %43, i64 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 6
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %46, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 8
  %49 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %49, i64 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  store i32 -1, i32* %52, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 8
  %55 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %55, i64 0
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %59, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %61, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @GROW_ARRAY(%struct.TYPE_10__** %62, i32 %65)
  %67 = call i8* @av_mallocz(i32 64)
  %68 = bitcast i8* %67 to %struct.TYPE_10__*
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %71, i64 0
  store %struct.TYPE_10__* %68, %struct.TYPE_10__** %72, align 8
  %73 = icmp ne %struct.TYPE_10__* %68, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %32
  %75 = call i32 @exit_program(i32 1)
  br label %76

76:                                               ; preds = %74, %32
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %80, i64 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 7
  store %struct.TYPE_9__* %77, %struct.TYPE_9__** %83, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %87, i64 0
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 6
  store %struct.TYPE_10__* %84, %struct.TYPE_10__** %90, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %93, i64 0
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  store i32 -1, i32* %96, align 8
  %97 = call i32 @av_fifo_alloc(i32 64)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %100, i64 0
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 5
  store i32 %97, i32* %103, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %106, i64 0
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %76
  %113 = call i32 @exit_program(i32 1)
  br label %114

114:                                              ; preds = %112, %76
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %116, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @GROW_ARRAY(%struct.TYPE_10__** %117, i32 %120)
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 4
  %124 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %124, i64 0
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %128, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %129, i64 %134
  store %struct.TYPE_10__* %126, %struct.TYPE_10__** %135, align 8
  %136 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @filtergraphs, align 8
  %137 = load i32, i32* @nb_filtergraphs, align 4
  %138 = call i32 @GROW_ARRAY(%struct.TYPE_10__** %136, i32 %137)
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %140 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @filtergraphs, align 8
  %141 = load i32, i32* @nb_filtergraphs, align 4
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %140, i64 %143
  store %struct.TYPE_10__* %139, %struct.TYPE_10__** %144, align 8
  ret i32 0
}

declare dso_local i8* @av_mallocz(i32) #1

declare dso_local i32 @exit_program(i32) #1

declare dso_local i32 @GROW_ARRAY(%struct.TYPE_10__**, i32) #1

declare dso_local i32 @av_fifo_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
