; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavs.c_mc_part_std.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavs.c_mc_part_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i64 }

@MV_BWD_OFFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, i32, i32*, i32*, i32*, i32, i32, i32*, i32, i32*, i32, %struct.TYPE_9__*)* @mc_part_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mc_part_std(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32 %6, i32 %7, i32* %8, i32 %9, i32* %10, i32 %11, %struct.TYPE_9__* %12) #0 {
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_9__*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i32* %3, i32** %17, align 8
  store i32* %4, i32** %18, align 8
  store i32* %5, i32** %19, align 8
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32* %8, i32** %22, align 8
  store i32 %9, i32* %23, align 4
  store i32* %10, i32** %24, align 8
  store i32 %11, i32* %25, align 4
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %26, align 8
  %31 = load i32*, i32** %22, align 8
  store i32* %31, i32** %27, align 8
  %32 = load i32, i32* %23, align 4
  store i32 %32, i32* %28, align 4
  %33 = load i32, i32* %20, align 4
  %34 = mul nsw i32 %33, 2
  %35 = load i32, i32* %21, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %35, %38
  %40 = mul nsw i32 %39, 2
  %41 = add nsw i32 %34, %40
  %42 = load i32*, i32** %17, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32* %44, i32** %17, align 8
  %45 = load i32, i32* %20, align 4
  %46 = load i32, i32* %21, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %46, %49
  %51 = add nsw i32 %45, %50
  %52 = load i32*, i32** %18, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %18, align 8
  %55 = load i32, i32* %20, align 4
  %56 = load i32, i32* %21, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %56, %59
  %61 = add nsw i32 %55, %60
  %62 = load i32*, i32** %19, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %19, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = mul nsw i32 8, %67
  %69 = load i32, i32* %20, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %20, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 8, %73
  %75 = load i32, i32* %21, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %21, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp uge i64 %79, 0
  br i1 %80, label %81, label %106

81:                                               ; preds = %13
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  store i32* %90, i32** %29, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %92 = load i32*, i32** %29, align 8
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %16, align 4
  %95 = load i32*, i32** %17, align 8
  %96 = load i32*, i32** %18, align 8
  %97 = load i32*, i32** %19, align 8
  %98 = load i32, i32* %20, align 4
  %99 = load i32, i32* %21, align 4
  %100 = load i32*, i32** %27, align 8
  %101 = load i32, i32* %28, align 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %103 = call i32 @mc_dir_part(%struct.TYPE_10__* %91, i32* %92, i32 %93, i32 %94, i32 0, i32* %95, i32* %96, i32* %97, i32 %98, i32 %99, i32* %100, i32 %101, %struct.TYPE_9__* %102)
  %104 = load i32*, i32** %24, align 8
  store i32* %104, i32** %27, align 8
  %105 = load i32, i32* %25, align 4
  store i32 %105, i32* %28, align 4
  br label %106

106:                                              ; preds = %81, %13
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %108 = load i32, i32* @MV_BWD_OFFS, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp uge i64 %112, 0
  br i1 %113, label %114, label %137

114:                                              ; preds = %106
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  store i32* %120, i32** %30, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %122 = load i32*, i32** %30, align 8
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %16, align 4
  %125 = load i32*, i32** %17, align 8
  %126 = load i32*, i32** %18, align 8
  %127 = load i32*, i32** %19, align 8
  %128 = load i32, i32* %20, align 4
  %129 = load i32, i32* %21, align 4
  %130 = load i32*, i32** %27, align 8
  %131 = load i32, i32* %28, align 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %133 = load i32, i32* @MV_BWD_OFFS, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i64 %134
  %136 = call i32 @mc_dir_part(%struct.TYPE_10__* %121, i32* %122, i32 %123, i32 %124, i32 1, i32* %125, i32* %126, i32* %127, i32 %128, i32 %129, i32* %130, i32 %131, %struct.TYPE_9__* %135)
  br label %137

137:                                              ; preds = %114, %106
  ret void
}

declare dso_local i32 @mc_dir_part(%struct.TYPE_10__*, i32*, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32*, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
