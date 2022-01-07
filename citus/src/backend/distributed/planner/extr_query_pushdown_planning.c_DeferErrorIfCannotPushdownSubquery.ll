; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_query_pushdown_planning.c_DeferErrorIfCannotPushdownSubquery.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_query_pushdown_planning.c_DeferErrorIfCannotPushdownSubquery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32*, i32*, i32*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_17__ = type { i64 }

@.str = private unnamed_addr constant [70 x i8] c"Subqueries without a FROM clause can only contain immutable functions\00", align 1
@.str.1 = private unnamed_addr constant [94 x i8] c"Offset clause is currently unsupported when a subquery references a column from another query\00", align 1
@SubqueryPushdown = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [98 x i8] c"Limit in subquery is currently unsupported when a subquery references a column from another query\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"Limit in subquery without limit in the outermost query is unsupported\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Recursive queries are currently unsupported\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"Common Table Expressions are currently unsupported\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"For Update/Share commands are currently unsupported\00", align 1
@.str.7 = private unnamed_addr constant [119 x i8] c"Group by list without partition column is currently unsupported when a subquery references a column from another query\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"could not run distributed query with GROUPING SETS, CUBE, or ROLLUP\00", align 1
@.str.9 = private unnamed_addr constant [109 x i8] c"Aggregates without group by are currently unsupported when a subquery references a column from another query\00", align 1
@.str.10 = private unnamed_addr constant [129 x i8] c"Having qual without group by on partition column is currently unsupported when a subquery references a column from another query\00", align 1
@.str.11 = private unnamed_addr constant [70 x i8] c"Distinct on columns without partition column is currently unsupported\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [31 x i8] c"cannot push down this subquery\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_19__* @DeferErrorIfCannotPushdownSubquery(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %9, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %19 = call %struct.TYPE_19__* @DeferErrorIfUnsupportedTableCombination(%struct.TYPE_18__* %18)
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %9, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %21 = icmp ne %struct.TYPE_19__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %3, align 8
  br label %197

24:                                               ; preds = %2
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %26 = call i64 @HasEmptyJoinTree(%struct.TYPE_18__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @contain_mutable_functions(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %35

35:                                               ; preds = %34, %28, %24
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 12
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  store i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %41

41:                                               ; preds = %40, %35
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 11
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i64, i64* @SubqueryPushdown, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  store i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %50

50:                                               ; preds = %49, %46, %41
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 11
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i64, i64* @SubqueryPushdown, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %62

62:                                               ; preds = %61, %58, %55, %50
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 10
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %69 = call %struct.TYPE_19__* @DeferErrorIfUnsupportedUnionQuery(%struct.TYPE_18__* %68)
  store %struct.TYPE_19__* %69, %struct.TYPE_19__** %9, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %71 = icmp ne %struct.TYPE_19__* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_19__* %73, %struct.TYPE_19__** %3, align 8
  br label %197

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %62
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 9
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 0, i32* %6, align 4
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %81

81:                                               ; preds = %80, %75
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 8
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 0, i32* %6, align 4
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %87

87:                                               ; preds = %86, %81
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 7
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 0, i32* %6, align 4
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %93

93:                                               ; preds = %92, %87
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %115

98:                                               ; preds = %93
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  store i32* %101, i32** %10, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  store i32* %104, i32** %11, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = call i32* @GroupTargetEntryList(i32* %105, i32* %106)
  store i32* %107, i32** %12, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %109 = load i32*, i32** %12, align 8
  %110 = call i32 @TargetListOnPartitionColumn(%struct.TYPE_18__* %108, i32* %109)
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %98
  store i32 0, i32* %6, align 4
  store i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  br label %114

114:                                              ; preds = %113, %98
  br label %115

115:                                              ; preds = %114, %93
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 6
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i32 0, i32* %6, align 4
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  br label %121

121:                                              ; preds = %120, %115
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %128 = call i32 @SafeToPushdownWindowFunction(%struct.TYPE_18__* %127, %struct.TYPE_17__** %8)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %126
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to i8*
  store i8* %134, i8** %7, align 8
  store i32 0, i32* %6, align 4
  br label %135

135:                                              ; preds = %130, %126, %121
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = icmp eq i32* %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  store i32 0, i32* %6, align 4
  store i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.9, i64 0, i64 0), i8** %7, align 8
  br label %146

146:                                              ; preds = %145, %140, %135
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = icmp eq i32* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  store i32 0, i32* %6, align 4
  store i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.10, i64 0, i64 0), i8** %7, align 8
  br label %157

157:                                              ; preds = %156, %151, %146
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %179

162:                                              ; preds = %157
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  store i32* %165, i32** %14, align 8
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  store i32* %168, i32** %15, align 8
  %169 = load i32*, i32** %14, align 8
  %170 = load i32*, i32** %15, align 8
  %171 = call i32* @GroupTargetEntryList(i32* %169, i32* %170)
  store i32* %171, i32** %16, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %173 = load i32*, i32** %16, align 8
  %174 = call i32 @TargetListOnPartitionColumn(%struct.TYPE_18__* %172, i32* %173)
  store i32 %174, i32* %17, align 4
  %175 = load i32, i32* %17, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %162
  store i32 0, i32* %6, align 4
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.11, i64 0, i64 0), i8** %7, align 8
  br label %178

178:                                              ; preds = %177, %162
  br label %179

179:                                              ; preds = %178, %157
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %181 = call %struct.TYPE_19__* @DeferErrorIfFromClauseRecurs(%struct.TYPE_18__* %180)
  store %struct.TYPE_19__* %181, %struct.TYPE_19__** %9, align 8
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %183 = icmp ne %struct.TYPE_19__* %182, null
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  store i32 0, i32* %6, align 4
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = inttoptr i64 %187 to i8*
  store i8* %188, i8** %7, align 8
  br label %189

189:                                              ; preds = %184, %179
  %190 = load i32, i32* %6, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %189
  %193 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %194 = load i8*, i8** %7, align 8
  %195 = call %struct.TYPE_19__* @DeferredError(i32 %193, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* %194, i32* null)
  store %struct.TYPE_19__* %195, %struct.TYPE_19__** %3, align 8
  br label %197

196:                                              ; preds = %189
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  br label %197

197:                                              ; preds = %196, %192, %72, %22
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  ret %struct.TYPE_19__* %198
}

declare dso_local %struct.TYPE_19__* @DeferErrorIfUnsupportedTableCombination(%struct.TYPE_18__*) #1

declare dso_local i64 @HasEmptyJoinTree(%struct.TYPE_18__*) #1

declare dso_local i64 @contain_mutable_functions(i32*) #1

declare dso_local %struct.TYPE_19__* @DeferErrorIfUnsupportedUnionQuery(%struct.TYPE_18__*) #1

declare dso_local i32* @GroupTargetEntryList(i32*, i32*) #1

declare dso_local i32 @TargetListOnPartitionColumn(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @SafeToPushdownWindowFunction(%struct.TYPE_18__*, %struct.TYPE_17__**) #1

declare dso_local %struct.TYPE_19__* @DeferErrorIfFromClauseRecurs(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_19__* @DeferredError(i32, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
