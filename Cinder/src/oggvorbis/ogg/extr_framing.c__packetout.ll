; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/ogg/extr_framing.c__packetout.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/ogg/extr_framing.c__packetout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, i64, i64, i32*, i64 }
%struct.TYPE_6__ = type { i32, i32, i64, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_6__*, i32)* @_packetout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_packetout(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %153

23:                                               ; preds = %3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 1024
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %23
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  store i32 -1, i32* %4, align 4
  br label %153

42:                                               ; preds = %23
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = icmp ne %struct.TYPE_6__* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %153

49:                                               ; preds = %45, %42
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 255
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %10, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 512
  store i32 %67, i32* %11, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 256
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %94, %49
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, 255
  br i1 %78, label %79, label %99

79:                                               ; preds = %76
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = and i32 %88, 255
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %13, align 4
  %91 = and i32 %90, 512
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %79
  store i32 512, i32* %11, align 4
  br label %94

94:                                               ; preds = %93, %79
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %10, align 8
  %98 = add nsw i64 %97, %96
  store i64 %98, i64* %10, align 8
  br label %76

99:                                               ; preds = %76
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %101 = icmp ne %struct.TYPE_6__* %100, null
  br i1 %101, label %102, label %135

102:                                              ; preds = %99
  %103 = load i32, i32* %11, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 6
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %111, %114
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 5
  store i64 %115, i64* %117, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 4
  store i64 %120, i64* %122, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 5
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 8
  %132 = load i64, i64* %10, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %102, %99
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %135
  %139 = load i64, i64* %10, align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %142, %139
  store i64 %143, i64* %141, align 8
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %149, align 8
  br label %152

152:                                              ; preds = %138, %135
  store i32 1, i32* %4, align 4
  br label %153

153:                                              ; preds = %152, %48, %33, %22
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
