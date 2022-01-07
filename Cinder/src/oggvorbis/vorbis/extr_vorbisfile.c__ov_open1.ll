; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c__ov_open1.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c__ov_open1.c"
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
  %12 = alloca i64*, align 8
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
  store i64* null, i64** %12, align 8
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
  br i1 %46, label %47, label %60

47:                                               ; preds = %30
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 12
  %50 = load i64, i64* %10, align 8
  %51 = call i8* @ogg_sync_buffer(i32* %49, i64 %50)
  store i8* %51, i8** %15, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i32 (i8*, ...) @memcpy(i8* %52, i8* %53, i64 %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 12
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @ogg_sync_wrote(i32* %57, i64 %58)
  br label %60

60:                                               ; preds = %47, %30
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, -1
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @_ogg_calloc(i32 %71, i32 1)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 11
  store i8* %72, i8** %74, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @_ogg_calloc(i32 %77, i32 1)
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 10
  store i8* %78, i8** %80, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 8
  %83 = call i32 @ogg_stream_init(%struct.TYPE_11__* %82, i32 -1)
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 11
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 10
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @_fetch_headers(%struct.TYPE_10__* %84, i8* %87, i8* %90, i64** %12, i32* %13, i32* null)
  store i32 %91, i32* %14, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %66
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 9
  store i32* null, i32** %95, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %97 = call i32 @ov_clear(%struct.TYPE_10__* %96)
  br label %152

98:                                               ; preds = %66
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, 2
  %101 = call i8* @_ogg_calloc(i32 %100, i32 4)
  %102 = bitcast i8* %101 to i32*
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  store i32* %102, i32** %104, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  store i32 %108, i32* %114, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  store i32 %115, i32* %119, align 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  %124 = bitcast i32* %123 to i8*
  %125 = load i64*, i64** %12, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = mul i64 %127, 4
  %129 = call i32 (i8*, ...) @memcpy(i8* %124, i64* %125, i64 %128)
  %130 = call i8* @_ogg_calloc(i32 1, i32 8)
  %131 = bitcast i8* %130 to i64*
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 7
  store i64* %131, i64** %133, align 8
  %134 = call i8* @_ogg_calloc(i32 1, i32 4)
  %135 = bitcast i8* %134 to i32*
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 6
  store i32* %135, i32** %137, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 7
  %140 = load i64*, i64** %139, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 0
  store i64 0, i64* %141, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 6
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  store i32 %144, i32* %148, align 4
  %149 = load i32, i32* @PARTOPEN, align 4
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 4
  br label %152

152:                                              ; preds = %98, %93
  %153 = load i64*, i64** %12, align 8
  %154 = icmp ne i64* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i64*, i64** %12, align 8
  %157 = call i32 @_ogg_free(i64* %156)
  br label %158

158:                                              ; preds = %155, %152
  %159 = load i32, i32* %14, align 4
  ret i32 %159
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ogg_sync_init(i32*) #1

declare dso_local i8* @ogg_sync_buffer(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, ...) #1

declare dso_local i32 @ogg_sync_wrote(i32*, i64) #1

declare dso_local i8* @_ogg_calloc(i32, i32) #1

declare dso_local i32 @ogg_stream_init(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @_fetch_headers(%struct.TYPE_10__*, i8*, i8*, i64**, i32*, i32*) #1

declare dso_local i32 @ov_clear(%struct.TYPE_10__*) #1

declare dso_local i32 @_ogg_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
