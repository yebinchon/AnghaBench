; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dhav.c_dhav_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dhav.c_dhav_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"DAHUA\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"DHAV\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@AVFMTCTX_NOHEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @dhav_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dhav_read_header(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca [5 x i32], align 16
  %5 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %3, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = call i32 @ffio_ensure_seekback(%struct.TYPE_13__* %11, i32 5)
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %17 = call i32 @avio_read(%struct.TYPE_13__* %15, i32* %16, i32 20)
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %19 = call i32 @memcmp(i32* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %25 = call i32 @avio_skip(%struct.TYPE_13__* %24, i32 1019)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = call i8* @avio_tell(%struct.TYPE_13__* %28)
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %105

33:                                               ; preds = %1
  %34 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %35 = call i32 @memcmp(i32* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %33
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = load i32, i32* @SEEK_CUR, align 4
  %42 = call i32 @avio_seek(%struct.TYPE_13__* %40, i32 -5, i32 %41)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = call i8* @avio_tell(%struct.TYPE_13__* %45)
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %104

50:                                               ; preds = %33
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %103

57:                                               ; preds = %50
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = call i32 @avio_size(%struct.TYPE_13__* %63)
  %65 = sub nsw i32 %64, 8
  %66 = load i32, i32* @SEEK_SET, align 4
  %67 = call i32 @avio_seek(%struct.TYPE_13__* %60, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %94, %57
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = call i32 @avio_rl32(%struct.TYPE_13__* %71)
  %73 = call i32 @MKTAG(i8 signext 100, i8 signext 104, i8 signext 97, i8 signext 118)
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %102

75:                                               ; preds = %68
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = call i32 @avio_rl32(%struct.TYPE_13__* %78)
  %80 = add nsw i32 %79, 8
  store i32 %80, i32* %5, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = call i8* @avio_tell(%struct.TYPE_13__* %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %75
  br label %102

94:                                               ; preds = %75
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sub nsw i32 0, %98
  %100 = load i32, i32* @SEEK_CUR, align 4
  %101 = call i32 @avio_seek(%struct.TYPE_13__* %97, i32 %99, i32 %100)
  br label %68

102:                                              ; preds = %93, %68
  br label %103

103:                                              ; preds = %102, %50
  br label %104

104:                                              ; preds = %103, %37
  br label %105

105:                                              ; preds = %104, %21
  %106 = load i32, i32* @AVFMTCTX_NOHEADER, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  store i32 -1, i32* %112, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 2
  store i32 -1, i32* %114, align 4
  ret i32 0
}

declare dso_local i32 @ffio_ensure_seekback(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @avio_read(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @avio_skip(%struct.TYPE_13__*, i32) #1

declare dso_local i8* @avio_tell(%struct.TYPE_13__*) #1

declare dso_local i32 @avio_seek(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @avio_size(%struct.TYPE_13__*) #1

declare dso_local i32 @avio_rl32(%struct.TYPE_13__*) #1

declare dso_local i32 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
