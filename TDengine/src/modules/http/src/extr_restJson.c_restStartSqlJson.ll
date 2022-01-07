; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_restJson.c_restStartSqlJson.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_restJson.c_restStartSqlJson.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@JsonObjStt = common dso_local global i32 0, align 4
@REST_JSON_STATUS = common dso_local global i32 0, align 4
@REST_JSON_STATUS_LEN = common dso_local global i32 0, align 4
@REST_JSON_SUCCESS = common dso_local global i32 0, align 4
@REST_JSON_SUCCESS_LEN = common dso_local global i32 0, align 4
@REST_JSON_HEAD = common dso_local global i32 0, align 4
@REST_JSON_HEAD_LEN = common dso_local global i32 0, align 4
@JsonArrStt = common dso_local global i32 0, align 4
@REST_JSON_AFFECT_ROWS = common dso_local global i32 0, align 4
@REST_JSON_AFFECT_ROWS_LEN = common dso_local global i32 0, align 4
@JsonArrEnd = common dso_local global i32 0, align 4
@REST_JSON_DATA = common dso_local global i32 0, align 4
@REST_JSON_DATA_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @restStartSqlJson(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32* @httpMallocJsonBuf(i32* %11)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %100

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = call %struct.TYPE_3__* @taos_fetch_fields(i32* %17)
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %8, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @taos_num_fields(i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @httpInitJsonBuf(i32* %21, i32* %22)
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @httpWriteJsonBufHead(i32* %24)
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @JsonObjStt, align 4
  %28 = call i32 @httpJsonToken(i32* %26, i32 %27)
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @httpJsonItemToken(i32* %29)
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @REST_JSON_STATUS, align 4
  %33 = load i32, i32* @REST_JSON_STATUS_LEN, align 4
  %34 = load i32, i32* @REST_JSON_SUCCESS, align 4
  %35 = load i32, i32* @REST_JSON_SUCCESS_LEN, align 4
  %36 = call i32 @httpJsonPair(i32* %31, i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @httpJsonItemToken(i32* %37)
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @REST_JSON_HEAD, align 4
  %41 = load i32, i32* @REST_JSON_HEAD_LEN, align 4
  %42 = call i32 @httpJsonPairHead(i32* %39, i32 %40, i32 %41)
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @httpJsonItemToken(i32* %43)
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* @JsonArrStt, align 4
  %47 = call i32 @httpJsonToken(i32* %45, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %16
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @httpJsonItemToken(i32* %51)
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* @REST_JSON_AFFECT_ROWS, align 4
  %55 = load i32, i32* @REST_JSON_AFFECT_ROWS_LEN, align 4
  %56 = call i32 @httpJsonString(i32* %53, i32 %54, i32 %55)
  br label %85

57:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %81, %57
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %58
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @httpJsonItemToken(i32* %63)
  %65 = load i32*, i32** %7, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @strlen(i32 %77)
  %79 = trunc i64 %78 to i32
  %80 = call i32 @httpJsonString(i32* %65, i32 %71, i32 %79)
  br label %81

81:                                               ; preds = %62
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %58

84:                                               ; preds = %58
  br label %85

85:                                               ; preds = %84, %50
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* @JsonArrEnd, align 4
  %88 = call i32 @httpJsonToken(i32* %86, i32 %87)
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @httpJsonItemToken(i32* %89)
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* @REST_JSON_DATA, align 4
  %93 = load i32, i32* @REST_JSON_DATA_LEN, align 4
  %94 = call i32 @httpJsonPairHead(i32* %91, i32 %92, i32 %93)
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @httpJsonItemToken(i32* %95)
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* @JsonArrStt, align 4
  %99 = call i32 @httpJsonToken(i32* %97, i32 %98)
  br label %100

100:                                              ; preds = %85, %15
  ret void
}

declare dso_local i32* @httpMallocJsonBuf(i32*) #1

declare dso_local %struct.TYPE_3__* @taos_fetch_fields(i32*) #1

declare dso_local i32 @taos_num_fields(i32*) #1

declare dso_local i32 @httpInitJsonBuf(i32*, i32*) #1

declare dso_local i32 @httpWriteJsonBufHead(i32*) #1

declare dso_local i32 @httpJsonToken(i32*, i32) #1

declare dso_local i32 @httpJsonItemToken(i32*) #1

declare dso_local i32 @httpJsonPair(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @httpJsonPairHead(i32*, i32, i32) #1

declare dso_local i32 @httpJsonString(i32*, i32, i32) #1

declare dso_local i64 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
