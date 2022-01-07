; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscAst.c_tSQLSyntaxNodeCreate.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscAst.c_tSQLSyntaxNodeCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32*, %struct.SSchema* }
%struct.SSchema = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64, i64, i32 }

@TK_RP = common dso_local global i64 0, align 8
@TK_INTEGER = common dso_local global i64 0, align 8
@TK_FLOAT = common dso_local global i64 0, align 8
@TK_ID = common dso_local global i64 0, align 8
@TK_TBNAME = common dso_local global i64 0, align 8
@TK_STRING = common dso_local global i64 0, align 8
@TK_BOOL = common dso_local global i64 0, align 8
@TSQL_NODE_COL = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_BINARY = common dso_local global i32 0, align 4
@TSDB_METER_NAME_LEN = common dso_local global i32 0, align 4
@TSQL_TBNAME_L = common dso_local global i32 0, align 4
@TSQL_NODE_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_11__*, i64, %struct.TYPE_12__*)* @tSQLSyntaxNodeCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @tSQLSyntaxNodeCreate(%struct.TYPE_11__* %0, i64 %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TK_RP, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %53, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TK_INTEGER, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %17
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TK_FLOAT, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %23
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TK_ID, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %29
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TK_TBNAME, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TK_STRING, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TK_BOOL, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47, %3
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %199

54:                                               ; preds = %47, %41, %35, %29, %23, %17
  store i64 0, i64* %8, align 8
  store i64 24, i64* %9, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %10, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @TK_ID, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TK_TBNAME, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %172

66:                                               ; preds = %60, %54
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TK_ID, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %112

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %101, %72
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = load i64, i64* %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @strlen(i32 %78)
  store i64 %79, i64* %11, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @strncmp(i32 %82, i32 %87, i64 %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %73
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %11, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %106

100:                                              ; preds = %93, %73
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %8, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %8, align 8
  %104 = load i64, i64* %6, align 8
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %73, label %106

106:                                              ; preds = %101, %99
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* %6, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %199

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111, %66
  %113 = load i64, i64* %9, align 8
  %114 = add i64 %113, 16
  store i64 %114, i64* %9, align 8
  %115 = load i64, i64* %9, align 8
  %116 = call %struct.TYPE_10__* @calloc(i32 1, i64 %115)
  store %struct.TYPE_10__* %116, %struct.TYPE_10__** %10, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %118 = bitcast %struct.TYPE_10__* %117 to i8*
  %119 = getelementptr inbounds i8, i8* %118, i64 24
  %120 = bitcast i8* %119 to %struct.SSchema*
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 3
  store %struct.SSchema* %120, %struct.SSchema** %122, align 8
  %123 = load i32, i32* @TSQL_NODE_COL, align 4
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @TK_ID, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %147

131:                                              ; preds = %112
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %133 = load i64, i64* %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 3
  %142 = load %struct.SSchema*, %struct.SSchema** %141, align 8
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %144 = load i64, i64* %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i64 %144
  %146 = call i32 @memcpy(%struct.SSchema* %142, %struct.TYPE_11__* %145, i32 16)
  br label %171

147:                                              ; preds = %112
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  store i32 -1, i32* %149, align 8
  %150 = load i32, i32* @TSDB_DATA_TYPE_BINARY, align 4
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 3
  %153 = load %struct.SSchema*, %struct.SSchema** %152, align 8
  %154 = getelementptr inbounds %struct.SSchema, %struct.SSchema* %153, i32 0, i32 3
  store i32 %150, i32* %154, align 4
  %155 = load i32, i32* @TSDB_METER_NAME_LEN, align 4
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 3
  %158 = load %struct.SSchema*, %struct.SSchema** %157, align 8
  %159 = getelementptr inbounds %struct.SSchema, %struct.SSchema* %158, i32 0, i32 2
  store i32 %155, i32* %159, align 4
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 3
  %162 = load %struct.SSchema*, %struct.SSchema** %161, align 8
  %163 = getelementptr inbounds %struct.SSchema, %struct.SSchema* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @TSQL_TBNAME_L, align 4
  %166 = call i32 @strcpy(i32 %164, i32 %165)
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 3
  %169 = load %struct.SSchema*, %struct.SSchema** %168, align 8
  %170 = getelementptr inbounds %struct.SSchema, %struct.SSchema* %169, i32 0, i32 0
  store i32 -1, i32* %170, align 4
  br label %171

171:                                              ; preds = %147, %131
  br label %197

172:                                              ; preds = %60
  %173 = load i64, i64* %9, align 8
  %174 = add i64 %173, 4
  store i64 %174, i64* %9, align 8
  %175 = load i64, i64* %9, align 8
  %176 = call %struct.TYPE_10__* @calloc(i32 1, i64 %175)
  store %struct.TYPE_10__* %176, %struct.TYPE_10__** %10, align 8
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %178 = bitcast %struct.TYPE_10__* %177 to i8*
  %179 = getelementptr inbounds i8, i8* %178, i64 24
  %180 = bitcast i8* %179 to i32*
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 2
  store i32* %180, i32** %182, align 8
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @toTSDBType(i64 %185)
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %191 = call i32 @tVariantCreate(i32* %189, %struct.TYPE_12__* %190)
  %192 = load i32, i32* @TSQL_NODE_VALUE, align 4
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 4
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  store i32 -1, i32* %196, align 8
  br label %197

197:                                              ; preds = %172, %171
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %198, %struct.TYPE_10__** %4, align 8
  br label %199

199:                                              ; preds = %197, %110, %53
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %200
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @strncmp(i32, i32, i64) #1

declare dso_local %struct.TYPE_10__* @calloc(i32, i64) #1

declare dso_local i32 @memcpy(%struct.SSchema*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @toTSDBType(i64) #1

declare dso_local i32 @tVariantCreate(i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
