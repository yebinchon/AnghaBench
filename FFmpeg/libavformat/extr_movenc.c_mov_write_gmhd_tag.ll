; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_gmhd_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_gmhd_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"gmhd\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"gmin\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"tmcd\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"gpmd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*)* @mov_write_gmhd_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_gmhd_tag(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @avio_tell(i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @avio_wb32(i32* %10, i32 0)
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @ffio_wfourcc(i32* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @avio_wb32(i32* %14, i32 24)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @ffio_wfourcc(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @avio_wb32(i32* %18, i32 0)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @avio_wb16(i32* %20, i32 64)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @avio_wb16(i32* %22, i32 32768)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @avio_wb16(i32* %24, i32 32768)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @avio_wb16(i32* %26, i32 32768)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @avio_wb16(i32* %28, i32 0)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @avio_wb16(i32* %30, i32 0)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @MKTAG(i8 signext 99, i8 signext 54, i8 signext 48, i8 signext 56)
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %2
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @avio_wb32(i32* %38, i32 44)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @ffio_wfourcc(i32* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @avio_wb16(i32* %42, i32 1)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @avio_wb32(i32* %44, i32 0)
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @avio_wb32(i32* %46, i32 0)
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @avio_wb32(i32* %48, i32 0)
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @avio_wb32(i32* %50, i32 1)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @avio_wb32(i32* %52, i32 0)
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @avio_wb32(i32* %54, i32 0)
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @avio_wb32(i32* %56, i32 0)
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @avio_wb32(i32* %58, i32 16384)
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @avio_wb16(i32* %60, i32 0)
  br label %62

62:                                               ; preds = %37, %2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @MKTAG(i8 signext 116, i8 signext 109, i8 signext 99, i8 signext 100)
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %62
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @avio_tell(i32* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @avio_wb32(i32* %73, i32 0)
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @ffio_wfourcc(i32* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32*, i32** %3, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = call i32 @mov_write_tcmi_tag(i32* %77, %struct.TYPE_6__* %78)
  %80 = load i32*, i32** %3, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @update_size(i32* %80, i32 %81)
  br label %104

83:                                               ; preds = %62
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @MKTAG(i8 signext 103, i8 signext 112, i8 signext 109, i8 signext 100)
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %83
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @avio_tell(i32* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @avio_wb32(i32* %94, i32 0)
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @ffio_wfourcc(i32* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %98 = load i32*, i32** %3, align 8
  %99 = call i32 @avio_wb32(i32* %98, i32 0)
  %100 = load i32*, i32** %3, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @update_size(i32* %100, i32 %101)
  br label %103

103:                                              ; preds = %91, %83
  br label %104

104:                                              ; preds = %103, %70
  %105 = load i32*, i32** %3, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @update_size(i32* %105, i32 %106)
  ret i32 %107
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @mov_write_tcmi_tag(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @update_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
