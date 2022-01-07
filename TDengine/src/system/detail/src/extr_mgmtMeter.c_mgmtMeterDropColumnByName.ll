; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtMeterDropColumnByName.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtMeterDropColumnByName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i32, i32, i64, %struct.TYPE_14__*, %struct.TYPE_14__*, i64, i64, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@TSDB_METER_MTABLE = common dso_local global i64 0, align 8
@TSDB_METER_STABLE = common dso_local global i64 0, align 8
@TSDB_CODE_APP_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"meter: %s not belongs to any database\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"DB: %s not belongs to any account\00", align 1
@TSDB_METER_OTABLE = common dso_local global i64 0, align 8
@TSDB_METER_METRIC = common dso_local global i64 0, align 8
@meterSdb = common dso_local global i32 0, align 4
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtMeterDropColumnByName(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = icmp eq %struct.TYPE_14__* %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TSDB_METER_MTABLE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TSDB_METER_STABLE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18, %12, %2
  %25 = load i32, i32* @TSDB_CODE_APP_ERROR, align 4
  store i32 %25, i32* %3, align 4
  br label %208

26:                                               ; preds = %18
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @mgmtFindColumnIndex(%struct.TYPE_14__* %27, i8* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @TSDB_CODE_APP_ERROR, align 4
  store i32 %33, i32* %3, align 4
  br label %208

34:                                               ; preds = %26
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.TYPE_15__* @mgmtGetDbByMeterId(i32 %37)
  store %struct.TYPE_15__* %38, %struct.TYPE_15__** %7, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %40 = icmp eq %struct.TYPE_15__* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @mError(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @TSDB_CODE_APP_ERROR, align 4
  store i32 %46, i32* %3, align 4
  br label %208

47:                                               ; preds = %34
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.TYPE_16__* @mgmtGetAcct(i32 %51)
  store %struct.TYPE_16__* %52, %struct.TYPE_16__** %6, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %54 = icmp eq %struct.TYPE_16__* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @mError(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @TSDB_CODE_APP_ERROR, align 4
  store i32 %60, i32* %3, align 4
  br label %208

61:                                               ; preds = %47
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TSDB_METER_OTABLE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %93

67:                                               ; preds = %61
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 7
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 4, %72
  %74 = add i64 %70, %73
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 7
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = mul i64 4, %80
  %82 = add i64 %77, %81
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sub nsw i32 %85, %86
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = mul i64 4, %89
  %91 = trunc i64 %90 to i32
  %92 = call i32 @memmove(i64 %74, i64 %82, i32 %91)
  br label %130

93:                                               ; preds = %61
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @TSDB_METER_METRIC, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %129

99:                                               ; preds = %93
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 7
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 4, %104
  %106 = add i64 %102, %105
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = mul i64 4, %112
  %114 = add i64 %109, %113
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %117, %120
  %122 = load i32, i32* %8, align 4
  %123 = sub nsw i32 %121, %122
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = mul i64 4, %125
  %127 = trunc i64 %126 to i32
  %128 = call i32 @memmove(i64 %106, i64 %114, i32 %127)
  br label %129

129:                                              ; preds = %99, %93
  br label %130

130:                                              ; preds = %129, %67
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = sub i64 %134, 4
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %132, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %138, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %142 = call i64 @mgmtIsNormalMeter(%struct.TYPE_14__* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %130
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %148, -1
  store i64 %149, i64* %147, align 8
  br label %159

150:                                              ; preds = %130
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 8
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = sub nsw i64 %157, %153
  store i64 %158, i64* %156, align 8
  br label %159

159:                                              ; preds = %150, %144
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 7
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = call i64 @realloc(i64 %162, i32 %165)
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 7
  store i64 %166, i64* %168, align 8
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %170, align 8
  %173 = load i32, i32* @meterSdb, align 4
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %175 = call i32 @sdbUpdateRow(i32 %173, %struct.TYPE_14__* %174, i32 0, i32 1)
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @TSDB_METER_METRIC, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %206

181:                                              ; preds = %159
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 6
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %183, align 8
  store %struct.TYPE_14__* %184, %struct.TYPE_14__** %9, align 8
  br label %185

185:                                              ; preds = %201, %181
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %187 = icmp ne %struct.TYPE_14__* %186, null
  br i1 %187, label %188, label %205

188:                                              ; preds = %185
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, -1
  store i32 %192, i32* %190, align 8
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 4
  store i64 %195, i64* %197, align 8
  %198 = load i32, i32* @meterSdb, align 4
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %200 = call i32 @sdbUpdateRow(i32 %198, %struct.TYPE_14__* %199, i32 0, i32 1)
  br label %201

201:                                              ; preds = %188
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 5
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %203, align 8
  store %struct.TYPE_14__* %204, %struct.TYPE_14__** %9, align 8
  br label %185

205:                                              ; preds = %185
  br label %206

206:                                              ; preds = %205, %159
  %207 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %206, %55, %41, %32, %24
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local i32 @mgmtFindColumnIndex(%struct.TYPE_14__*, i8*) #1

declare dso_local %struct.TYPE_15__* @mgmtGetDbByMeterId(i32) #1

declare dso_local i32 @mError(i8*, i32) #1

declare dso_local %struct.TYPE_16__* @mgmtGetAcct(i32) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i64 @mgmtIsNormalMeter(%struct.TYPE_14__*) #1

declare dso_local i64 @realloc(i64, i32) #1

declare dso_local i32 @sdbUpdateRow(i32, %struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
