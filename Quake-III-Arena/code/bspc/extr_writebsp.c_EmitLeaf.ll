; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_writebsp.c_EmitLeaf.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_writebsp.c_EmitLeaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_11__*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32**, %struct.TYPE_9__**, %struct.TYPE_8__** }
%struct.TYPE_11__ = type { i32, %struct.TYPE_11__* }

@numleafs = common dso_local global i64 0, align 8
@MAX_MAP_LEAFS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"MAX_MAP_LEAFS\00", align 1
@dleafs = common dso_local global %struct.TYPE_10__* null, align 8
@numleafbrushes = common dso_local global i32 0, align 4
@MAX_MAP_LEAFBRUSHES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"MAX_MAP_LEAFBRUSHES\00", align 1
@mapbrushes = common dso_local global i32 0, align 4
@dleafbrushes = common dso_local global i32* null, align 8
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@numleaffaces = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EmitLeaf(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %10 = load i64, i64* @numleafs, align 8
  %11 = load i64, i64* @MAX_MAP_LEAFS, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dleafs, align 8
  %17 = load i64, i64* @numleafs, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i64 %17
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %3, align 8
  %19 = load i64, i64* @numleafs, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* @numleafs, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @VectorCopy(i32 %38, i32 %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @VectorCopy(i32 %45, i32 %48)
  %50 = load i32, i32* @numleafbrushes, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %7, align 8
  br label %56

56:                                               ; preds = %104, %15
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %58 = icmp ne %struct.TYPE_11__* %57, null
  br i1 %58, label %59, label %108

59:                                               ; preds = %56
  %60 = load i32, i32* @numleafbrushes, align 4
  %61 = load i32, i32* @MAX_MAP_LEAFBRUSHES, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 @Error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %59
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @mapbrushes, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %9, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %88, %65
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @numleafbrushes, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %74
  %79 = load i32*, i32** @dleafbrushes, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %91

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %74

91:                                               ; preds = %86, %74
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @numleafbrushes, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load i32, i32* %9, align 4
  %97 = load i32*, i32** @dleafbrushes, align 8
  %98 = load i32, i32* @numleafbrushes, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %96, i32* %100, align 4
  %101 = load i32, i32* @numleafbrushes, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* @numleafbrushes, align 4
  br label %103

103:                                              ; preds = %95, %91
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  store %struct.TYPE_11__* %107, %struct.TYPE_11__** %7, align 8
  br label %56

108:                                              ; preds = %56
  %109 = load i32, i32* @numleafbrushes, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %109, %112
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @CONTENTS_SOLID, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %108
  br label %175

123:                                              ; preds = %108
  %124 = load i8*, i8** @numleaffaces, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 3
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  store %struct.TYPE_8__* %129, %struct.TYPE_8__** %4, align 8
  br label %130

130:                                              ; preds = %156, %123
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %132 = icmp ne %struct.TYPE_8__* %131, null
  br i1 %132, label %133, label %164

133:                                              ; preds = %130
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %136, i64 1
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %140 = icmp eq %struct.TYPE_9__* %138, %139
  %141 = zext i1 %140 to i32
  store i32 %141, i32* %5, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32**, i32*** %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32*, i32** %144, i64 %146
  %148 = load i32*, i32** %147, align 8
  store i32* %148, i32** %6, align 8
  %149 = load i32*, i32** %6, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %152, label %151

151:                                              ; preds = %133
  br label %156

152:                                              ; preds = %133
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %154 = load i32*, i32** %6, align 8
  %155 = call i32 @EmitMarkFace(%struct.TYPE_10__* %153, i32* %154)
  br label %156

156:                                              ; preds = %152, %151
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %159, i64 %161
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  store %struct.TYPE_8__* %163, %struct.TYPE_8__** %4, align 8
  br label %130

164:                                              ; preds = %130
  %165 = load i8*, i8** @numleaffaces, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 3
  %168 = load i8*, i8** %167, align 8
  %169 = ptrtoint i8* %165 to i64
  %170 = ptrtoint i8* %168 to i64
  %171 = sub i64 %169, %170
  %172 = inttoptr i64 %171 to i8*
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 4
  store i8* %172, i8** %174, align 8
  br label %175

175:                                              ; preds = %164, %122
  ret void
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @EmitMarkFace(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
