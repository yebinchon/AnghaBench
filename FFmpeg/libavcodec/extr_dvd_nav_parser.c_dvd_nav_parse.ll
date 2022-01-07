; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvd_nav_parser.c_dvd_nav_parse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvd_nav_parser.c_dvd_nav_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i32*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@AV_PICTURE_TYPE_NONE = common dso_local global i32 0, align 4
@PCI_SIZE = common dso_local global i32 0, align 4
@DSI_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i32**, i32*, i32*, i32)* @dvd_nav_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvd_nav_parse(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i32** %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %23 = load i32, i32* @AV_PICTURE_TYPE_NONE, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  store i32 90000, i32* %31, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %119

34:                                               ; preds = %6
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %119

37:                                               ; preds = %34
  %38 = load i32*, i32** %11, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %118 [
    i32 0, label %41
    i32 1, label %85
  ]

41:                                               ; preds = %37
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @PCI_SIZE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %84

45:                                               ; preds = %41
  %46 = load i32*, i32** %11, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = call i8* @AV_RB32(i32* %47)
  store i8* %48, i8** %16, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 13
  %51 = call i8* @AV_RB32(i32* %50)
  store i8* %51, i8** %17, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 17
  %54 = call i8* @AV_RB32(i32* %53)
  store i8* %54, i8** %18, align 8
  %55 = load i8*, i8** %18, align 8
  %56 = load i8*, i8** %17, align 8
  %57 = icmp ugt i8* %55, %56
  br i1 %57, label %58, label %83

58:                                               ; preds = %45
  %59 = load i8*, i8** %16, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** %17, align 8
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load i8*, i8** %18, align 8
  %67 = load i8*, i8** %17, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* @PCI_SIZE, align 4
  %79 = call i32 @memcpy(i32* %76, i32* %77, i32 %78)
  %80 = load i32, i32* @PCI_SIZE, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  store i32 1, i32* %15, align 4
  br label %83

83:                                               ; preds = %58, %45
  br label %84

84:                                               ; preds = %83, %41
  br label %118

85:                                               ; preds = %37
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @DSI_SIZE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %117

89:                                               ; preds = %85
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @PCI_SIZE, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %117

95:                                               ; preds = %89
  %96 = load i32*, i32** %11, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 5
  %98 = call i8* @AV_RB32(i32* %97)
  store i8* %98, i8** %19, align 8
  %99 = load i8*, i8** %19, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = icmp eq i8* %99, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %95
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %107, i64 %111
  %113 = load i32*, i32** %11, align 8
  %114 = load i32, i32* @DSI_SIZE, align 4
  %115 = call i32 @memcpy(i32* %112, i32* %113, i32 %114)
  store i32 1, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %116

116:                                              ; preds = %104, %95
  br label %117

117:                                              ; preds = %116, %89, %85
  br label %118

118:                                              ; preds = %37, %117, %84
  br label %119

119:                                              ; preds = %118, %34, %6
  %120 = load i32, i32* %15, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %122, %119
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 2
  store i32 0, i32* %127, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  store i8* inttoptr (i64 4294967295 to i8*), i8** %129, align 8
  br label %130

130:                                              ; preds = %125, %122
  %131 = load i32, i32* %14, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32**, i32*** %9, align 8
  store i32* %136, i32** %137, align 8
  %138 = load i32*, i32** %10, align 8
  store i32 8, i32* %138, align 4
  br label %142

139:                                              ; preds = %130
  %140 = load i32**, i32*** %9, align 8
  store i32* null, i32** %140, align 8
  %141 = load i32*, i32** %10, align 8
  store i32 0, i32* %141, align 4
  br label %142

142:                                              ; preds = %139, %133
  %143 = load i32, i32* %12, align 4
  ret i32 %143
}

declare dso_local i8* @AV_RB32(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
