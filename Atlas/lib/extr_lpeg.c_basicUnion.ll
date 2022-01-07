; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_basicUnion.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_basicUnion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32* }
%struct.TYPE_21__ = type { i64, i32* }

@ISCHARSET = common dso_local global i64 0, align 8
@CHARSETINSTSIZE = common dso_local global i32 0, align 4
@ISet = common dso_local global i32 0, align 4
@i = common dso_local global i64 0, align 8
@IJmp = common dso_local global i32 0, align 4
@IChoice = common dso_local global i32 0, align 4
@ICommit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (i32*, %struct.TYPE_20__*, i32, i32, i32*, %struct.TYPE_21__*)* @basicUnion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @basicUnion(i32* %0, %struct.TYPE_20__* %1, i32 %2, i32 %3, i32* %4, %struct.TYPE_21__* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_21__, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca %struct.TYPE_20__*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_21__* %5, %struct.TYPE_21__** %12, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %19 = call i32 @tocharset(%struct.TYPE_20__* %18, %struct.TYPE_21__* %14)
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ISCHARSET, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %6
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ISCHARSET, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %24
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* @CHARSETINSTSIZE, align 4
  %34 = call %struct.TYPE_20__* @auxnew(i32* %31, %struct.TYPE_20__** %13, i32* %32, i32 %33)
  store %struct.TYPE_20__* %34, %struct.TYPE_20__** %15, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %36 = load i32, i32* @ISet, align 4
  %37 = call i32 @setinst(%struct.TYPE_20__* %35, i32 %36, i32 0)
  %38 = load i64, i64* @i, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @i, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @i, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %43, %49
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i64 1
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @i, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %50, i32* %56, align 4
  %57 = call i32 @loopset(i64 %38, i32 %50)
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %59 = call i32 @correctset(%struct.TYPE_20__* %58)
  br label %139

60:                                               ; preds = %24, %6
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %62 = call i64 @exclusive(%struct.TYPE_21__* %14, %struct.TYPE_21__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %66 = call i64 @isheadfail(%struct.TYPE_20__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %97

68:                                               ; preds = %64, %60
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %72, %73
  %75 = call %struct.TYPE_20__* @auxnew(i32* %69, %struct.TYPE_20__** %13, i32* %70, i32 %74)
  store %struct.TYPE_20__* %75, %struct.TYPE_20__** %16, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @copypatt(%struct.TYPE_20__* %76, %struct.TYPE_20__* %77, i32 %78)
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  %83 = call i32 @check2test(%struct.TYPE_20__* %80, i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i64 %86
  store %struct.TYPE_20__* %87, %struct.TYPE_20__** %16, align 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 1
  store %struct.TYPE_20__* %89, %struct.TYPE_20__** %16, align 8
  %90 = load i32, i32* @IJmp, align 4
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  %93 = call i32 @setinst(%struct.TYPE_20__* %88, i32 %90, i32 %92)
  %94 = load i32*, i32** %7, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %96 = call i32 @addpatt(i32* %94, %struct.TYPE_20__* %95, i32 2)
  br label %138

97:                                               ; preds = %64
  %98 = load i32*, i32** %7, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 1, %100
  %102 = add nsw i32 %101, 1
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %102, %103
  %105 = call %struct.TYPE_20__* @auxnew(i32* %98, %struct.TYPE_20__** %13, i32* %99, i32 %104)
  store %struct.TYPE_20__* %105, %struct.TYPE_20__** %17, align 8
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 1
  store %struct.TYPE_20__* %107, %struct.TYPE_20__** %17, align 8
  %108 = load i32, i32* @IChoice, align 4
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 1, %109
  %111 = add nsw i32 %110, 1
  %112 = call i32 @setinst(%struct.TYPE_20__* %106, i32 %108, i32 %111)
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @copypatt(%struct.TYPE_20__* %113, %struct.TYPE_20__* %114, i32 %115)
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i64 %119
  store %struct.TYPE_20__* %120, %struct.TYPE_20__** %17, align 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 1
  store %struct.TYPE_20__* %122, %struct.TYPE_20__** %17, align 8
  %123 = load i32, i32* @ICommit, align 4
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 1, %124
  %126 = call i32 @setinst(%struct.TYPE_20__* %121, i32 %123, i32 %125)
  %127 = load i32*, i32** %7, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %129 = call i32 @addpatt(i32* %127, %struct.TYPE_20__* %128, i32 2)
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 1, %131
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = sub i64 0, %134
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i64 %135
  %137 = call i32 @optimizechoice(%struct.TYPE_20__* %136)
  br label %138

138:                                              ; preds = %97, %68
  br label %139

139:                                              ; preds = %138, %30
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  ret %struct.TYPE_20__* %140
}

declare dso_local i32 @tocharset(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_20__* @auxnew(i32*, %struct.TYPE_20__**, i32*, i32) #1

declare dso_local i32 @setinst(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @loopset(i64, i32) #1

declare dso_local i32 @correctset(%struct.TYPE_20__*) #1

declare dso_local i64 @exclusive(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i64 @isheadfail(%struct.TYPE_20__*) #1

declare dso_local i32 @copypatt(%struct.TYPE_20__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @check2test(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @addpatt(i32*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @optimizechoice(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
