; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_xcbgrab.c_xcbgrab_reposition.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_xcbgrab.c_xcbgrab_reposition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, i64 }

@EIO = common dso_local global i32 0, align 4
@FOLLOW_CENTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_8__*, %struct.TYPE_9__*)* @xcbgrab_reposition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcbgrab_reposition(%struct.TYPE_11__* %0, %struct.TYPE_8__* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %8, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = icmp ne %struct.TYPE_8__* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %3
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = icmp ne %struct.TYPE_9__* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40, %3
  %44 = load i32, i32* @EIO, align 4
  %45 = call i32 @AVERROR(i32 %44)
  store i32 %45, i32* %4, align 4
  br label %149

46:                                               ; preds = %40
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %14, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @FOLLOW_CENTER, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %46
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %11, align 4
  %59 = sdiv i32 %58, 2
  %60 = sub nsw i32 %57, %59
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %12, align 4
  %63 = sdiv i32 %62, 2
  %64 = sub nsw i32 %61, %63
  store i32 %64, i32* %10, align 4
  br label %124

65:                                               ; preds = %46
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* %13, align 4
  %73 = sub nsw i32 %71, %72
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %74, %75
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i32, i32* %13, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %19, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %17, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %65
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %17, align 4
  %88 = sub nsw i32 %86, %87
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %9, align 4
  br label %102

91:                                               ; preds = %65
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %14, align 4
  %98 = sub nsw i32 %96, %97
  %99 = load i32, i32* %9, align 4
  %100 = sub nsw i32 %99, %98
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %95, %91
  br label %102

102:                                              ; preds = %101, %85
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %19, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %19, align 4
  %109 = sub nsw i32 %107, %108
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %10, align 4
  br label %123

112:                                              ; preds = %102
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %18, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %112
  %117 = load i32, i32* %18, align 4
  %118 = load i32, i32* %15, align 4
  %119 = sub nsw i32 %117, %118
  %120 = load i32, i32* %10, align 4
  %121 = sub nsw i32 %120, %119
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %116, %112
  br label %123

123:                                              ; preds = %122, %106
  br label %124

124:                                              ; preds = %123, %56
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @FFMAX(i32 0, i32 %125)
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = sub nsw i64 %129, %131
  %133 = call i8* @FFMIN(i32 %126, i64 %132)
  %134 = ptrtoint i8* %133 to i32
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @FFMAX(i32 0, i32 %137)
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = sub nsw i64 %141, %143
  %145 = call i8* @FFMIN(i32 %138, i64 %144)
  %146 = ptrtoint i8* %145 to i32
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %124, %43
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @FFMIN(i32, i64) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
