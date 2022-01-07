; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_aiffenc.c_put_id3v2_tags.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_aiffenc.c_put_id3v2_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_13__ = type { i32 }

@ID3v2_DEFAULT_MAGIC = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_16__*)* @put_id3v2_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_id3v2_tags(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %13 = bitcast %struct.TYPE_13__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %11, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %12, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = icmp ne %struct.TYPE_14__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %91

30:                                               ; preds = %24, %2
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @MKTAG(i8 signext 73, i8 signext 68, i8 signext 51, i8 signext 32)
  %33 = call i32 @avio_wl32(i32* %31, i32 %32)
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @avio_wb32(i32* %34, i32 0)
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @avio_tell(i32* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ID3v2_DEFAULT_MAGIC, align 4
  %43 = call i32 @ff_id3v2_start(%struct.TYPE_13__* %10, i32* %38, i32 %41, i32 %42)
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %45 = call i32 @ff_id3v2_write_metadata(%struct.TYPE_15__* %44, %struct.TYPE_13__* %10)
  br label %46

46:                                               ; preds = %57, %30
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %48 = icmp ne %struct.TYPE_14__* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = call i32 @ff_id3v2_write_apic(%struct.TYPE_15__* %50, %struct.TYPE_13__* %10, i32* %52)
  store i32 %53, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %91

57:                                               ; preds = %49
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  store %struct.TYPE_14__* %60, %struct.TYPE_14__** %12, align 8
  br label %46

61:                                               ; preds = %46
  %62 = load i32*, i32** %11, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ff_id3v2_finish(%struct.TYPE_13__* %10, i32* %62, i32 %65)
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @avio_tell(i32* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = sub nsw i32 %69, %70
  store i32 %71, i32* %9, align 4
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sub nsw i32 %73, 4
  %75 = load i32, i32* @SEEK_SET, align 4
  %76 = call i32 @avio_seek(i32* %72, i32 %74, i32 %75)
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @avio_wb32(i32* %77, i32 %78)
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @SEEK_SET, align 4
  %83 = call i32 @avio_seek(i32* %80, i32 %81, i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = and i32 %84, 1
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %61
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @avio_w8(i32* %88, i32 0)
  br label %90

90:                                               ; preds = %87, %61
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %55, %29
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @avio_wl32(i32*, i32) #2

declare dso_local i32 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #2

declare dso_local i32 @avio_wb32(i32*, i32) #2

declare dso_local i32 @avio_tell(i32*) #2

declare dso_local i32 @ff_id3v2_start(%struct.TYPE_13__*, i32*, i32, i32) #2

declare dso_local i32 @ff_id3v2_write_metadata(%struct.TYPE_15__*, %struct.TYPE_13__*) #2

declare dso_local i32 @ff_id3v2_write_apic(%struct.TYPE_15__*, %struct.TYPE_13__*, i32*) #2

declare dso_local i32 @ff_id3v2_finish(%struct.TYPE_13__*, i32*, i32) #2

declare dso_local i32 @avio_seek(i32*, i32, i32) #2

declare dso_local i32 @avio_w8(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
