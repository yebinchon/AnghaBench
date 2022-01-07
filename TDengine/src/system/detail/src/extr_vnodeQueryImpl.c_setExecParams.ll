; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_setExecParams.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_setExecParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, %struct.TYPE_17__*, i32*, %struct.TYPE_16__, i8*, i32 }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }

@aAggs = common dso_local global %struct.TYPE_14__* null, align 8
@TSDB_FUNCSTATE_SELECTIVITY = common dso_local global i32 0, align 4
@TSDB_KEYSIZE = common dso_local global i32 0, align 4
@TSDB_FUNC_FIRST_DST = common dso_local global i32 0, align 4
@TSDB_FUNC_LAST_DST = common dso_local global i32 0, align 4
@TSDB_FUNC_TOP = common dso_local global i32 0, align 4
@TSDB_FUNC_BOTTOM = common dso_local global i32 0, align 4
@TSDB_FUNC_TWA = common dso_local global i32 0, align 4
@TSDB_FUNC_DIFF = common dso_local global i32 0, align 4
@TSDB_FUNC_ARITHM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setExecParams(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, i32 %2, i8* %3, i8* %4, i32 %5, i32 %6, %struct.TYPE_21__* %7, i32 %8, i32 %9, i8* %10, i32 %11) #0 {
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_21__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %13, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %14, align 8
  store i32 %2, i32* %15, align 4
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store %struct.TYPE_21__* %7, %struct.TYPE_21__** %20, align 8
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i8* %10, i8** %23, align 8
  store i32 %11, i32* %24, align 4
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %28 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_19__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %12
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  br label %41

34:                                               ; preds = %12
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %18, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sub nsw i32 %37, %39
  br label %41

41:                                               ; preds = %34, %30
  %42 = phi i32 [ %33, %30 ], [ %40, %34 ]
  store i32 %42, i32* %25, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 9
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %24, align 4
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i8*, i8** %16, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 8
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %21, align 4
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %22, align 4
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %59 = icmp ne %struct.TYPE_21__* %58, null
  br i1 %59, label %60, label %100

60:                                               ; preds = %41
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 7
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 6
  store i32 %66, i32* %69, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 7
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 5
  store i32 %72, i32* %75, align 4
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 7
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 4
  store i32 %78, i32* %81, align 8
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 7
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 3
  store i32 %84, i32* %87, align 4
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 2
  store i32 %90, i32* %93, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 7
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 4
  br label %104

100:                                              ; preds = %41
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  br label %104

104:                                              ; preds = %100, %60
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** @aAggs, align 8
  %106 = load i32, i32* %19, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @TSDB_FUNCSTATE_SELECTIVITY, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %104
  %115 = load i8*, i8** %17, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %127

117:                                              ; preds = %114
  %118 = load i8*, i8** %17, align 8
  %119 = load i32, i32* %25, align 4
  %120 = load i32, i32* @TSDB_KEYSIZE, align 4
  %121 = mul nsw i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %118, i64 %122
  %124 = bitcast i8* %123 to i32*
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 6
  store i32* %124, i32** %126, align 8
  br label %127

127:                                              ; preds = %117, %114, %104
  %128 = load i32, i32* %19, align 4
  %129 = load i32, i32* @TSDB_FUNC_FIRST_DST, align 4
  %130 = icmp sge i32 %128, %129
  br i1 %130, label %131, label %145

131:                                              ; preds = %127
  %132 = load i32, i32* %19, align 4
  %133 = load i32, i32* @TSDB_FUNC_LAST_DST, align 4
  %134 = icmp sle i32 %132, %133
  br i1 %134, label %135, label %145

135:                                              ; preds = %131
  %136 = load i8*, i8** %17, align 8
  %137 = load i32, i32* %25, align 4
  %138 = load i32, i32* @TSDB_KEYSIZE, align 4
  %139 = mul nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %136, i64 %140
  %142 = bitcast i8* %141 to i32*
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 6
  store i32* %142, i32** %144, align 8
  br label %203

145:                                              ; preds = %131, %127
  %146 = load i32, i32* %19, align 4
  %147 = load i32, i32* @TSDB_FUNC_TOP, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %161, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* %19, align 4
  %151 = load i32, i32* @TSDB_FUNC_BOTTOM, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %161, label %153

153:                                              ; preds = %149
  %154 = load i32, i32* %19, align 4
  %155 = load i32, i32* @TSDB_FUNC_TWA, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = load i32, i32* %19, align 4
  %159 = load i32, i32* @TSDB_FUNC_DIFF, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %190

161:                                              ; preds = %157, %153, %149, %145
  %162 = load i32, i32* %19, align 4
  %163 = load i32, i32* @TSDB_FUNC_TWA, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %180

165:                                              ; preds = %161
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %167 = call %struct.TYPE_15__* @GET_RES_INFO(%struct.TYPE_20__* %166)
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %168, align 8
  store %struct.TYPE_18__* %169, %struct.TYPE_18__** %26, align 8
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 4
  br label %180

180:                                              ; preds = %165, %161
  %181 = load i8*, i8** %17, align 8
  %182 = load i32, i32* %25, align 4
  %183 = load i32, i32* @TSDB_KEYSIZE, align 4
  %184 = mul nsw i32 %182, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %181, i64 %185
  %187 = bitcast i8* %186 to i32*
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 6
  store i32* %187, i32** %189, align 8
  br label %202

190:                                              ; preds = %157
  %191 = load i32, i32* %19, align 4
  %192 = load i32, i32* @TSDB_FUNC_ARITHM, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %201

194:                                              ; preds = %190
  %195 = load i8*, i8** %23, align 8
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 5
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i64 0
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 0
  store i8* %195, i8** %200, align 8
  br label %201

201:                                              ; preds = %194, %190
  br label %202

202:                                              ; preds = %201, %180
  br label %203

203:                                              ; preds = %202, %135
  %204 = load i32, i32* %25, align 4
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 3
  store i32 %204, i32* %206, align 4
  %207 = load i32, i32* %18, align 4
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 4
  store i32 %207, i32* %209, align 8
  ret void
}

declare dso_local i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_15__* @GET_RES_INFO(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
