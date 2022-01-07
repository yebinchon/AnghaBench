; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_diff_l.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_diff_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32* }
%struct.TYPE_14__ = type { i32* }

@ISCHARSET = common dso_local global i64 0, align 8
@i = common dso_local global i64 0, align 8
@IFail = common dso_local global i32 0, align 4
@IChoice = common dso_local global i32 0, align 4
@IFailTwice = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @diff_l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_l(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__, align 8
  %8 = alloca %struct.TYPE_14__, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %2, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call %struct.TYPE_13__* @getpatt(i32* %13, i32 1, i32* %3)
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %5, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call %struct.TYPE_13__* @getpatt(i32* %15, i32 2, i32* %4)
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %6, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = call i64 @tocharset(%struct.TYPE_13__* %17, %struct.TYPE_14__* %7)
  %19 = load i64, i64* @ISCHARSET, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %1
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = call i64 @tocharset(%struct.TYPE_13__* %22, %struct.TYPE_14__* %8)
  %24 = load i64, i64* @ISCHARSET, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %21
  %27 = load i32*, i32** %2, align 8
  %28 = call %struct.TYPE_13__* @newcharset(i32* %27)
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %9, align 8
  %29 = load i64, i64* @i, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @i, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @i, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %34, %40
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i64 1
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @i, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 %41, i32* %47, align 4
  %48 = call i32 @loopset(i64 %29, i32 %41)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %50 = call i32 @correctset(%struct.TYPE_13__* %49)
  br label %118

51:                                               ; preds = %21, %1
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %53 = call i64 @isheadfail(%struct.TYPE_13__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %84

55:                                               ; preds = %51
  %56 = load i32*, i32** %2, align 8
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %58, %59
  %61 = call %struct.TYPE_13__* @newpatt(i32* %56, i32 %60)
  store %struct.TYPE_13__* %61, %struct.TYPE_13__** %10, align 8
  %62 = load i32*, i32** %2, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %64 = call i32 @addpatt(i32* %62, %struct.TYPE_13__* %63, i32 2)
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i64 %66
  store %struct.TYPE_13__* %67, %struct.TYPE_13__** %10, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = sub i64 0, %70
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i64 %71
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  %75 = call i32 @check2test(%struct.TYPE_13__* %72, i32 %74)
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 1
  store %struct.TYPE_13__* %77, %struct.TYPE_13__** %10, align 8
  %78 = ptrtoint %struct.TYPE_13__* %76 to i32
  %79 = load i32, i32* @IFail, align 4
  %80 = call i32 @setinst(i32 %78, i32 %79, i32 0)
  %81 = load i32*, i32** %2, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %83 = call i32 @addpatt(i32* %81, %struct.TYPE_13__* %82, i32 1)
  br label %117

84:                                               ; preds = %51
  %85 = load i32*, i32** %2, align 8
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 1, %86
  %88 = add nsw i32 %87, 1
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %88, %89
  %91 = call %struct.TYPE_13__* @newpatt(i32* %85, i32 %90)
  store %struct.TYPE_13__* %91, %struct.TYPE_13__** %11, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %92, %struct.TYPE_13__** %12, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 1
  store %struct.TYPE_13__* %94, %struct.TYPE_13__** %11, align 8
  %95 = ptrtoint %struct.TYPE_13__* %93 to i32
  %96 = load i32, i32* @IChoice, align 4
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 1, %97
  %99 = add nsw i32 %98, 1
  %100 = call i32 @setinst(i32 %95, i32 %96, i32 %99)
  %101 = load i32*, i32** %2, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %103 = call i32 @addpatt(i32* %101, %struct.TYPE_13__* %102, i32 2)
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i64 %105
  store %struct.TYPE_13__* %106, %struct.TYPE_13__** %11, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 1
  store %struct.TYPE_13__* %108, %struct.TYPE_13__** %11, align 8
  %109 = ptrtoint %struct.TYPE_13__* %107 to i32
  %110 = load i32, i32* @IFailTwice, align 4
  %111 = call i32 @setinst(i32 %109, i32 %110, i32 0)
  %112 = load i32*, i32** %2, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %114 = call i32 @addpatt(i32* %112, %struct.TYPE_13__* %113, i32 1)
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %116 = call i32 @optimizechoice(%struct.TYPE_13__* %115)
  br label %117

117:                                              ; preds = %84, %55
  br label %118

118:                                              ; preds = %117, %26
  ret i32 1
}

declare dso_local %struct.TYPE_13__* @getpatt(i32*, i32, i32*) #1

declare dso_local i64 @tocharset(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @newcharset(i32*) #1

declare dso_local i32 @loopset(i64, i32) #1

declare dso_local i32 @correctset(%struct.TYPE_13__*) #1

declare dso_local i64 @isheadfail(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @newpatt(i32*, i32) #1

declare dso_local i32 @addpatt(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @check2test(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @setinst(i32, i32, i32) #1

declare dso_local i32 @optimizechoice(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
