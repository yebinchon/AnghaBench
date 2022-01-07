; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_floor1.c_floor1_inverse2.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_floor1.c_floor1_inverse2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_10__ = type { i32, i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32* }

@FLOOR1_fromdB_LOOKUP = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*, i8*, float*)* @floor1_inverse2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @floor1_inverse2(%struct.TYPE_12__* %0, i32* %1, i8* %2, float* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca float*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store float* %3, float** %9, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = bitcast i32* %21 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %10, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %11, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %12, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 2
  store i32 %41, i32* %13, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %155

44:                                               ; preds = %4
  %45 = load i8*, i8** %8, align 8
  %46 = bitcast i8* %45 to i32*
  store i32* %46, i32** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %47 = load i32*, i32** %15, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %49, %52
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %18, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  br label %65

57:                                               ; preds = %44
  %58 = load i32, i32* %18, align 4
  %59 = icmp sgt i32 %58, 255
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %63

61:                                               ; preds = %57
  %62 = load i32, i32* %18, align 4
  br label %63

63:                                               ; preds = %61, %60
  %64 = phi i32 [ 255, %60 ], [ %62, %61 ]
  br label %65

65:                                               ; preds = %63, %56
  %66 = phi i32 [ 0, %56 ], [ %64, %63 ]
  store i32 %66, i32* %18, align 4
  store i32 1, i32* %14, align 4
  br label %67

67:                                               ; preds = %130, %65
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %133

73:                                               ; preds = %67
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %19, align 4
  %81 = load i32*, i32** %15, align 8
  %82 = load i32, i32* %19, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 32767
  store i32 %86, i32* %20, align 4
  %87 = load i32, i32* %20, align 4
  %88 = load i32*, i32** %15, align 8
  %89 = load i32, i32* %19, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %87, %92
  br i1 %93, label %94, label %129

94:                                               ; preds = %73
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %19, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %16, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %20, align 4
  %106 = mul nsw i32 %105, %104
  store i32 %106, i32* %20, align 4
  %107 = load i32, i32* %20, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %94
  br label %118

110:                                              ; preds = %94
  %111 = load i32, i32* %20, align 4
  %112 = icmp sgt i32 %111, 255
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %116

114:                                              ; preds = %110
  %115 = load i32, i32* %20, align 4
  br label %116

116:                                              ; preds = %114, %113
  %117 = phi i32 [ 255, %113 ], [ %115, %114 ]
  br label %118

118:                                              ; preds = %116, %109
  %119 = phi i32 [ 0, %109 ], [ %117, %116 ]
  store i32 %119, i32* %20, align 4
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* %20, align 4
  %125 = load float*, float** %9, align 8
  %126 = call i32 @render_line(i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, float* %125)
  %127 = load i32, i32* %16, align 4
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %20, align 4
  store i32 %128, i32* %18, align 4
  br label %129

129:                                              ; preds = %118, %73
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %14, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %14, align 4
  br label %67

133:                                              ; preds = %67
  %134 = load i32, i32* %16, align 4
  store i32 %134, i32* %14, align 4
  br label %135

135:                                              ; preds = %151, %133
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %13, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %154

139:                                              ; preds = %135
  %140 = load float*, float** @FLOOR1_fromdB_LOOKUP, align 8
  %141 = load i32, i32* %18, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float, float* %140, i64 %142
  %144 = load float, float* %143, align 4
  %145 = load float*, float** %9, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float, float* %145, i64 %147
  %149 = load float, float* %148, align 4
  %150 = fmul float %149, %144
  store float %150, float* %148, align 4
  br label %151

151:                                              ; preds = %139
  %152 = load i32, i32* %14, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %14, align 4
  br label %135

154:                                              ; preds = %135
  store i32 1, i32* %5, align 4
  br label %162

155:                                              ; preds = %4
  %156 = load float*, float** %9, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = mul i64 4, %158
  %160 = trunc i64 %159 to i32
  %161 = call i32 @memset(float* %156, i32 0, i32 %160)
  store i32 0, i32* %5, align 4
  br label %162

162:                                              ; preds = %155, %154
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @render_line(i32, i32, i32, i32, i32, float*) #1

declare dso_local i32 @memset(float*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
