; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_zscale.c_format_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_zscale.c_format_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@AV_PIX_FMT_FLAG_FLOAT = common dso_local global i32 0, align 4
@ZIMG_PIXEL_FLOAT = common dso_local global i32 0, align 4
@ZIMG_PIXEL_WORD = common dso_local global i32 0, align 4
@ZIMG_PIXEL_BYTE = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_RGB = common dso_local global i32 0, align 4
@ZIMG_COLOR_RGB = common dso_local global i32 0, align 4
@ZIMG_COLOR_YUV = common dso_local global i32 0, align 4
@ZIMG_MATRIX_RGB = common dso_local global i32 0, align 4
@ZIMG_RANGE_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32, i32, i32, i32)* @format_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_init(%struct.TYPE_9__* %0, %struct.TYPE_11__* %1, %struct.TYPE_10__* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 11
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 10
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 9
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @AV_PIX_FMT_FLAG_FLOAT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %8
  %52 = load i32, i32* @ZIMG_PIXEL_FLOAT, align 4
  br label %67

53:                                               ; preds = %8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %59, 8
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* @ZIMG_PIXEL_WORD, align 4
  br label %65

63:                                               ; preds = %53
  %64 = load i32, i32* @ZIMG_PIXEL_BYTE, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  br label %67

67:                                               ; preds = %65, %51
  %68 = phi i32 [ %52, %51 ], [ %66, %65 ]
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 7
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @AV_PIX_FMT_FLAG_RGB, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = load i32, i32* @ZIMG_COLOR_RGB, align 4
  br label %81

79:                                               ; preds = %67
  %80 = load i32, i32* @ZIMG_COLOR_YUV, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @AV_PIX_FMT_FLAG_RGB, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i32, i32* @ZIMG_MATRIX_RGB, align 4
  br label %105

93:                                               ; preds = %81
  %94 = load i32, i32* %12, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @convert_matrix(i32 %99)
  br label %103

101:                                              ; preds = %93
  %102 = load i32, i32* %12, align 4
  br label %103

103:                                              ; preds = %101, %96
  %104 = phi i32 [ %100, %96 ], [ %102, %101 ]
  br label %105

105:                                              ; preds = %103, %91
  %106 = phi i32 [ %92, %91 ], [ %104, %103 ]
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @convert_primaries(i32 %114)
  br label %118

116:                                              ; preds = %105
  %117 = load i32, i32* %13, align 4
  br label %118

118:                                              ; preds = %116, %111
  %119 = phi i32 [ %115, %111 ], [ %117, %116 ]
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %14, align 4
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %129

124:                                              ; preds = %118
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @convert_trc(i32 %127)
  br label %131

129:                                              ; preds = %118
  %130 = load i32, i32* %14, align 4
  br label %131

131:                                              ; preds = %129, %124
  %132 = phi i32 [ %128, %124 ], [ %130, %129 ]
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @AV_PIX_FMT_FLAG_RGB, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %131
  %142 = load i32, i32* @ZIMG_RANGE_FULL, align 4
  br label %155

143:                                              ; preds = %131
  %144 = load i32, i32* %15, align 4
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @convert_range(i32 %149)
  br label %153

151:                                              ; preds = %143
  %152 = load i32, i32* %15, align 4
  br label %153

153:                                              ; preds = %151, %146
  %154 = phi i32 [ %150, %146 ], [ %152, %151 ]
  br label %155

155:                                              ; preds = %153, %141
  %156 = phi i32 [ %142, %141 ], [ %154, %153 ]
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 4
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %16, align 4
  %160 = icmp eq i32 %159, -1
  br i1 %160, label %161, label %166

161:                                              ; preds = %155
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @convert_chroma_location(i32 %164)
  br label %168

166:                                              ; preds = %155
  %167 = load i32, i32* %16, align 4
  br label %168

168:                                              ; preds = %166, %161
  %169 = phi i32 [ %165, %161 ], [ %167, %166 ]
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 5
  store i32 %169, i32* %171, align 4
  ret void
}

declare dso_local i32 @convert_matrix(i32) #1

declare dso_local i32 @convert_primaries(i32) #1

declare dso_local i32 @convert_trc(i32) #1

declare dso_local i32 @convert_range(i32) #1

declare dso_local i32 @convert_chroma_location(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
