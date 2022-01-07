; ModuleID = '/home/carl/AnghaBench/Cello/benchmarks/ext/extr_regexp9.c_rregexec9.c'
source_filename = "/home/carl/AnghaBench/Cello/benchmarks/ext/extr_regexp9.c_rregexec9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_16__ = type { i32*, i64 }
%struct.TYPE_22__ = type { i64, i32**, i32**, i64, i64, i32* }

@LISTSIZE = common dso_local global i32 0, align 4
@RUNE = common dso_local global i64 0, align 8
@Runeself = common dso_local global i64 0, align 8
@BOL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rregexec9(%struct.TYPE_21__* %0, i32* %1, %struct.TYPE_20__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_22__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @LISTSIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load i32, i32* @LISTSIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 5
  store i32* %23, i32** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %27 = icmp ne %struct.TYPE_20__* %26, null
  br i1 %27, label %28, label %56

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %28
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 5
  store i32* %41, i32** %42, align 8
  br label %43

43:                                               ; preds = %37, %31
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 4
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %49, %43
  br label %56

56:                                               ; preds = %55, %28, %4
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @RUNE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %56
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @Runeself, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %66
  %76 = load i64, i64* @RUNE, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 3
  store i64 %76, i64* %77, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i64 %83, i64* %84, align 8
  br label %85

85:                                               ; preds = %75, %66, %56
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @BOL, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load i64, i64* @BOL, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 3
  store i64 %94, i64* %95, align 8
  br label %96

96:                                               ; preds = %93, %85
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 2
  %98 = load i32**, i32*** %97, align 8
  %99 = getelementptr inbounds i32*, i32** %98, i64 0
  store i32* %19, i32** %99, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 2
  %101 = load i32**, i32*** %100, align 8
  %102 = getelementptr inbounds i32*, i32** %101, i64 1
  store i32* %22, i32** %102, align 8
  %103 = call i32 @nelem(i32* %19)
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %19, i64 %104
  %106 = getelementptr inbounds i32, i32* %105, i64 -2
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  %108 = load i32**, i32*** %107, align 8
  %109 = getelementptr inbounds i32*, i32** %108, i64 0
  store i32* %106, i32** %109, align 8
  %110 = call i32 @nelem(i32* %22)
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %22, i64 %111
  %113 = getelementptr inbounds i32, i32* %112, i64 -2
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  %115 = load i32**, i32*** %114, align 8
  %116 = getelementptr inbounds i32*, i32** %115, i64 1
  store i32* %113, i32** %116, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %118 = load i32*, i32** %7, align 8
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @rregexec1(%struct.TYPE_21__* %117, i32* %118, %struct.TYPE_20__* %119, i32 %120, %struct.TYPE_22__* %10)
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = icmp sge i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %96
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %137

126:                                              ; preds = %96
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %128 = load i32*, i32** %7, align 8
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @rregexec2(%struct.TYPE_21__* %127, i32* %128, %struct.TYPE_20__* %129, i32 %130, %struct.TYPE_22__* %10)
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp sge i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %126
  %135 = load i32, i32* %14, align 4
  store i32 %135, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %137

136:                                              ; preds = %126
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %137

137:                                              ; preds = %136, %134, %124
  %138 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nelem(i32*) #2

declare dso_local i32 @rregexec1(%struct.TYPE_21__*, i32*, %struct.TYPE_20__*, i32, %struct.TYPE_22__*) #2

declare dso_local i32 @rregexec2(%struct.TYPE_21__*, i32*, %struct.TYPE_20__*, i32, %struct.TYPE_22__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
