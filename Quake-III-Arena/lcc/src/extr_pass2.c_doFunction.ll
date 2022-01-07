; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_pass2.c_doFunction.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_pass2.c_doFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32** }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_18__*, i32**, i32**, i32)* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }

@cfunc = common dso_local global %struct.TYPE_18__* null, align 8
@LABELS = common dso_local global i32 0, align 4
@labels = common dso_local global i32* null, align 8
@FUNC = common dso_local global i32 0, align 4
@codehead = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@codelist = common dso_local global %struct.TYPE_19__* null, align 8
@IR = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @doFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doFunction(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @uid2symbol(i32 %13)
  %15 = bitcast i8* %14 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** @cfunc, align 8
  %16 = load i32, i32* @LABELS, align 4
  %17 = call i32* @table(i32* null, i32 %16)
  store i32* %17, i32** @labels, align 8
  %18 = call i32 (...) @enterscope()
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @Seq_length(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* @FUNC, align 4
  %28 = call i32** @newarray(i32 %26, i32 8, i32 %27)
  store i32** %28, i32*** %5, align 8
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %50, %1
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %29
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32* @Seq_remlo(i32 %38)
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @uid2symbol(i32 %41)
  %43 = bitcast i8* %42 to i32*
  %44 = load i32**, i32*** %5, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  store i32* %43, i32** %47, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @free(i32* %48)
  br label %50

50:                                               ; preds = %33
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %29

53:                                               ; preds = %29
  %54 = load i32**, i32*** %5, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  store i32* null, i32** %57, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 4
  %62 = call i32 @Seq_free(i32* %61)
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  %65 = load i32, i32* @FUNC, align 4
  %66 = call i32** @newarray(i32 %64, i32 8, i32 %65)
  store i32** %66, i32*** %6, align 8
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %88, %53
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %67
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32* @Seq_remlo(i32 %76)
  store i32* %77, i32** %8, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @uid2symbol(i32 %79)
  %81 = bitcast i8* %80 to i32*
  %82 = load i32**, i32*** %6, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  store i32* %81, i32** %85, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @free(i32* %86)
  br label %88

88:                                               ; preds = %71
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %67

91:                                               ; preds = %67
  %92 = load i32**, i32*** %6, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  store i32* null, i32** %95, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 3
  %100 = call i32 @Seq_free(i32* %99)
  %101 = load i32**, i32*** %6, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** @cfunc, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  store i32** %101, i32*** %105, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** @cfunc, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  store %struct.TYPE_19__* @codehead, %struct.TYPE_19__** @codelist, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** @codelist, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  store i32* null, i32** %109, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @Seq_length(i32 %114)
  store i32 %115, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %128, %91
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* %4, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %116
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32* @Seq_remlo(i32 %125)
  %127 = call i32 @interface(i32* %126)
  br label %128

128:                                              ; preds = %120
  %129 = load i32, i32* %3, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %3, align 4
  br label %116

131:                                              ; preds = %116
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 2
  %136 = call i32 @Seq_free(i32* %135)
  %137 = call i32 (...) @exitscope()
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** @IR, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i32 (%struct.TYPE_18__*, i32**, i32**, i32)*, i32 (%struct.TYPE_18__*, i32**, i32**, i32)** %139, align 8
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** @cfunc, align 8
  %142 = load i32**, i32*** %5, align 8
  %143 = load i32**, i32*** %6, align 8
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 %140(%struct.TYPE_18__* %141, i32** %142, i32** %143, i32 %148)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** @cfunc, align 8
  store i32* null, i32** @labels, align 8
  ret void
}

declare dso_local i8* @uid2symbol(i32) #1

declare dso_local i32* @table(i32*, i32) #1

declare dso_local i32 @enterscope(...) #1

declare dso_local i32 @Seq_length(i32) #1

declare dso_local i32** @newarray(i32, i32, i32) #1

declare dso_local i32* @Seq_remlo(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @Seq_free(i32*) #1

declare dso_local i32 @interface(i32*) #1

declare dso_local i32 @exitscope(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
