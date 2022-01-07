; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_isDistinctRedundant.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_isDistinctRedundant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_20__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_20__ = type { i64, i32, i32*, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_22__ = type { i64, i32, i64 }

@TK_COLUMN = common dso_local global i64 0, align 8
@OE_None = common dso_local global i64 0, align 8
@WO_EQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_19__*, i32*, %struct.TYPE_21__*)* @isDistinctRedundant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isDistinctRedundant(i32* %0, %struct.TYPE_19__* %1, i32* %2, %struct.TYPE_21__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %9, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %152

22:                                               ; preds = %4
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %13, align 4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %33, align 8
  store %struct.TYPE_18__* %34, %struct.TYPE_18__** %10, align 8
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %69, %22
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %72

41:                                               ; preds = %35
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.TYPE_22__* @sqlite3ExprSkipCollate(i32 %49)
  store %struct.TYPE_22__* %50, %struct.TYPE_22__** %14, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TK_COLUMN, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %41
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 1, i32* %5, align 4
  br label %152

68:                                               ; preds = %62, %56, %41
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %35

72:                                               ; preds = %35
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %74, align 8
  store %struct.TYPE_20__* %75, %struct.TYPE_20__** %11, align 8
  br label %76

76:                                               ; preds = %147, %72
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %78 = icmp ne %struct.TYPE_20__* %77, null
  br i1 %78, label %79, label %151

79:                                               ; preds = %76
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @OE_None, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %147

86:                                               ; preds = %79
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %136, %86
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %139

93:                                               ; preds = %87
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %15, align 4
  %101 = load i32*, i32** %8, align 8
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* @WO_EQ, align 4
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %106 = call i64 @findTerm(i32* %101, i32 %102, i32 %103, i32 -1, i32 %104, %struct.TYPE_20__* %105)
  %107 = icmp eq i64 0, %106
  br i1 %107, label %108, label %135

108:                                              ; preds = %93
  %109 = load i32*, i32** %6, align 8
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @findIndexCol(i32* %109, %struct.TYPE_21__* %110, i32 %111, %struct.TYPE_20__* %112, i32 %113)
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %16, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %133, label %117

117:                                              ; preds = %108
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %119, align 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %117, %108
  br label %139

134:                                              ; preds = %117
  br label %135

135:                                              ; preds = %134, %93
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %12, align 4
  br label %87

139:                                              ; preds = %133, %87
  %140 = load i32, i32* %12, align 4
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %140, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  store i32 1, i32* %5, align 4
  br label %152

146:                                              ; preds = %139
  br label %147

147:                                              ; preds = %146, %85
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 3
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %149, align 8
  store %struct.TYPE_20__* %150, %struct.TYPE_20__** %11, align 8
  br label %76

151:                                              ; preds = %76
  store i32 0, i32* %5, align 4
  br label %152

152:                                              ; preds = %151, %145, %67, %21
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local %struct.TYPE_22__* @sqlite3ExprSkipCollate(i32) #1

declare dso_local i64 @findTerm(i32*, i32, i32, i32, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @findIndexCol(i32*, %struct.TYPE_21__*, i32, %struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
