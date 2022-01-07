; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_restJson.c_restStopSqlJson.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_restJson.c_restStopSqlJson.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@JsonArrEnd = common dso_local global i32 0, align 4
@REST_JSON_ROWS = common dso_local global i32 0, align 4
@REST_JSON_ROWS_LEN = common dso_local global i32 0, align 4
@JsonObjEnd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @restStopSqlJson(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32* @httpMallocJsonBuf(i32* %6)
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %31

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @JsonArrEnd, align 4
  %14 = call i32 @httpJsonToken(i32* %12, i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @httpJsonItemToken(i32* %15)
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @REST_JSON_ROWS, align 4
  %19 = load i32, i32* @REST_JSON_ROWS_LEN, align 4
  %20 = call i32 @httpJsonPairHead(i32* %17, i32 %18, i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @httpJsonInt64(i32* %21, i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @JsonObjEnd, align 4
  %28 = call i32 @httpJsonToken(i32* %26, i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @httpWriteJsonBufEnd(i32* %29)
  br label %31

31:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32* @httpMallocJsonBuf(i32*) #1

declare dso_local i32 @httpJsonToken(i32*, i32) #1

declare dso_local i32 @httpJsonItemToken(i32*) #1

declare dso_local i32 @httpJsonPairHead(i32*, i32, i32) #1

declare dso_local i32 @httpJsonInt64(i32*, i32) #1

declare dso_local i32 @httpWriteJsonBufEnd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
