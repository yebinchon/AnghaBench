; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_isCandidateForInOpt.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_isCandidateForInOpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, %struct.TYPE_19__*, %struct.TYPE_17__*, i64, i64, i64 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_20__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_20__ = type { i64, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_18__* }

@EP_xIsSelect = common dso_local global i32 0, align 4
@EP_VarSelect = common dso_local global i32 0, align 4
@SF_Distinct = common dso_local global i32 0, align 4
@SF_Aggregate = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (%struct.TYPE_20__*)* @isCandidateForInOpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @isCandidateForInOpt(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %11 = load i32, i32* @EP_xIsSelect, align 4
  %12 = call i64 @ExprHasProperty(%struct.TYPE_20__* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %2, align 8
  br label %171

15:                                               ; preds = %1
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %17 = load i32, i32* @EP_VarSelect, align 4
  %18 = call i64 @ExprHasProperty(%struct.TYPE_20__* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %2, align 8
  br label %171

21:                                               ; preds = %15
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %4, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %2, align 8
  br label %171

31:                                               ; preds = %21
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SF_Distinct, align 4
  %36 = load i32, i32* @SF_Aggregate, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %31
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SF_Distinct, align 4
  %45 = load i32, i32* @SF_Aggregate, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = load i32, i32* @SF_Distinct, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @testcase(i32 %50)
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SF_Distinct, align 4
  %56 = load i32, i32* @SF_Aggregate, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = load i32, i32* @SF_Aggregate, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @testcase(i32 %61)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %2, align 8
  br label %171

63:                                               ; preds = %31
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %2, align 8
  br label %171

75:                                               ; preds = %63
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %2, align 8
  br label %171

81:                                               ; preds = %75
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %83, align 8
  store %struct.TYPE_17__* %84, %struct.TYPE_17__** %5, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %86 = icmp ne %struct.TYPE_17__* %85, null
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 1
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %2, align 8
  br label %171

94:                                               ; preds = %81
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %2, align 8
  br label %171

103:                                              ; preds = %94
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  store %struct.TYPE_16__* %109, %struct.TYPE_16__** %7, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %111 = icmp ne %struct.TYPE_16__* %110, null
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %121 = call i64 @IsVirtual(%struct.TYPE_16__* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %103
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %2, align 8
  br label %171

124:                                              ; preds = %103
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %126, align 8
  store %struct.TYPE_19__* %127, %struct.TYPE_19__** %6, align 8
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %129 = icmp ne %struct.TYPE_19__* %128, null
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  store i32 0, i32* %8, align 4
  br label %132

132:                                              ; preds = %166, %124
  %133 = load i32, i32* %8, align 4
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %169

138:                                              ; preds = %132
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %145, align 8
  store %struct.TYPE_20__* %146, %struct.TYPE_20__** %9, align 8
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @TK_COLUMN, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %138
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %2, align 8
  br label %171

153:                                              ; preds = %138
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i64 0
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %156, %162
  %164 = zext i1 %163 to i32
  %165 = call i32 @assert(i32 %164)
  br label %166

166:                                              ; preds = %153
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %132

169:                                              ; preds = %132
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_18__* %170, %struct.TYPE_18__** %2, align 8
  br label %171

171:                                              ; preds = %169, %152, %123, %102, %93, %80, %74, %40, %30, %20, %14
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  ret %struct.TYPE_18__* %172
}

declare dso_local i64 @ExprHasProperty(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @IsVirtual(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
