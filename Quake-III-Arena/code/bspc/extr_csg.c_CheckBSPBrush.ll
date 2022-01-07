; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_csg.c_CheckBSPBrush.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_csg.c_CheckBSPBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32*, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32 }

@mapplanes = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"non convex brush\00", align 1
@MAX_MAP_BOUNDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"brush: bounds out of range\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"ob->mins[%d] = %f, ob->maxs[%d] = %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"brush: no visible sides on brush\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckBSPBrush(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %83, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %86

13:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %79, %13
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %82

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %79

25:                                               ; preds = %20
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mapplanes, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 %34
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %5, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mapplanes, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 %44
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %6, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @WindingsNonConvex(i32 %53, i32 %61, i32 %64, i32 %67, i32 %70, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %25
  %77 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %82

78:                                               ; preds = %25
  br label %79

79:                                               ; preds = %78, %24
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %14

82:                                               ; preds = %76, %14
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %7

86:                                               ; preds = %7
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %88 = call i32 @BoundBrush(%struct.TYPE_9__* %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %173, %86
  %90 = load i32, i32* %3, align 4
  %91 = icmp slt i32 %90, 3
  br i1 %91, label %92, label %176

92:                                               ; preds = %89
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @MAX_MAP_BOUNDS, align 4
  %101 = sub nsw i32 0, %100
  %102 = icmp slt i32 %99, %101
  br i1 %102, label %113, label %103

103:                                              ; preds = %92
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @MAX_MAP_BOUNDS, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %132

113:                                              ; preds = %103, %92
  %114 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %115 = load i32, i32* %3, align 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %3, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %3, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %115, i32 %122, i32 %123, i32 %130)
  br label %176

132:                                              ; preds = %103
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %3, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @MAX_MAP_BOUNDS, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %153, label %142

142:                                              ; preds = %132
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %3, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @MAX_MAP_BOUNDS, align 4
  %151 = sub nsw i32 0, %150
  %152 = icmp slt i32 %149, %151
  br i1 %152, label %153, label %172

153:                                              ; preds = %142, %132
  %154 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %155 = load i32, i32* %3, align 4
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %3, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %3, align 4
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %3, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %155, i32 %162, i32 %163, i32 %170)
  br label %176

172:                                              ; preds = %142
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %3, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %3, align 4
  br label %89

176:                                              ; preds = %153, %113, %89
  ret void
}

declare dso_local i64 @WindingsNonConvex(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @Log_Print(i8*, ...) #1

declare dso_local i32 @BoundBrush(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
