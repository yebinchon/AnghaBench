; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_vorbisfile.c__ov_open1.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_vorbisfile.c__ov_open1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32*, i32, i32, i32, i32*, i64*, %struct.TYPE_11__, i32*, i8*, i8*, i32, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 (i8*, i32, i32)* }

@SEEK_CUR = common dso_local global i32 0, align 4
@PARTOPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_10__*, i8*, i64, i32 (i8*, i32, i32)*)* @_ov_open1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ov_open1(i8* %0, %struct.TYPE_10__* %1, i8* %2, i64 %3, i32 (i8*, i32, i32)* %4) #0 {
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i32 (i8*, i32, i32)* %4, i32 (i8*, i32, i32)** %16, align 8
  store i8* %0, i8** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %21 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %20, align 8
  %22 = icmp ne i32 (i8*, i32, i32)* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %25 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %24, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* @SEEK_CUR, align 4
  %28 = call i32 %25(i8* %26, i32 0, i32 %27)
  br label %30

29:                                               ; preds = %19, %5
  br label %30

30:                                               ; preds = %29, %23
  %31 = phi i32 [ %28, %23 ], [ -1, %29 ]
  store i32 %31, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = call i32 @memset(%struct.TYPE_10__* %32, i32 0, i32 96)
  %34 = load i8*, i8** %7, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 9
  store i32* %35, i32** %37, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 13
  %40 = bitcast %struct.TYPE_9__* %39 to i8*
  %41 = bitcast %struct.TYPE_9__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 8, i1 false)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 12
  %44 = call i32 @ogg_sync_init(i32* %43)
  %45 = load i8*, i8** %9, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %30
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 12
  %50 = load i64, i64* %10, align 8
  %51 = call i8* @ogg_sync_buffer(i32* %49, i64 %50)
  store i8* %51, i8** %15, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @memcpy(i8* %52, i8* %53, i32 %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 12
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @ogg_sync_wrote(i32* %58, i64 %59)
  br label %61

61:                                               ; preds = %47, %30
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @_ogg_calloc(i32 %72, i32 1)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 11
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @_ogg_calloc(i32 %78, i32 1)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 10
  store i8* %79, i8** %81, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 8
  %84 = call i32 @ogg_stream_init(%struct.TYPE_11__* %83, i32 -1)
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 11
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 10
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @_fetch_headers(%struct.TYPE_10__* %85, i8* %88, i8* %91, i8** %12, i32* %13, i32* null)
  store i32 %92, i32* %14, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %67
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 9
  store i32* null, i32** %96, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %98 = call i32 @ov_clear(%struct.TYPE_10__* %97)
  br label %154

99:                                               ; preds = %67
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 2
  %102 = call i8* @_ogg_calloc(i32 %101, i32 4)
  %103 = bitcast i8* %102 to i32*
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  store i32* %103, i32** %105, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  store i32 %109, i32* %115, align 4
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  store i32 %116, i32* %120, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  %125 = bitcast i32* %124 to i8*
  %126 = load i8*, i8** %12, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = mul i64 %128, 4
  %130 = trunc i64 %129 to i32
  %131 = call i32 @memcpy(i8* %125, i8* %126, i32 %130)
  %132 = call i8* @_ogg_calloc(i32 1, i32 8)
  %133 = bitcast i8* %132 to i64*
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 7
  store i64* %133, i64** %135, align 8
  %136 = call i8* @_ogg_calloc(i32 1, i32 4)
  %137 = bitcast i8* %136 to i32*
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 6
  store i32* %137, i32** %139, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 7
  %142 = load i64*, i64** %141, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 0
  store i64 0, i64* %143, align 8
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 6
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  store i32 %146, i32* %150, align 4
  %151 = load i32, i32* @PARTOPEN, align 4
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 4
  store i32 %151, i32* %153, align 4
  br label %154

154:                                              ; preds = %99, %94
  %155 = load i8*, i8** %12, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i8*, i8** %12, align 8
  %159 = call i32 @_ogg_free(i8* %158)
  br label %160

160:                                              ; preds = %157, %154
  %161 = load i32, i32* %14, align 4
  ret i32 %161
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ogg_sync_init(i32*) #1

declare dso_local i8* @ogg_sync_buffer(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ogg_sync_wrote(i32*, i64) #1

declare dso_local i8* @_ogg_calloc(i32, i32) #1

declare dso_local i32 @ogg_stream_init(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @_fetch_headers(%struct.TYPE_10__*, i8*, i8*, i8**, i32*, i32*) #1

declare dso_local i32 @ov_clear(%struct.TYPE_10__*) #1

declare dso_local i32 @_ogg_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
