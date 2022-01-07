; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg_er.c_mpeg_er_decode_mb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg_er.c_mpeg_er_decode_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_10__, i64*, %struct.TYPE_8__, i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64* }
%struct.TYPE_8__ = type { i32 (i32)* }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Interlaced error concealment is not fully implemented\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, [2 x [4 x [2 x i32]]]*, i32, i32, i32, i32)* @mpeg_er_decode_mb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpeg_er_decode_mb(i8* %0, i32 %1, i32 %2, i32 %3, [2 x [4 x [2 x i32]]]* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x [4 x [2 x i32]]]*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store [2 x [4 x [2 x i32]]]* %4, [2 x [4 x [2 x i32]]]** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %19, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %13, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %17, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %18, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %16, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 16
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 15
  %44 = load i32, i32* %43, align 8
  %45 = load [2 x [4 x [2 x i32]]]*, [2 x [4 x [2 x i32]]]** %14, align 8
  %46 = bitcast [2 x [4 x [2 x i32]]]* %45 to i32****
  %47 = call i32 @memcpy(i32 %44, i32**** %46, i32 64)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %49 = call i32 @ff_init_block_index(%struct.TYPE_11__* %48)
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %51 = call i32 @ff_update_block_index(%struct.TYPE_11__* %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 14
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32 (i32)*, i32 (i32)** %54, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 10
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 %55(i32 %60)
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %9
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 14
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32 (i32)*, i32 (i32)** %69, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 10
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 6
  %75 = load i32, i32* %74, align 4
  %76 = call i32 %70(i32 %75)
  br label %77

77:                                               ; preds = %66, %9
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 12
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %88, 16
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %89, %92
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %85, %94
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 %98, 16
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %95, %100
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 13
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 0
  store i64 %101, i64* %105, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 12
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = ashr i32 16, %119
  %121 = mul nsw i32 %116, %120
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 8
  %124 = load i32, i32* %123, align 8
  %125 = mul nsw i32 %121, %124
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %113, %126
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 9
  %133 = load i32, i32* %132, align 4
  %134 = ashr i32 16, %133
  %135 = mul nsw i32 %130, %134
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %127, %136
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 13
  %140 = load i64*, i64** %139, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 1
  store i64 %137, i64* %141, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 12
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i64*, i64** %146, align 8
  %148 = getelementptr inbounds i64, i64* %147, i64 2
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 8
  %156 = ashr i32 16, %155
  %157 = mul nsw i32 %152, %156
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 8
  %160 = load i32, i32* %159, align 8
  %161 = mul nsw i32 %157, %160
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %149, %162
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 9
  %169 = load i32, i32* %168, align 4
  %170 = ashr i32 16, %169
  %171 = mul nsw i32 %166, %170
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %163, %172
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 13
  %176 = load i64*, i64** %175, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 2
  store i64 %173, i64* %177, align 8
  %178 = load i32, i32* %11, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %77
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 11
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @AV_LOG_DEBUG, align 4
  %185 = call i32 @av_log(i32 %183, i32 %184, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %186

186:                                              ; preds = %180, %77
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 10
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @ff_mpv_reconstruct_mb(%struct.TYPE_11__* %187, i32* %190)
  ret void
}

declare dso_local i32 @memcpy(i32, i32****, i32) #1

declare dso_local i32 @ff_init_block_index(%struct.TYPE_11__*) #1

declare dso_local i32 @ff_update_block_index(%struct.TYPE_11__*) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @ff_mpv_reconstruct_mb(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
