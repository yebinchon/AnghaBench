; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_check_workers.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_check_workers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32***, i32***, i32, i32, i64 }
%struct.TYPE_10__ = type { i32, i32 }

@WORKERS = common dso_local global i32 0, align 4
@g = common dso_local global %struct.TYPE_11__* null, align 8
@WORKER_DONE = common dso_local global i64 0, align 8
@WORKER_IDLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_workers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %149, %0
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @WORKERS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %152

15:                                               ; preds = %11
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i64 %20
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %2, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = call i32 @mtx_lock(i32* %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @WORKER_DONE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %145

30:                                               ; preds = %15
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %3, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.TYPE_10__* @find_chunk(i32 %35, i32 %38)
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %4, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = icmp ne %struct.TYPE_10__* %40, null
  br i1 %41, label %42, label %87

42:                                               ; preds = %30
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %83

47:                                               ; preds = %42
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32***, i32**** %49, align 8
  %51 = getelementptr inbounds i32**, i32*** %50, i64 1
  %52 = load i32**, i32*** %51, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 1
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %5, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32***, i32**** %56, align 8
  %58 = getelementptr inbounds i32**, i32*** %57, i64 1
  %59 = load i32**, i32*** %58, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 1
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %6, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = call i32 @map_free(i32* %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = call i32 @map_free(i32* %66)
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @map_copy(i32* %69, i32* %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @map_copy(i32* %73, i32* %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @request_chunk(i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %47, %42
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %86 = call i32 @generate_chunk(%struct.TYPE_10__* %84, %struct.TYPE_8__* %85)
  br label %87

87:                                               ; preds = %83, %30
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %138, %87
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 3
  br i1 %90, label %91, label %141

91:                                               ; preds = %88
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %134, %91
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 3
  br i1 %94, label %95, label %137

95:                                               ; preds = %92
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32***, i32**** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32**, i32*** %98, i64 %100
  %102 = load i32**, i32*** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  %106 = load i32*, i32** %105, align 8
  store i32* %106, i32** %9, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32***, i32**** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32**, i32*** %109, i64 %111
  %113 = load i32**, i32*** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  %117 = load i32*, i32** %116, align 8
  store i32* %117, i32** %10, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %95
  %121 = load i32*, i32** %9, align 8
  %122 = call i32 @map_free(i32* %121)
  %123 = load i32*, i32** %9, align 8
  %124 = call i32 @free(i32* %123)
  br label %125

125:                                              ; preds = %120, %95
  %126 = load i32*, i32** %10, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load i32*, i32** %10, align 8
  %130 = call i32 @map_free(i32* %129)
  %131 = load i32*, i32** %10, align 8
  %132 = call i32 @free(i32* %131)
  br label %133

133:                                              ; preds = %128, %125
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %8, align 4
  br label %92

137:                                              ; preds = %92
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %7, align 4
  br label %88

141:                                              ; preds = %88
  %142 = load i64, i64* @WORKER_IDLE, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %141, %15
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = call i32 @mtx_unlock(i32* %147)
  br label %149

149:                                              ; preds = %145
  %150 = load i32, i32* %1, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %1, align 4
  br label %11

152:                                              ; preds = %11
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.TYPE_10__* @find_chunk(i32, i32) #1

declare dso_local i32 @map_free(i32*) #1

declare dso_local i32 @map_copy(i32*, i32*) #1

declare dso_local i32 @request_chunk(i32, i32) #1

declare dso_local i32 @generate_chunk(%struct.TYPE_10__*, %struct.TYPE_8__*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
