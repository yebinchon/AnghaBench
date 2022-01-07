; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggenc.c_ogg_write_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggenc.c_ogg_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32*, i32* }
%struct.TYPE_11__ = type { i32, i32 }

@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @ogg_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ogg_write_header(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %50, %1
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %53

13:                                               ; preds = %7
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %16, i64 %18
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %3, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %26, i64 %28
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ogg_buffer_data(%struct.TYPE_14__* %23, %struct.TYPE_13__* %30, i32 %35, i32 %40, i32 0, i32 1)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, 2
  store i32 %46, i32* %44, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = call i32 @ogg_buffer_page(%struct.TYPE_14__* %47, %struct.TYPE_12__* %48)
  br label %50

50:                                               ; preds = %13
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %7

53:                                               ; preds = %7
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %109, %53
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %112

60:                                               ; preds = %54
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %63, i64 %65
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  store %struct.TYPE_13__* %67, %struct.TYPE_13__** %6, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  store %struct.TYPE_12__* %70, %struct.TYPE_12__** %3, align 8
  store i32 1, i32* %4, align 4
  br label %71

71:                                               ; preds = %102, %60
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 3
  br i1 %73, label %74, label %105

74:                                               ; preds = %71
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %74
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ogg_buffer_data(%struct.TYPE_14__* %84, %struct.TYPE_13__* %85, i32 %92, i32 %99, i32 0, i32 1)
  br label %101

101:                                              ; preds = %83, %74
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %4, align 4
  br label %71

105:                                              ; preds = %71
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %108 = call i32 @ogg_buffer_page(%struct.TYPE_14__* %106, %struct.TYPE_12__* %107)
  br label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %54

112:                                              ; preds = %54
  %113 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 4
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %118 = call i32 @ogg_write_pages(%struct.TYPE_14__* %117, i32 2)
  ret i32 0
}

declare dso_local i32 @ogg_buffer_data(%struct.TYPE_14__*, %struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i32 @ogg_buffer_page(%struct.TYPE_14__*, %struct.TYPE_12__*) #1

declare dso_local i32 @ogg_write_pages(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
