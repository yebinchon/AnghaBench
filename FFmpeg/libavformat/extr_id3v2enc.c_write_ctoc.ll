; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2enc.c_write_ctoc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2enc.c_write_ctoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"toc\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ch%d\00", align 1
@ID3v2_HEADER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*, i32)* @write_ctoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_ctoc(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [123 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %104

19:                                               ; preds = %3
  %20 = call i32 @avio_open_dyn_buf(i32** %9)
  store i32 %20, i32* %12, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %92

23:                                               ; preds = %19
  %24 = load i32*, i32** %9, align 8
  %25 = call i64 @avio_put_str(i32* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %25
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @avio_w8(i32* %32, i32 3)
  %34 = load i32*, i32** %9, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @avio_w8(i32* %34, i32 %37)
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %58, %23
  %40 = load i32, i32* %13, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %39
  %46 = getelementptr inbounds [123 x i8], [123 x i8]* %10, i64 0, i64 0
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @snprintf(i8* %46, i32 122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds [123 x i8], [123 x i8]* %10, i64 0, i64 0
  %51 = call i64 @avio_put_str(i32* %49, i8* %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %51
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 4
  br label %58

58:                                               ; preds = %45
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %13, align 4
  br label %39

61:                                               ; preds = %39
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @avio_close_dyn_buf(i32* %62, i32** %8)
  store i32 %63, i32* %11, align 4
  %64 = load i64, i64* @ID3v2_HEADER_SIZE, align 8
  %65 = add nsw i64 16, %64
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %65
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @MKBETAG(i8 signext 67, i8 signext 84, i8 signext 79, i8 signext 67)
  %76 = call i32 @avio_wb32(i32 %74, i32 %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @avio_wb32(i32 %79, i32 %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @avio_wb16(i32 %84, i32 0)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @avio_write(i32 %88, i32* %89, i32 %90)
  br label %92

92:                                               ; preds = %61, %22
  %93 = load i32*, i32** %9, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load i32*, i32** %8, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32*, i32** %9, align 8
  %100 = call i32 @avio_close_dyn_buf(i32* %99, i32** %8)
  br label %101

101:                                              ; preds = %98, %95, %92
  %102 = call i32 @av_freep(i32** %8)
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %101, %18
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @avio_open_dyn_buf(i32**) #1

declare dso_local i64 @avio_put_str(i32*, i8*) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @avio_close_dyn_buf(i32*, i32**) #1

declare dso_local i32 @avio_wb32(i32, i32) #1

declare dso_local i32 @MKBETAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @avio_wb16(i32, i32) #1

declare dso_local i32 @avio_write(i32, i32*, i32) #1

declare dso_local i32 @av_freep(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
