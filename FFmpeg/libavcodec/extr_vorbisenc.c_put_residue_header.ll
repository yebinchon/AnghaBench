; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbisenc.c_put_residue_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbisenc.c_put_residue_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @put_residue_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_residue_header(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @put_bits(i32* %9, i32 16, i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @put_bits(i32* %14, i32 24, i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @put_bits(i32* %19, i32 24, i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  %29 = call i32 @put_bits(i32* %24, i32 24, i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = call i32 @put_bits(i32* %30, i32 6, i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @put_bits(i32* %36, i32 8, i32 %39)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %90, %2
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %93

47:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %69, %47
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 8
  br i1 %50, label %51, label %72

51:                                               ; preds = %48
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 6
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, -1
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %6, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %51
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %48

72:                                               ; preds = %48
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* %7, align 4
  %75 = and i32 %74, 7
  %76 = call i32 @put_bits(i32* %73, i32 3, i32 %75)
  %77 = load i32*, i32** %3, align 8
  %78 = load i32, i32* %7, align 4
  %79 = icmp sgt i32 %78, 7
  %80 = zext i1 %79 to i32
  %81 = call i32 @put_bits(i32* %77, i32 1, i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = icmp sgt i32 %82, 7
  br i1 %83, label %84, label %89

84:                                               ; preds = %72
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* %7, align 4
  %87 = ashr i32 %86, 3
  %88 = call i32 @put_bits(i32* %85, i32 5, i32 %87)
  br label %89

89:                                               ; preds = %84, %72
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %41

93:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %136, %93
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %139

100:                                              ; preds = %94
  store i32 0, i32* %8, align 4
  br label %101

101:                                              ; preds = %132, %100
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %102, 8
  br i1 %103, label %104, label %135

104:                                              ; preds = %101
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 6
  %107 = load i32**, i32*** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32*, i32** %107, i64 %109
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, -1
  br i1 %116, label %117, label %131

117:                                              ; preds = %104
  %118 = load i32*, i32** %3, align 8
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 6
  %121 = load i32**, i32*** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @put_bits(i32* %118, i32 8, i32 %129)
  br label %131

131:                                              ; preds = %117, %104
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %101

135:                                              ; preds = %101
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %5, align 4
  br label %94

139:                                              ; preds = %94
  ret void
}

declare dso_local i32 @put_bits(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
