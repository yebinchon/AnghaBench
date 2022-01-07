; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flac_parser.c_find_new_headers.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flac_parser.c_find_new_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_8__* }

@MAX_FRAME_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @find_new_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_new_headers(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca [2 x i32], align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @av_fifo_size(i32 %16)
  %18 = load i32, i32* @MAX_FRAME_HEADER_SIZE, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sub nsw i32 %17, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 %21, %22
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32* @flac_fifo_read(%struct.TYPE_7__* %25, i32 %26, i32* %8)
  store i32* %27, i32** %10, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @find_headers_search(%struct.TYPE_7__* %28, i32* %29, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %33, 1
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %87

40:                                               ; preds = %2
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  %51 = sub nsw i32 %48, %50
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i32* @flac_fifo_read(%struct.TYPE_7__* %53, i32 %55, i32* %8)
  store i32* %56, i32** %10, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %62 = call i32 @AV_RB16(i32* %61)
  %63 = and i32 %62, 65534
  %64 = icmp eq i32 %63, 65528
  br i1 %64, label %65, label %72

65:                                               ; preds = %40
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @find_headers_search_validate(%struct.TYPE_7__* %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @FFMAX(i32 %69, i32 %70)
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %65, %40
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @find_headers_search(%struct.TYPE_7__* %75, i32* %76, i32 %77, i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @FFMAX(i32 %80, i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = sub nsw i32 %83, 1
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %72, %2
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %110, label %90

90:                                               ; preds = %87
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = icmp ne %struct.TYPE_8__* %93, null
  br i1 %94, label %95, label %110

95:                                               ; preds = %90
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  store %struct.TYPE_8__* %98, %struct.TYPE_8__** %5, align 8
  br label %99

99:                                               ; preds = %105, %95
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = icmp ne %struct.TYPE_8__* %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %102
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  store %struct.TYPE_8__* %108, %struct.TYPE_8__** %5, align 8
  br label %99

109:                                              ; preds = %99
  br label %110

110:                                              ; preds = %109, %90, %87
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local i32 @av_fifo_size(i32) #1

declare dso_local i32* @flac_fifo_read(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @find_headers_search(%struct.TYPE_7__*, i32*, i32, i32) #1

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32 @find_headers_search_validate(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
