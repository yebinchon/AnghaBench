; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbisenc.c_put_floor_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbisenc.c_put_floor_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*)* @put_floor_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_floor_header(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @put_bits(i32* %8, i32 16, i32 1)
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @put_bits(i32* %10, i32 5, i32 %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %31, %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @put_bits(i32* %22, i32 4, i32 %29)
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %15

34:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %117, %34
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %120

41:                                               ; preds = %35
  %42 = load i32*, i32** %3, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 7
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %50, 1
  %52 = call i32 @put_bits(i32* %42, i32 3, i32 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 7
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @put_bits(i32* %53, i32 2, i32 %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 7
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %41
  %73 = load i32*, i32** %3, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 7
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @put_bits(i32* %73, i32 8, i32 %81)
  br label %83

83:                                               ; preds = %72, %41
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 7
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 1, %91
  store i32 %92, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %113, %83
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %116

97:                                               ; preds = %93
  %98 = load i32*, i32** %3, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 7
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  %112 = call i32 @put_bits(i32* %98, i32 8, i32 %111)
  br label %113

113:                                              ; preds = %97
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %93

116:                                              ; preds = %93
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %35

120:                                              ; preds = %35
  %121 = load i32*, i32** %3, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %124, 1
  %126 = call i32 @put_bits(i32* %121, i32 2, i32 %125)
  %127 = load i32*, i32** %3, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @put_bits(i32* %127, i32 4, i32 %130)
  store i32 2, i32* %5, align 4
  br label %132

132:                                              ; preds = %152, %120
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %155

138:                                              ; preds = %132
  %139 = load i32*, i32** %3, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 6
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @put_bits(i32* %139, i32 %142, i32 %150)
  br label %152

152:                                              ; preds = %138
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %5, align 4
  br label %132

155:                                              ; preds = %132
  ret void
}

declare dso_local i32 @put_bits(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
