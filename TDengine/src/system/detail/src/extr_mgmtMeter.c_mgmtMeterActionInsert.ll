; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtMeterActionInsert.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtMeterActionInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i8*, i64, i8*, i32, i32*, i32*, %struct.TYPE_22__, i64 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32, %struct.TYPE_25__**, i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"id:%s not in vgroup:%d\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"vgroup:%d not in DB:%s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"account not exists\00", align 1
@TSDB_METER_STABLE = common dso_local global i64 0, align 8
@sdbMaster = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"sid:%d is not matched from the master:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mgmtMeterActionInsert(i8* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %10, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %11, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %12, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %13, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %14, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %17, %struct.TYPE_25__** %10, align 8
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %19 = call i64 @mgmtIsNormalMeter(%struct.TYPE_25__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %64

21:                                               ; preds = %4
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 7
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.TYPE_24__* @mgmtGetVgroup(i32 %25)
  store %struct.TYPE_24__* %26, %struct.TYPE_24__** %11, align 8
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %28 = icmp eq %struct.TYPE_24__* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i8*, ...) @mError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %36)
  store i8* null, i8** %5, align 8
  br label %199

38:                                               ; preds = %21
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.TYPE_26__* @mgmtGetDb(i32 %41)
  store %struct.TYPE_26__* %42, %struct.TYPE_26__** %12, align 8
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %44 = icmp eq %struct.TYPE_26__* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i8*, ...) @mError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %51)
  store i8* null, i8** %5, align 8
  br label %199

53:                                               ; preds = %38
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.TYPE_27__* @mgmtGetAcct(i32 %57)
  store %struct.TYPE_27__* %58, %struct.TYPE_27__** %14, align 8
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %60 = icmp eq %struct.TYPE_27__* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = call i32 (i8*, ...) @mError(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i8* null, i8** %5, align 8
  br label %199

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %4
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %66 = call i64 @mgmtMeterCreateFromMetric(%struct.TYPE_25__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %64
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 8
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call %struct.TYPE_25__* @mgmtGetMeter(i8* %77)
  store %struct.TYPE_25__* %78, %struct.TYPE_25__** %13, align 8
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %80 = icmp ne %struct.TYPE_25__* %79, null
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  br label %83

83:                                               ; preds = %68, %64
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @TSDB_METER_STABLE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %83
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 8
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = mul i64 4, %97
  %99 = getelementptr inbounds i8, i8* %93, i64 %98
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 3
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %89, %83
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %104 = call i64 @mgmtIsNormalMeter(%struct.TYPE_25__* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %182

106:                                              ; preds = %102
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %108 = icmp ne %struct.TYPE_25__* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %112 = call i32 @mgmtAddMeterIntoMetric(%struct.TYPE_25__* %110, %struct.TYPE_25__* %111)
  br label %113

113:                                              ; preds = %109, %106
  %114 = load i32, i32* @sdbMaster, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %135, label %116

116:                                              ; preds = %113
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @taosAllocateId(i32 %119)
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %15, align 4
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 7
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %121, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %116
  %128 = load i32, i32* %15, align 4
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 7
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8*, ...) @mError(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %128, i32 %132)
  store i8* null, i8** %5, align 8
  br label %199

134:                                              ; preds = %116
  br label %135

135:                                              ; preds = %134, %113
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = sub nsw i32 %138, 1
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, %139
  store i32 %144, i32* %142, align 4
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 8
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %155, align 8
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 7
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %156, i64 %161
  store %struct.TYPE_25__* %153, %struct.TYPE_25__** %162, align 8
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = sub nsw i32 %169, 1
  %171 = icmp sge i32 %165, %170
  br i1 %171, label %172, label %181

172:                                              ; preds = %135
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp sgt i32 %175, 1
  br i1 %176, label %177, label %181

177:                                              ; preds = %172
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %180 = call i32 @mgmtMoveVgroupToTail(%struct.TYPE_26__* %178, %struct.TYPE_24__* %179)
  br label %181

181:                                              ; preds = %177, %172, %135
  br label %198

182:                                              ; preds = %102
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 6
  store i32* null, i32** %184, align 8
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 5
  store i32* null, i32** %186, align 8
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call %struct.TYPE_26__* @mgmtGetDbByMeterId(i32 %189)
  store %struct.TYPE_26__* %190, %struct.TYPE_26__** %12, align 8
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %192 = icmp ne %struct.TYPE_26__* %191, null
  br i1 %192, label %193, label %197

193:                                              ; preds = %182
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %196 = call i32 @mgmtAddMetricIntoDb(%struct.TYPE_26__* %194, %struct.TYPE_25__* %195)
  br label %197

197:                                              ; preds = %193, %182
  br label %198

198:                                              ; preds = %197, %181
  store i8* null, i8** %5, align 8
  br label %199

199:                                              ; preds = %198, %127, %61, %45, %29
  %200 = load i8*, i8** %5, align 8
  ret i8* %200
}

declare dso_local i64 @mgmtIsNormalMeter(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_24__* @mgmtGetVgroup(i32) #1

declare dso_local i32 @mError(i8*, ...) #1

declare dso_local %struct.TYPE_26__* @mgmtGetDb(i32) #1

declare dso_local %struct.TYPE_27__* @mgmtGetAcct(i32) #1

declare dso_local i64 @mgmtMeterCreateFromMetric(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @mgmtGetMeter(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mgmtAddMeterIntoMetric(%struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @taosAllocateId(i32) #1

declare dso_local i32 @mgmtMoveVgroupToTail(%struct.TYPE_26__*, %struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_26__* @mgmtGetDbByMeterId(i32) #1

declare dso_local i32 @mgmtAddMetricIntoDb(%struct.TYPE_26__*, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
