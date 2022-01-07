; ModuleID = '/home/carl/AnghaBench/FFmpeg/tools/extr_sidxindex.c_find_sidx.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tools/extr_sidxindex.c_find_sidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Tracks = type { i32, %struct.Track** }
%struct.Track = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }

@AVIO_FLAG_READ = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Tracks*, i32, i8*)* @find_sidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_sidx(%struct.Tracks* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.Tracks*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.Track*, align 8
  store %struct.Tracks* %0, %struct.Tracks** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* @AVIO_FLAG_READ, align 4
  %16 = call i32 @avio_open2(%struct.TYPE_7__** %8, i8* %14, i32 %15, i32* null, i32* null)
  store i32 %16, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %112

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %110, %19
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %111

26:                                               ; preds = %20
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %28 = call i64 @avio_tell(%struct.TYPE_7__* %27)
  store i64 %28, i64* %10, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = call i32 @avio_rb32(%struct.TYPE_7__* %29)
  store i32 %30, i32* %11, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = call i32 @avio_rb32(%struct.TYPE_7__* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 8
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %111

36:                                               ; preds = %26
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @MKBETAG(i8 signext 115, i8 signext 105, i8 signext 100, i8 signext 120)
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %96

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %92, %40
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.Tracks*, %struct.Tracks** %4, align 8
  %45 = getelementptr inbounds %struct.Tracks, %struct.Tracks* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %95

48:                                               ; preds = %42
  %49 = load %struct.Tracks*, %struct.Tracks** %4, align 8
  %50 = getelementptr inbounds %struct.Tracks, %struct.Tracks* %49, i32 0, i32 1
  %51 = load %struct.Track**, %struct.Track*** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.Track*, %struct.Track** %51, i64 %53
  %55 = load %struct.Track*, %struct.Track** %54, align 8
  store %struct.Track* %55, %struct.Track** %13, align 8
  %56 = load %struct.Track*, %struct.Track** %13, align 8
  %57 = getelementptr inbounds %struct.Track, %struct.Track* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %48
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.Track*, %struct.Track** %13, align 8
  %63 = getelementptr inbounds %struct.Track, %struct.Track* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.Track*, %struct.Track** %13, align 8
  %66 = getelementptr inbounds %struct.Track, %struct.Track* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  br label %91

67:                                               ; preds = %48
  %68 = load i64, i64* %10, align 8
  %69 = load %struct.Track*, %struct.Track** %13, align 8
  %70 = getelementptr inbounds %struct.Track, %struct.Track* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.Track*, %struct.Track** %13, align 8
  %73 = getelementptr inbounds %struct.Track, %struct.Track* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %71, %75
  %77 = icmp eq i64 %68, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %67
  %79 = load i64, i64* %10, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %79, %81
  %83 = load %struct.Track*, %struct.Track** %13, align 8
  %84 = getelementptr inbounds %struct.Track, %struct.Track* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %82, %85
  %87 = trunc i64 %86 to i32
  %88 = load %struct.Track*, %struct.Track** %13, align 8
  %89 = getelementptr inbounds %struct.Track, %struct.Track* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %78, %67
  br label %91

91:                                               ; preds = %90, %60
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %42

95:                                               ; preds = %42
  br label %96

96:                                               ; preds = %95, %36
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %98, %100
  %102 = load i32, i32* @SEEK_SET, align 4
  %103 = call i64 @avio_seek(%struct.TYPE_7__* %97, i64 %101, i32 %102)
  %104 = load i64, i64* %10, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %104, %106
  %108 = icmp ne i64 %103, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %96
  br label %111

110:                                              ; preds = %96
  br label %20

111:                                              ; preds = %109, %35, %20
  br label %112

112:                                              ; preds = %111, %18
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %114 = icmp ne %struct.TYPE_7__* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %117 = call i32 @avio_close(%struct.TYPE_7__* %116)
  br label %118

118:                                              ; preds = %115, %112
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i32 @avio_open2(%struct.TYPE_7__**, i8*, i32, i32*, i32*) #1

declare dso_local i64 @avio_tell(%struct.TYPE_7__*) #1

declare dso_local i32 @avio_rb32(%struct.TYPE_7__*) #1

declare dso_local i32 @MKBETAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i64 @avio_seek(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i32 @avio_close(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
