; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avienc.c_avi_add_ientry.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avienc.c_avi_add_ientry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__**, i32*, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_15__** }
%struct.TYPE_15__ = type { i32, i32, i64, i32 }
%struct.TYPE_13__ = type { i64 }

@AVI_INDEX_CLUSTER_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i8*, i32, i32)* @avi_add_ientry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avi_add_ientry(%struct.TYPE_14__* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %12, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %13, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %26, i64 %28
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %14, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %15, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @AVI_INDEX_CLUSTER_SIZE, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %16, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @AVI_INDEX_CLUSTER_SIZE, align 4
  %44 = srem i32 %42, %43
  store i32 %44, i32* %17, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sle i32 %47, %50
  br i1 %51, label %52, label %101

52:                                               ; preds = %5
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %54, align 8
  %56 = load i32, i32* %16, align 4
  %57 = add nsw i32 %56, 1
  %58 = call %struct.TYPE_15__** @av_realloc_f(%struct.TYPE_15__** %55, i32 8, i32 %57)
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  store %struct.TYPE_15__** %58, %struct.TYPE_15__*** %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %62, align 8
  %64 = icmp ne %struct.TYPE_15__** %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %52
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = call i32 @AVERROR(i32 %70)
  store i32 %71, i32* %6, align 4
  br label %186

72:                                               ; preds = %52
  %73 = load i32, i32* @AVI_INDEX_CLUSTER_SIZE, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = call %struct.TYPE_15__* @av_malloc(i32 %76)
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %79, align 8
  %81 = load i32, i32* %16, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %80, i64 %82
  store %struct.TYPE_15__* %77, %struct.TYPE_15__** %83, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %85, align 8
  %87 = load i32, i32* %16, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %86, i64 %88
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = icmp ne %struct.TYPE_15__* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %72
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = call i32 @AVERROR(i32 %93)
  store i32 %94, i32* %6, align 4
  br label %186

95:                                               ; preds = %72
  %96 = load i32, i32* @AVI_INDEX_CLUSTER_SIZE, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %95, %5
  %102 = load i8*, i8** %9, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %119

104:                                              ; preds = %101
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %106, align 8
  %108 = load i32, i32* %16, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %107, i64 %109
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %110, align 8
  %112 = load i32, i32* %17, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = call i32 @memcpy(i32 %116, i8* %117, i32 4)
  br label %133

119:                                              ; preds = %101
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %121, align 8
  %123 = load i32, i32* %16, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %122, i64 %124
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = load i32, i32* %17, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @memset(i32 %131, i32 0, i32 4)
  br label %133

133:                                              ; preds = %119, %104
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %136, align 8
  %138 = load i32, i32* %16, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %137, i64 %139
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = load i32, i32* %17, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  store i32 %134, i32* %145, align 8
  %146 = load i32*, i32** %13, align 8
  %147 = call i64 @avio_tell(i32* %146)
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %147, %150
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %153, align 8
  %155 = load i32, i32* %16, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %154, i64 %156
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %157, align 8
  %159 = load i32, i32* %17, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 2
  store i64 %151, i64* %162, align 8
  %163 = load i32, i32* %11, align 4
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %165, align 8
  %167 = load i32, i32* %16, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %166, i64 %168
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %169, align 8
  %171 = load i32, i32* %17, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 1
  store i32 %163, i32* %174, align 4
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %11, align 4
  %179 = call i32 @FFMAX(i32 %177, i32 %178)
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 8
  store i32 0, i32* %6, align 4
  br label %186

186:                                              ; preds = %133, %92, %65
  %187 = load i32, i32* %6, align 4
  ret i32 %187
}

declare dso_local %struct.TYPE_15__** @av_realloc_f(%struct.TYPE_15__**, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_15__* @av_malloc(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @avio_tell(i32*) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
