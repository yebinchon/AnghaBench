; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_portals.c_RemovePortalFromNode.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_portals.c_RemovePortalFromNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__**, %struct.TYPE_5__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }

@.str = private unnamed_addr constant [41 x i8] c"RemovePortalFromNode: portal not in leaf\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"RemovePortalFromNode: portal not bounding leaf\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"RemovePortalFromNode: mislinked portal\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"RemovePortalFromNode: circular linked\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"RemovePortalFromNodes: portal does not belong to node\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RemovePortalFromNode(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca [4096 x %struct.TYPE_5__*], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store %struct.TYPE_5__** %13, %struct.TYPE_5__*** %5, align 8
  br label %14

14:                                               ; preds = %2, %55
  %15 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %6, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = call i32 @Error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %14
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = icmp eq %struct.TYPE_5__* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %56

26:                                               ; preds = %21
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %29, i64 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = icmp eq %struct.TYPE_6__* %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %37, i64 0
  store %struct.TYPE_5__** %38, %struct.TYPE_5__*** %5, align 8
  br label %55

39:                                               ; preds = %26
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %42, i64 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = icmp eq %struct.TYPE_6__* %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %50, i64 1
  store %struct.TYPE_5__** %51, %struct.TYPE_5__*** %5, align 8
  br label %54

52:                                               ; preds = %39
  %53 = call i32 @Error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %47
  br label %55

55:                                               ; preds = %54, %34
  br label %14

56:                                               ; preds = %25
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %59, i64 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = icmp eq %struct.TYPE_6__* %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %56
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %67, i64 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %69, %struct.TYPE_5__** %70, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %73, i64 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %74, align 8
  br label %97

75:                                               ; preds = %56
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %78, i64 1
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = icmp eq %struct.TYPE_6__* %80, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %75
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %86, i64 1
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %88, %struct.TYPE_5__** %89, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %92, i64 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %93, align 8
  br label %96

94:                                               ; preds = %75
  %95 = call i32 @Error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %83
  br label %97

97:                                               ; preds = %96, %64
  store i32 0, i32* %9, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  store %struct.TYPE_5__* %100, %struct.TYPE_5__** %10, align 8
  br label %101

101:                                              ; preds = %153, %97
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %103 = icmp ne %struct.TYPE_5__* %102, null
  br i1 %103, label %104, label %161

104:                                              ; preds = %101
  store i32 0, i32* %8, align 4
  br label %105

105:                                              ; preds = %119, %104
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %122

109:                                              ; preds = %105
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [4096 x %struct.TYPE_5__*], [4096 x %struct.TYPE_5__*]* %11, i64 0, i64 %112
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = icmp eq %struct.TYPE_5__* %110, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = call i32 @Error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %109
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %105

122:                                              ; preds = %105
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %125, i64 0
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %129 = icmp ne %struct.TYPE_6__* %127, %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %122
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %133, i64 1
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %137 = icmp ne %struct.TYPE_6__* %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %130
  %139 = call i32 @Error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %130, %122
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [4096 x %struct.TYPE_5__*], [4096 x %struct.TYPE_5__*]* %11, i64 0, i64 %143
  store %struct.TYPE_5__* %141, %struct.TYPE_5__** %144, align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %147, i64 1
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %151 = icmp eq %struct.TYPE_6__* %149, %150
  %152 = zext i1 %151 to i32
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %140
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %156, i64 %158
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  store %struct.TYPE_5__* %160, %struct.TYPE_5__** %10, align 8
  br label %101

161:                                              ; preds = %101
  ret void
}

declare dso_local i32 @Error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
