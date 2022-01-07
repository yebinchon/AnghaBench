; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_aviobuf.c_ffio_fdopen.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_aviobuf.c_ffio_fdopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32*, i32, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_15__*, i32, i64, i64, i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }

@IO_BUFFER_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@io_read_packet = common dso_local global i32 0, align 4
@io_write_packet = common dso_local global i32 0, align 4
@io_seek = common dso_local global i32 0, align 4
@AVIO_FLAG_DIRECT = common dso_local global i32 0, align 4
@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@io_read_pause = common dso_local global i32 0, align 4
@io_read_seek = common dso_local global i32 0, align 4
@AVIO_SEEKABLE_TIME = common dso_local global i32 0, align 4
@io_short_seek = common dso_local global i32 0, align 4
@ff_avio_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ffio_fdopen(%struct.TYPE_18__** %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__**, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_18__** %0, %struct.TYPE_18__*** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %7, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %8, align 4
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @IO_BUFFER_SIZE, align 4
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.TYPE_16__* @av_malloc(i32 %20)
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %7, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %23 = icmp ne %struct.TYPE_16__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = call i32 @AVERROR(i32 %25)
  store i32 %26, i32* %3, align 4
  br label %166

27:                                               ; preds = %19
  %28 = call %struct.TYPE_16__* @av_mallocz(i32 8)
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %6, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %30 = icmp ne %struct.TYPE_16__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %161

32:                                               ; preds = %27
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  store %struct.TYPE_17__* %33, %struct.TYPE_17__** %35, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %42 = and i32 %40, %41
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %44 = load i32, i32* @io_read_packet, align 4
  %45 = load i32, i32* @io_write_packet, align 4
  %46 = load i32, i32* @io_seek, align 4
  %47 = call %struct.TYPE_18__* @avio_alloc_context(%struct.TYPE_16__* %36, i32 %37, i32 %42, %struct.TYPE_16__* %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  store %struct.TYPE_18__* %47, %struct.TYPE_18__** %48, align 8
  %49 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = icmp ne %struct.TYPE_18__* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %32
  br label %161

53:                                               ; preds = %32
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = call i8* @av_strdup(i64 %56)
  %58 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 9
  store i8* %57, i8** %60, align 8
  %61 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 9
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %74, label %66

66:                                               ; preds = %53
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %73 = call i32 @avio_closep(%struct.TYPE_18__** %72)
  br label %161

74:                                               ; preds = %66, %53
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = call i8* @av_strdup(i64 %77)
  %79 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 8
  store i8* %78, i8** %81, align 8
  %82 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 8
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %74
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %94 = call i32 @avio_closep(%struct.TYPE_18__** %93)
  br label %161

95:                                               ; preds = %87, %74
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @AVIO_FLAG_DIRECT, align 4
  %100 = and i32 %98, %99
  %101 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %95
  br label %111

109:                                              ; preds = %95
  %110 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  br label %111

111:                                              ; preds = %109, %108
  %112 = phi i32 [ 0, %108 ], [ %110, %109 ]
  %113 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 4
  store i32 %112, i32* %115, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 7
  store i32 %122, i32* %125, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %127, align 8
  %129 = icmp ne %struct.TYPE_15__* %128, null
  br i1 %129, label %130, label %153

130:                                              ; preds = %111
  %131 = load i32, i32* @io_read_pause, align 4
  %132 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 6
  store i32 %131, i32* %134, align 4
  %135 = load i32, i32* @io_read_seek, align 4
  %136 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 5
  store i32 %135, i32* %138, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %130
  %146 = load i32, i32* @AVIO_SEEKABLE_TIME, align 4
  %147 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %146
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %145, %130
  br label %153

153:                                              ; preds = %152, %111
  %154 = load i32, i32* @io_short_seek, align 4
  %155 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 3
  store i32 %154, i32* %157, align 8
  %158 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 2
  store i32* @ff_avio_class, i32** %160, align 8
  store i32 0, i32* %3, align 4
  br label %166

161:                                              ; preds = %92, %71, %52, %31
  %162 = call i32 @av_freep(%struct.TYPE_16__** %6)
  %163 = call i32 @av_freep(%struct.TYPE_16__** %7)
  %164 = load i32, i32* @ENOMEM, align 4
  %165 = call i32 @AVERROR(i32 %164)
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %161, %153, %24
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local %struct.TYPE_16__* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_16__* @av_mallocz(i32) #1

declare dso_local %struct.TYPE_18__* @avio_alloc_context(%struct.TYPE_16__*, i32, i32, %struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i8* @av_strdup(i64) #1

declare dso_local i32 @avio_closep(%struct.TYPE_18__**) #1

declare dso_local i32 @av_freep(%struct.TYPE_16__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
