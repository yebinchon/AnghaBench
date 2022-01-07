; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_tfrf_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_tfrf_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@mov_write_tfrf_tag.uuid = internal constant [16 x i32] [i32 212, i32 128, i32 126, i32 242, i32 202, i32 57, i32 70, i32 149, i32 142, i32 84, i32 38, i32 203, i32 158, i32 70, i32 167, i32 159], align 16
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"uuid\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, %struct.TYPE_7__*, i32)* @mov_write_tfrf_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_tfrf_tag(i32* %0, %struct.TYPE_8__* %1, %struct.TYPE_7__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* %9, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = mul nsw i32 16, %21
  %23 = add nsw i32 29, %22
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %108

27:                                               ; preds = %4
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SEEK_SET, align 4
  %38 = call i32 @avio_seek(i32* %28, i32 %36, i32 %37)
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @avio_wb32(i32* %39, i32 %40)
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @ffio_wfourcc(i32* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @avio_write(i32* %44, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @mov_write_tfrf_tag.uuid, i64 0, i64 0), i32 64)
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @avio_w8(i32* %46, i32 1)
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @avio_wb24(i32* %48, i32 0)
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @avio_w8(i32* %50, i32 %51)
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %82, %27
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %85

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %13, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @avio_wb64(i32* %62, i32 %70)
  %72 = load i32*, i32** %6, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @avio_wb64(i32* %72, i32 %80)
  br label %82

82:                                               ; preds = %57
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %53

85:                                               ; preds = %53
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %85
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %10, align 4
  %96 = sub nsw i32 %94, %95
  %97 = mul nsw i32 16, %96
  store i32 %97, i32* %14, align 4
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @avio_wb32(i32* %98, i32 %99)
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @ffio_wfourcc(i32* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i32*, i32** %6, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sub nsw i32 %104, 8
  %106 = call i32 @ffio_fill(i32* %103, i32 0, i32 %105)
  br label %107

107:                                              ; preds = %91, %85
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %107, %26
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_wb24(i32*, i32) #1

declare dso_local i32 @avio_wb64(i32*, i32) #1

declare dso_local i32 @ffio_fill(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
