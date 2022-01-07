; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_updateAnimatedBack.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_updateAnimatedBack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i64, i64, i64 }

@gamemode = common dso_local global i64 0, align 8
@commercial = common dso_local global i64 0, align 8
@wbs = common dso_local global %struct.TYPE_5__* null, align 8
@NUMANIMS = common dso_local global i32* null, align 8
@anims = common dso_local global %struct.TYPE_4__** null, align 8
@bcnt = common dso_local global i64 0, align 8
@state = common dso_local global i32 0, align 4
@StatCount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WI_updateAnimatedBack() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = load i64, i64* @gamemode, align 8
  %4 = load i64, i64* @commercial, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %147

7:                                                ; preds = %0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wbs, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sgt i32 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %147

13:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %144, %13
  %15 = load i32, i32* %1, align 4
  %16 = load i32*, i32** @NUMANIMS, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wbs, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %15, %22
  br i1 %23, label %24, label %147

24:                                               ; preds = %14
  %25 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @anims, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wbs, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %25, i64 %29
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %2, align 8
  %35 = load i64, i64* @bcnt, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %143

40:                                               ; preds = %24
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %142 [
    i32 130, label %44
    i32 128, label %64
    i32 129, label %101
  ]

44:                                               ; preds = %40
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = icmp sge i32 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %44
  %57 = load i64, i64* @bcnt, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %142

64:                                               ; preds = %40
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %71, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %64
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store i32 -1, i32* %78, align 4
  %79 = load i64, i64* @bcnt, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  %84 = call i64 (...) @M_Random()
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = srem i64 %84, %87
  %89 = add nsw i64 %83, %88
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %100

92:                                               ; preds = %64
  %93 = load i64, i64* @bcnt, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %93, %96
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %92, %76
  br label %142

101:                                              ; preds = %40
  %102 = load i32, i32* @state, align 4
  %103 = load i32, i32* @StatCount, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i32, i32* %1, align 4
  %107 = icmp eq i32 %106, 7
  br i1 %107, label %141, label %108

108:                                              ; preds = %105, %101
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wbs, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 6
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %111, %114
  br i1 %115, label %116, label %141

116:                                              ; preds = %108
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %123, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %116
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %128, %116
  %134 = load i64, i64* @bcnt, align 8
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %134, %137
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %133, %108, %105
  br label %142

142:                                              ; preds = %40, %141, %100, %56
  br label %143

143:                                              ; preds = %142, %24
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %1, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %1, align 4
  br label %14

147:                                              ; preds = %6, %12, %14
  ret void
}

declare dso_local i64 @M_Random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
