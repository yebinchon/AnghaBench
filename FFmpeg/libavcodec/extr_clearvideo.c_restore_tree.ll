; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_clearvideo.c_restore_tree.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_clearvideo.c_restore_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_8__**, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_9__*)* @restore_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @restore_tree(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.TYPE_8__* %7, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_9__, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %17, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %25, %29
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  store i64 %30, i64* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %33, %37
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i64 %38, i64* %39, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %60, label %44

44:                                               ; preds = %9
  %45 = load i32*, i32** %10, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %16, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @tile_do_block(i32* %45, i32* %46, i32* %47, i32 %48, i32 %49, i32 %50, i64 %52, i64 %54, i32 %55, i32 %58)
  store i32 %59, i32* %18, align 4
  br label %143

60:                                               ; preds = %9
  %61 = load i32, i32* %16, align 4
  %62 = ashr i32 %61, 1
  store i32 %62, i32* %21, align 4
  store i32 0, i32* %20, align 4
  br label %63

63:                                               ; preds = %139, %60
  %64 = load i32, i32* %20, align 4
  %65 = icmp slt i32 %64, 4
  br i1 %65, label %66, label %142

66:                                               ; preds = %63
  %67 = load i32, i32* %20, align 4
  %68 = and i32 %67, 2
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %21, align 4
  br label %73

73:                                               ; preds = %71, %70
  %74 = phi i32 [ 0, %70 ], [ %72, %71 ]
  store i32 %74, i32* %22, align 4
  %75 = load i32, i32* %20, align 4
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %21, align 4
  br label %81

81:                                               ; preds = %79, %78
  %82 = phi i32 [ 0, %78 ], [ %80, %79 ]
  store i32 %82, i32* %23, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %84, align 8
  %86 = load i32, i32* %20, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %85, i64 %87
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = icmp ne %struct.TYPE_8__* %89, null
  br i1 %90, label %91, label %118

91:                                               ; preds = %81
  %92 = load i32*, i32** %10, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %22, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %23, align 4
  %101 = add nsw i32 %99, %100
  %102 = load i32, i32* %21, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %104, align 8
  %106 = load i32, i32* %20, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %105, i64 %107
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = call i32 @restore_tree(i32* %92, i32* %93, i32* %94, i32 %95, i32 %98, i32 %101, i32 %102, %struct.TYPE_8__* %109, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %8)
  store i32 %110, i32* %18, align 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %112, align 8
  %114 = load i32, i32* %20, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %113, i64 %115
  %117 = call i32 @av_freep(%struct.TYPE_8__** %116)
  br label %138

118:                                              ; preds = %81
  %119 = load i32*, i32** %10, align 8
  %120 = load i32*, i32** %11, align 8
  %121 = load i32*, i32** %12, align 8
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %22, align 4
  %125 = add nsw i32 %123, %124
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %23, align 4
  %128 = add nsw i32 %126, %127
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %21, align 4
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @tile_do_block(i32* %119, i32* %120, i32* %121, i32 %122, i32 %125, i32 %128, i64 %130, i64 %132, i32 %133, i32 %136)
  store i32 %137, i32* %18, align 4
  br label %138

138:                                              ; preds = %118, %91
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %20, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %20, align 4
  br label %63

142:                                              ; preds = %63
  br label %143

143:                                              ; preds = %142, %44
  %144 = load i32, i32* %18, align 4
  ret i32 %144
}

declare dso_local i32 @tile_do_block(i32*, i32*, i32*, i32, i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @av_freep(%struct.TYPE_8__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
