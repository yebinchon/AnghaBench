; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfenc.c_update_index.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfenc.c_update_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i8*, i8*, i8*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i8*, i8*, i8* }

@ASF_INDEX_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i8*, i8*, i8*)* @update_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_index(%struct.TYPE_5__* %0, i32 %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %12, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %18, %21
  br i1 %22, label %23, label %121

23:                                               ; preds = %5
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %9, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 4
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %28, %23
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %39, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @ASF_INDEX_BLOCK, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* @ASF_INDEX_BLOCK, align 4
  %49 = sub nsw i32 %48, 1
  %50 = xor i32 %49, -1
  %51 = and i32 %47, %50
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 6
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @av_reallocp_array(%struct.TYPE_7__** %55, i32 %58, i32 32)
  store i32 %59, i32* %14, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %44
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %6, align 4
  br label %141

65:                                               ; preds = %44
  br label %66

66:                                               ; preds = %65, %38
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %117, %66
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %120

74:                                               ; preds = %70
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 4
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 6
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  store i8* %77, i8** %84, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 3
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 6
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  store i8* %87, i8** %94, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @INT64_C(i32 10000000)
  %99 = mul nsw i32 %97, %98
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 6
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  store i32 %99, i32* %106, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 6
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  store i8* %109, i8** %116, align 8
  br label %117

117:                                              ; preds = %74
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %13, align 4
  br label %70

120:                                              ; preds = %70
  br label %121

121:                                              ; preds = %120, %5
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = call i32 @FFMAX(i32 %124, i8* %125)
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 5
  store i32 %126, i32* %128, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 4
  store i8* %129, i8** %131, align 8
  %132 = load i8*, i8** %10, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 3
  store i8* %132, i8** %134, align 8
  %135 = load i8*, i8** %11, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 2
  store i8* %135, i8** %137, align 8
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  store i32 0, i32* %6, align 4
  br label %141

141:                                              ; preds = %121, %61
  %142 = load i32, i32* %6, align 4
  ret i32 %142
}

declare dso_local i32 @av_reallocp_array(%struct.TYPE_7__**, i32, i32) #1

declare dso_local i32 @INT64_C(i32) #1

declare dso_local i32 @FFMAX(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
