; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_dag.c_printnode.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_dag.c_printnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__**, i32, %struct.TYPE_5__**, i32 }
%struct.TYPE_5__ = type { i8, i32 }

@stdout = common dso_local global i32* null, align 8
@stderr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"%c%d%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%s count=%d\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" #%d\00", align 1
@CALL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c" {%t}\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %p\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32)* @printnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printnode(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %179

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32*, i32** @stdout, align 8
  br label %19

17:                                               ; preds = %12
  %18 = load i32*, i32** @stderr, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32* [ %16, %15 ], [ %18, %17 ]
  store i32* %20, i32** %7, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = ptrtoint %struct.TYPE_4__* %21 to i32
  %23 = call i32 @nodeid(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 39, i32 35
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 10
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %38

33:                                               ; preds = %19
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 100
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 2
  br label %38

38:                                               ; preds = %33, %32
  %39 = phi i32 [ 0, %32 ], [ %37, %33 ]
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* @.str.1, i64 0, i64 %40
  %42 = call i32 (i32*, i8*, ...) @fprint(i32* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i8* %41)
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @opname(i32 %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i32*, i8*, ...) @fprint(i32* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %50)
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %82, %38
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %55, align 8
  %57 = call i32 @NELEMS(%struct.TYPE_5__** %56)
  %58 = icmp slt i32 %53, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %52
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %62, i64 %64
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = icmp ne %struct.TYPE_5__* %66, null
  br label %68

68:                                               ; preds = %59, %52
  %69 = phi i1 [ false, %52 ], [ %67, %59 ]
  br i1 %69, label %70, label %85

70:                                               ; preds = %68
  %71 = load i32*, i32** %7, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %74, i64 %76
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = ptrtoint %struct.TYPE_5__* %78 to i32
  %80 = call i32 @nodeid(i32 %79)
  %81 = call i32 (i32*, i8*, ...) @fprint(i32* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %70
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %52

85:                                               ; preds = %68
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @generic(i32 %88)
  %90 = load i64, i64* @CALL, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %118

92:                                               ; preds = %85
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %95, i64 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = icmp ne %struct.TYPE_5__* %97, null
  br i1 %98, label %99, label %118

99:                                               ; preds = %92
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %102, i64 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %99
  %109 = load i32*, i32** %7, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %112, i64 0
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32*, i8*, ...) @fprint(i32* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  br label %176

118:                                              ; preds = %99, %92, %85
  store i32 0, i32* %8, align 4
  br label %119

119:                                              ; preds = %172, %118
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %122, align 8
  %124 = call i32 @NELEMS(%struct.TYPE_5__** %123)
  %125 = icmp slt i32 %120, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %119
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %129, i64 %131
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = icmp ne %struct.TYPE_5__* %133, null
  br label %135

135:                                              ; preds = %126, %119
  %136 = phi i1 [ false, %119 ], [ %134, %126 ]
  br i1 %136, label %137, label %175

137:                                              ; preds = %135
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %140, i64 %142
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i8, i8* %145, align 4
  %147 = icmp ne i8 %146, 0
  br i1 %147, label %148, label %161

148:                                              ; preds = %137
  %149 = load i32*, i32** %7, align 8
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %152, i64 %154
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load i8, i8* %157, align 4
  %159 = sext i8 %158 to i32
  %160 = call i32 (i32*, i8*, ...) @fprint(i32* %149, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %159)
  br label %171

161:                                              ; preds = %137
  %162 = load i32*, i32** %7, align 8
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %165, i64 %167
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = call i32 (i32*, i8*, ...) @fprint(i32* %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_5__* %169)
  br label %171

171:                                              ; preds = %161, %148
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %8, align 4
  br label %119

175:                                              ; preds = %135
  br label %176

176:                                              ; preds = %175, %108
  %177 = load i32*, i32** %7, align 8
  %178 = call i32 (i32*, i8*, ...) @fprint(i32* %177, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %179

179:                                              ; preds = %176, %3
  ret void
}

declare dso_local i32 @nodeid(i32) #1

declare dso_local i32 @fprint(i32*, i8*, ...) #1

declare dso_local i32 @opname(i32) #1

declare dso_local i32 @NELEMS(%struct.TYPE_5__**) #1

declare dso_local i64 @generic(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
