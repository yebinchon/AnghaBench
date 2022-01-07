; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_brushbsp.c_BuildTreeThread.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_brushbsp.c_BuildTreeThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_12__**, i32*, i32*, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@numthreads = common dso_local global i32 0, align 4
@c_nodememory = common dso_local global i32 0, align 4
@c_brushmemory = common dso_local global i32 0, align 4
@c_peak_totalbspmemory = common dso_local global i32 0, align 4
@c_nodes = common dso_local global i32 0, align 4
@drawflag = common dso_local global i64 0, align 8
@cancelconversion = common dso_local global i64 0, align 8
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@c_solidleafnodes = common dso_local global i32 0, align 4
@create_aas = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"child without volume brush\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BuildTreeThread(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %9 = call %struct.TYPE_12__* (...) @NextNodeFromList()
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %4, align 8
  br label %10

10:                                               ; preds = %206, %91, %1
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = icmp ne %struct.TYPE_12__* %11, null
  br i1 %12, label %13, label %218

13:                                               ; preds = %10
  %14 = load i32, i32* @numthreads, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 (...) @IncreaseNodeCounter()
  br label %18

18:                                               ; preds = %16, %13
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %8, align 8
  %22 = load i32, i32* @numthreads, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = call i32 (...) @WindingMemory()
  %26 = load i32, i32* @c_nodememory, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* @c_brushmemory, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @c_peak_totalbspmemory, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* @c_peak_totalbspmemory, align 4
  br label %35

35:                                               ; preds = %33, %24
  %36 = load i32, i32* @c_nodes, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @c_nodes, align 4
  br label %38

38:                                               ; preds = %35, %18
  %39 = load i64, i64* @drawflag, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32*, i32** %8, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = call i32 @DrawBrushList(i32* %42, %struct.TYPE_12__* %43)
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i64, i64* @cancelconversion, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %53

49:                                               ; preds = %45
  %50 = load i32*, i32** %8, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = call %struct.TYPE_11__* @SelectSplitSide(i32* %50, %struct.TYPE_12__* %51)
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %5, align 8
  br label %53

53:                                               ; preds = %49, %48
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = icmp ne %struct.TYPE_11__* %54, null
  br i1 %55, label %93, label %56

56:                                               ; preds = %53
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @LeafNode(%struct.TYPE_12__* %57, i32* %58)
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @CONTENTS_SOLID, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i32, i32* @c_solidleafnodes, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @c_solidleafnodes, align 4
  br label %69

69:                                               ; preds = %66, %56
  %70 = load i64, i64* @create_aas, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @FreeBrushList(i32* %75)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 4
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %72, %69
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @FreeBrush(i32* %87)
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 3
  store i32* null, i32** %90, align 8
  br label %91

91:                                               ; preds = %84, %79
  %92 = call %struct.TYPE_12__* (...) @NextNodeFromList()
  store %struct.TYPE_12__* %92, %struct.TYPE_12__** %4, align 8
  br label %10

93:                                               ; preds = %53
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 6
  store %struct.TYPE_11__* %94, %struct.TYPE_11__** %96, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, -2
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  store i32 0, i32* %6, align 4
  br label %103

103:                                              ; preds = %118, %93
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %104, 2
  br i1 %105, label %106, label %121

106:                                              ; preds = %103
  %107 = call %struct.TYPE_12__* (...) @AllocNode()
  store %struct.TYPE_12__* %107, %struct.TYPE_12__** %3, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 5
  store %struct.TYPE_12__* %108, %struct.TYPE_12__** %110, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %114, i64 %116
  store %struct.TYPE_12__* %111, %struct.TYPE_12__** %117, align 8
  br label %118

118:                                              ; preds = %106
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %103

121:                                              ; preds = %103
  %122 = load i32*, i32** %8, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %126, i64 0
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %132, i64 1
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 4
  %136 = call i32 @SplitBrushList(i32* %122, %struct.TYPE_12__* %123, i32** %129, i32** %135)
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %139, i64 0
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %146, i64 1
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @CheckBrushLists(i32* %143, i32* %150)
  %152 = load i32*, i32** %8, align 8
  %153 = call i32 @FreeBrushList(i32* %152)
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 4
  store i32* null, i32** %155, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %164, i64 0
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 3
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %170, i64 1
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 3
  %174 = call i32 @SplitBrush(i32* %158, i32 %161, i32** %167, i32** %173)
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %177, i64 0
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 3
  %181 = load i32*, i32** %180, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %192

183:                                              ; preds = %121
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %186, i64 1
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 3
  %190 = load i32*, i32** %189, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %194, label %192

192:                                              ; preds = %183, %121
  %193 = call i32 @Error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %194

194:                                              ; preds = %192, %183
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 3
  %197 = load i32*, i32** %196, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %206

199:                                              ; preds = %194
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @FreeBrush(i32* %202)
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 3
  store i32* null, i32** %205, align 8
  br label %206

206:                                              ; preds = %199, %194
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %209, i64 1
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %210, align 8
  %212 = call i32 @AddNodeToList(%struct.TYPE_12__* %211)
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 2
  %215 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %215, i64 0
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %216, align 8
  store %struct.TYPE_12__* %217, %struct.TYPE_12__** %4, align 8
  br label %10

218:                                              ; preds = %10
  %219 = load i32, i32* %2, align 4
  %220 = call i32 @RemoveThread(i32 %219)
  ret void
}

declare dso_local %struct.TYPE_12__* @NextNodeFromList(...) #1

declare dso_local i32 @IncreaseNodeCounter(...) #1

declare dso_local i32 @WindingMemory(...) #1

declare dso_local i32 @DrawBrushList(i32*, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_11__* @SelectSplitSide(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @LeafNode(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @FreeBrushList(i32*) #1

declare dso_local i32 @FreeBrush(i32*) #1

declare dso_local %struct.TYPE_12__* @AllocNode(...) #1

declare dso_local i32 @SplitBrushList(i32*, %struct.TYPE_12__*, i32**, i32**) #1

declare dso_local i32 @CheckBrushLists(i32*, i32*) #1

declare dso_local i32 @SplitBrush(i32*, i32, i32**, i32**) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @AddNodeToList(%struct.TYPE_12__*) #1

declare dso_local i32 @RemoveThread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
