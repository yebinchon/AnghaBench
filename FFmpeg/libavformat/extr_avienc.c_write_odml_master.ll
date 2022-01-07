; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avienc.c_write_odml_master.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avienc.c_write_odml_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__**, %struct.TYPE_11__*, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"JUNK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32)* @write_odml_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_odml_master(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca [5 x i8], align 1
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %6, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %20, i64 %22
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %7, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %8, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %9, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @ff_start_tag(i32* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @avio_wl16(i32* %36, i32 4)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @avio_w8(i32* %38, i32 0)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @avio_w8(i32* %40, i32 0)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @avio_wl32(i32* %42, i32 0)
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @avi_stream2fourcc(i8* %45, i32 %46, i32 %49)
  %51 = call i32 @ffio_wfourcc(i32* %44, i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @avio_wl64(i32* %52, i32 0)
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @avio_wl32(i32* %54, i32 0)
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %66, %2
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %60, 2
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @avio_wl64(i32* %64, i32 0)
  br label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %56

69:                                               ; preds = %56
  %70 = load i32*, i32** %5, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ff_end_tag(i32* %70, i32 %74)
  ret void
}

declare dso_local i32 @ff_start_tag(i32*, i8*) #1

declare dso_local i32 @avio_wl16(i32*, i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_wl32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i32) #1

declare dso_local i32 @avi_stream2fourcc(i8*, i32, i32) #1

declare dso_local i32 @avio_wl64(i32*, i32) #1

declare dso_local i32 @ff_end_tag(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
