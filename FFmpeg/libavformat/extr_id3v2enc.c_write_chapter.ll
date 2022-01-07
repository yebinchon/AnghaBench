; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2enc.c_write_chapter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2enc.c_write_chapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@__const.write_chapter.time_base = private unnamed_addr constant %struct.TYPE_10__ { i32 1, i32 1000 }, align 4
@.str = private unnamed_addr constant [5 x i8] c"ch%d\00", align 1
@ID3v2_HEADER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_9__*, i32, i32)* @write_chapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_chapter(%struct.TYPE_11__* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [123 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = bitcast %struct.TYPE_10__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.TYPE_10__* @__const.write_chapter.time_base to i8*), i64 8, i1 false)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %21, i64 %23
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %26 = call i32 @avio_open_dyn_buf(i32** %12)
  store i32 %26, i32* %17, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %109

29:                                               ; preds = %4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = bitcast %struct.TYPE_10__* %9 to i64*
  %37 = load i64, i64* %36, align 4
  %38 = call i32 @av_rescale_q(i32 %32, i32 %35, i64 %37)
  store i32 %38, i32* %15, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = bitcast %struct.TYPE_10__* %9 to i64*
  %46 = load i64, i64* %45, align 4
  %47 = call i32 @av_rescale_q(i32 %41, i32 %44, i64 %46)
  store i32 %47, i32* %16, align 4
  %48 = getelementptr inbounds [123 x i8], [123 x i8]* %13, i64 0, i64 0
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @snprintf(i8* %48, i32 122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %12, align 8
  %52 = getelementptr inbounds [123 x i8], [123 x i8]* %13, i64 0, i64 0
  %53 = call i64 @avio_put_str(i32* %51, i8* %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @avio_wb32(i32* %60, i32 %61)
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %16, align 4
  %65 = call i32 @avio_wb32(i32* %63, i32 %64)
  %66 = load i32*, i32** %12, align 8
  %67 = call i32 @avio_wb32(i32* %66, i32 -1)
  %68 = load i32*, i32** %12, align 8
  %69 = call i32 @avio_wb32(i32* %68, i32 -1)
  %70 = load i32*, i32** %12, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @write_metadata(i32* %70, i32* %72, %struct.TYPE_9__* %73, i32 %74)
  store i32 %75, i32* %17, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %29
  br label %109

78:                                               ; preds = %29
  %79 = load i32*, i32** %12, align 8
  %80 = call i32 @avio_close_dyn_buf(i32* %79, i32** %11)
  store i32 %80, i32* %14, align 4
  %81 = load i64, i64* @ID3v2_HEADER_SIZE, align 8
  %82 = add nsw i64 16, %81
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %82
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %84, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @MKBETAG(i8 signext 67, i8 signext 72, i8 signext 65, i8 signext 80)
  %93 = call i32 @avio_wb32(i32* %91, i32 %92)
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @avio_wb32(i32* %96, i32 %97)
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @avio_wb16(i32* %101, i32 0)
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @avio_write(i32* %105, i32* %106, i32 %107)
  br label %109

109:                                              ; preds = %78, %77, %28
  %110 = load i32*, i32** %12, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i32*, i32** %11, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load i32*, i32** %12, align 8
  %117 = call i32 @avio_close_dyn_buf(i32* %116, i32** %11)
  br label %118

118:                                              ; preds = %115, %112, %109
  %119 = call i32 @av_freep(i32** %11)
  %120 = load i32, i32* %17, align 4
  ret i32 %120
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @avio_open_dyn_buf(i32**) #2

declare dso_local i32 @av_rescale_q(i32, i32, i64) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i64 @avio_put_str(i32*, i8*) #2

declare dso_local i32 @avio_wb32(i32*, i32) #2

declare dso_local i32 @write_metadata(i32*, i32*, %struct.TYPE_9__*, i32) #2

declare dso_local i32 @avio_close_dyn_buf(i32*, i32**) #2

declare dso_local i32 @MKBETAG(i8 signext, i8 signext, i8 signext, i8 signext) #2

declare dso_local i32 @avio_wb16(i32*, i32) #2

declare dso_local i32 @avio_write(i32*, i32*, i32) #2

declare dso_local i32 @av_freep(i32**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
