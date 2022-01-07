; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_doCopyQueryResultToMsg.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_doCopyQueryResultToMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_12__**, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_15__ = type { i64 }

@vnodeList = common dso_local global %struct.TYPE_16__* null, align 8
@tsCompressMsgSize = common dso_local global i64 0, align 8
@EXTRA_BYTES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"QInfo:%p compress rsp msg, before:%d, after:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i64, i8*, i64*)* @doCopyQueryResultToMsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doCopyQueryResultToMsg(%struct.TYPE_14__* %0, i64 %1, i8* %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64* %3, i64** %8, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %9, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %10, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** @vnodeList, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = mul nsw i64 %35, %36
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* @tsCompressMsgSize, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %108

41:                                               ; preds = %4
  %42 = load i64, i64* @tsCompressMsgSize, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %108

44:                                               ; preds = %41
  %45 = load i64, i64* %12, align 8
  %46 = call i8* @malloc(i64 %45)
  store i8* %46, i8** %13, align 8
  %47 = load i8*, i8** %13, align 8
  store i8* %47, i8** %14, align 8
  store i64 0, i64* %15, align 8
  br label %48

48:                                               ; preds = %89, %44
  %49 = load i64, i64* %15, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %54, label %92

54:                                               ; preds = %48
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = load i64, i64* %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %16, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %64, align 8
  %66 = load i64, i64* %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %65, i64 %66
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %16, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = mul nsw i64 %71, %73
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = mul nsw i64 %74, %77
  %79 = add nsw i64 %70, %78
  %80 = load i64, i64* %16, align 8
  %81 = load i64, i64* %6, align 8
  %82 = mul nsw i64 %80, %81
  %83 = call i32 @memmove(i8* %62, i64 %79, i64 %82)
  %84 = load i64, i64* %16, align 8
  %85 = load i64, i64* %6, align 8
  %86 = mul nsw i64 %84, %85
  %87 = load i8*, i8** %14, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 %86
  store i8* %88, i8** %14, align 8
  br label %89

89:                                               ; preds = %54
  %90 = load i64, i64* %15, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %15, align 8
  br label %48

92:                                               ; preds = %48
  %93 = load i8*, i8** %13, align 8
  %94 = load i64, i64* %12, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = load i64, i64* %12, align 8
  %97 = load i64, i64* @EXTRA_BYTES, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i64 @tsCompressString(i8* %93, i64 %94, i32 1, i8* %95, i64 %98, i32 0, i32 0, i32 0)
  %100 = load i64*, i64** %8, align 8
  store i64 %99, i64* %100, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %102 = load i64, i64* %12, align 8
  %103 = load i64*, i64** %8, align 8
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @dTrace(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %101, i64 %102, i64 %104)
  %106 = load i8*, i8** %13, align 8
  %107 = call i32 @free(i8* %106)
  br label %154

108:                                              ; preds = %41, %4
  store i64 0, i64* %17, align 8
  br label %109

109:                                              ; preds = %150, %108
  %110 = load i64, i64* %17, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp slt i64 %110, %113
  br i1 %114, label %115, label %153

115:                                              ; preds = %109
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = load i64, i64* %17, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %18, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %125, align 8
  %127 = load i64, i64* %17, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %126, i64 %127
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %18, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = mul nsw i64 %132, %134
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = mul nsw i64 %135, %138
  %140 = add nsw i64 %131, %139
  %141 = load i64, i64* %18, align 8
  %142 = load i64, i64* %6, align 8
  %143 = mul nsw i64 %141, %142
  %144 = call i32 @memmove(i8* %123, i64 %140, i64 %143)
  %145 = load i64, i64* %18, align 8
  %146 = load i64, i64* %6, align 8
  %147 = mul nsw i64 %145, %146
  %148 = load i8*, i8** %7, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 %147
  store i8* %149, i8** %7, align 8
  br label %150

150:                                              ; preds = %115
  %151 = load i64, i64* %17, align 8
  %152 = add nsw i64 %151, 1
  store i64 %152, i64* %17, align 8
  br label %109

153:                                              ; preds = %109
  br label %154

154:                                              ; preds = %153, %92
  ret void
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memmove(i8*, i64, i64) #1

declare dso_local i64 @tsCompressString(i8*, i64, i32, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @dTrace(i8*, %struct.TYPE_14__*, i64, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
