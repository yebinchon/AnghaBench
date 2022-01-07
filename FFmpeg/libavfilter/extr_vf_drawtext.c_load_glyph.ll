; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_drawtext.c_load_glyph.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_drawtext.c_load_glyph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__*, i32, i64, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.AVTreeNode = type { i32, %struct.AVTreeNode*, i32, i32, i32, i32, i32, %struct.AVTreeNode*, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FT_RENDER_MODE_NORMAL = common dso_local global i32 0, align 4
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@ft_glyph_bbox_pixels = common dso_local global i32 0, align 4
@glyph_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.AVTreeNode**, i32)* @load_glyph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_glyph(%struct.TYPE_11__* %0, %struct.AVTreeNode** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.AVTreeNode**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.AVTreeNode*, align 8
  %11 = alloca %struct.AVTreeNode*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.AVTreeNode** %1, %struct.AVTreeNode*** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %8, align 8
  store %struct.AVTreeNode* null, %struct.AVTreeNode** %11, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @FT_Load_Char(%struct.TYPE_12__* %18, i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = call i32 @AVERROR(i32 %26)
  store i32 %27, i32* %4, align 4
  br label %166

28:                                               ; preds = %3
  %29 = call %struct.AVTreeNode* @av_mallocz(i32 56)
  store %struct.AVTreeNode* %29, %struct.AVTreeNode** %10, align 8
  %30 = load %struct.AVTreeNode*, %struct.AVTreeNode** %10, align 8
  %31 = icmp ne %struct.AVTreeNode* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = call i32 @AVERROR(i32 %33)
  store i32 %34, i32* %12, align 4
  br label %155

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.AVTreeNode*, %struct.AVTreeNode** %10, align 8
  %38 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %37, i32 0, i32 9
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.AVTreeNode*, %struct.AVTreeNode** %10, align 8
  %43 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %42, i32 0, i32 8
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = load %struct.AVTreeNode*, %struct.AVTreeNode** %10, align 8
  %50 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %49, i32 0, i32 1
  %51 = call i64 @FT_Get_Glyph(%struct.TYPE_13__* %48, %struct.AVTreeNode** %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %35
  %54 = load i32, i32* @EINVAL, align 4
  %55 = call i32 @AVERROR(i32 %54)
  store i32 %55, i32* %12, align 4
  br label %155

56:                                               ; preds = %35
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %92

61:                                               ; preds = %56
  %62 = load %struct.AVTreeNode*, %struct.AVTreeNode** %10, align 8
  %63 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %62, i32 0, i32 1
  %64 = load %struct.AVTreeNode*, %struct.AVTreeNode** %63, align 8
  %65 = load %struct.AVTreeNode*, %struct.AVTreeNode** %10, align 8
  %66 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %65, i32 0, i32 7
  store %struct.AVTreeNode* %64, %struct.AVTreeNode** %66, align 8
  %67 = load %struct.AVTreeNode*, %struct.AVTreeNode** %10, align 8
  %68 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %67, i32 0, i32 7
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @FT_Glyph_StrokeBorder(%struct.AVTreeNode** %68, i32 %71, i32 0, i32 0)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %61
  %75 = load %struct.AVTreeNode*, %struct.AVTreeNode** %10, align 8
  %76 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %75, i32 0, i32 7
  %77 = load i32, i32* @FT_RENDER_MODE_NORMAL, align 4
  %78 = call i64 @FT_Glyph_To_Bitmap(%struct.AVTreeNode** %76, i32 %77, i32 0, i32 1)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74, %61
  %81 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %81, i32* %12, align 4
  br label %155

82:                                               ; preds = %74
  %83 = load %struct.AVTreeNode*, %struct.AVTreeNode** %10, align 8
  %84 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %83, i32 0, i32 7
  %85 = load %struct.AVTreeNode*, %struct.AVTreeNode** %84, align 8
  %86 = bitcast %struct.AVTreeNode* %85 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %86, %struct.TYPE_9__** %9, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.AVTreeNode*, %struct.AVTreeNode** %10, align 8
  %91 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %82, %56
  %93 = load %struct.AVTreeNode*, %struct.AVTreeNode** %10, align 8
  %94 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %93, i32 0, i32 1
  %95 = load i32, i32* @FT_RENDER_MODE_NORMAL, align 4
  %96 = call i64 @FT_Glyph_To_Bitmap(%struct.AVTreeNode** %94, i32 %95, i32 0, i32 1)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %99, i32* %12, align 4
  br label %155

100:                                              ; preds = %92
  %101 = load %struct.AVTreeNode*, %struct.AVTreeNode** %10, align 8
  %102 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %101, i32 0, i32 1
  %103 = load %struct.AVTreeNode*, %struct.AVTreeNode** %102, align 8
  %104 = bitcast %struct.AVTreeNode* %103 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %104, %struct.TYPE_9__** %9, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.AVTreeNode*, %struct.AVTreeNode** %10, align 8
  %109 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.AVTreeNode*, %struct.AVTreeNode** %10, align 8
  %114 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.AVTreeNode*, %struct.AVTreeNode** %10, align 8
  %119 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = ashr i32 %127, 6
  %129 = load %struct.AVTreeNode*, %struct.AVTreeNode** %10, align 8
  %130 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.AVTreeNode*, %struct.AVTreeNode** %10, align 8
  %132 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %131, i32 0, i32 1
  %133 = load %struct.AVTreeNode*, %struct.AVTreeNode** %132, align 8
  %134 = load i32, i32* @ft_glyph_bbox_pixels, align 4
  %135 = load %struct.AVTreeNode*, %struct.AVTreeNode** %10, align 8
  %136 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %135, i32 0, i32 2
  %137 = call i32 @FT_Glyph_Get_CBox(%struct.AVTreeNode* %133, i32 %134, i32* %136)
  %138 = call %struct.AVTreeNode* (...) @av_tree_node_alloc()
  store %struct.AVTreeNode* %138, %struct.AVTreeNode** %11, align 8
  %139 = icmp ne %struct.AVTreeNode* %138, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %100
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = call i32 @AVERROR(i32 %141)
  store i32 %142, i32* %12, align 4
  br label %155

143:                                              ; preds = %100
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load %struct.AVTreeNode*, %struct.AVTreeNode** %10, align 8
  %147 = load i32, i32* @glyph_cmp, align 4
  %148 = call i32 @av_tree_insert(i32* %145, %struct.AVTreeNode* %146, i32 %147, %struct.AVTreeNode** %11)
  %149 = load %struct.AVTreeNode**, %struct.AVTreeNode*** %6, align 8
  %150 = icmp ne %struct.AVTreeNode** %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %143
  %152 = load %struct.AVTreeNode*, %struct.AVTreeNode** %10, align 8
  %153 = load %struct.AVTreeNode**, %struct.AVTreeNode*** %6, align 8
  store %struct.AVTreeNode* %152, %struct.AVTreeNode** %153, align 8
  br label %154

154:                                              ; preds = %151, %143
  store i32 0, i32* %4, align 4
  br label %166

155:                                              ; preds = %140, %98, %80, %53, %32
  %156 = load %struct.AVTreeNode*, %struct.AVTreeNode** %10, align 8
  %157 = icmp ne %struct.AVTreeNode* %156, null
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load %struct.AVTreeNode*, %struct.AVTreeNode** %10, align 8
  %160 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %159, i32 0, i32 1
  %161 = call i32 @av_freep(%struct.AVTreeNode** %160)
  br label %162

162:                                              ; preds = %158, %155
  %163 = call i32 @av_freep(%struct.AVTreeNode** %10)
  %164 = call i32 @av_freep(%struct.AVTreeNode** %11)
  %165 = load i32, i32* %12, align 4
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %162, %154, %25
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i64 @FT_Load_Char(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.AVTreeNode* @av_mallocz(i32) #1

declare dso_local i64 @FT_Get_Glyph(%struct.TYPE_13__*, %struct.AVTreeNode**) #1

declare dso_local i64 @FT_Glyph_StrokeBorder(%struct.AVTreeNode**, i32, i32, i32) #1

declare dso_local i64 @FT_Glyph_To_Bitmap(%struct.AVTreeNode**, i32, i32, i32) #1

declare dso_local i32 @FT_Glyph_Get_CBox(%struct.AVTreeNode*, i32, i32*) #1

declare dso_local %struct.AVTreeNode* @av_tree_node_alloc(...) #1

declare dso_local i32 @av_tree_insert(i32*, %struct.AVTreeNode*, i32, %struct.AVTreeNode**) #1

declare dso_local i32 @av_freep(%struct.AVTreeNode**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
