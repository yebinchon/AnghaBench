; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSql.c_doSetResultRowData.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSql.c_doSetResultRowData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { i8**, i32*, i32, i8** }
%struct.TYPE_16__ = type { i64, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64 }

@TSDB_DATA_TYPE_NCHAR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"%p charset:%s to %s. val:%ls convert failed.\00", align 1
@DEFAULT_UNICODE_ENCODEC = common dso_local global i32 0, align 4
@tsCharset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (%struct.TYPE_15__*)* @doSetResultRowData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @doSetResultRowData(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %3, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %181, %1
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %184

19:                                               ; preds = %12
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @TSC_GET_RESPTR_BASE(%struct.TYPE_14__* %20, %struct.TYPE_16__* %21, i32 %22, i32 %25)
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %33, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr i8, i8* %26, i64 %38
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  store i8* %39, i8** %45, align 8
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %19
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %181

54:                                               ; preds = %48, %19
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call %struct.TYPE_13__* @tscFieldInfoGetField(%struct.TYPE_16__* %55, i32 %56)
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %7, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i8**, i8*** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @isNull(i8* %64, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %54
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i8**, i8*** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  store i8* null, i8** %76, align 8
  br label %180

77:                                               ; preds = %54
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TSDB_DATA_TYPE_NCHAR, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %179

83:                                               ; preds = %77
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 3
  %86 = load i8**, i8*** %85, align 8
  %87 = load i64, i64* %5, align 8
  %88 = getelementptr inbounds i8*, i8** %86, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %102

91:                                               ; preds = %83
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  %96 = call i8* @malloc(i64 %95)
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 3
  %99 = load i8**, i8*** %98, align 8
  %100 = load i64, i64* %5, align 8
  %101 = getelementptr inbounds i8*, i8** %99, i64 %100
  store i8* %96, i8** %101, align 8
  br label %119

102:                                              ; preds = %83
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 3
  %105 = load i8**, i8*** %104, align 8
  %106 = load i64, i64* %5, align 8
  %107 = getelementptr inbounds i8*, i8** %105, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, 1
  %113 = call i8* @realloc(i8* %108, i64 %112)
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 3
  %116 = load i8**, i8*** %115, align 8
  %117 = load i64, i64* %5, align 8
  %118 = getelementptr inbounds i8*, i8** %116, i64 %117
  store i8* %113, i8** %118, align 8
  br label %119

119:                                              ; preds = %102, %91
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 3
  %122 = load i8**, i8*** %121, align 8
  %123 = load i64, i64* %5, align 8
  %124 = getelementptr inbounds i8*, i8** %122, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, 1
  %130 = call i32 @memset(i8* %125, i32 0, i64 %129)
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i8**, i8*** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 3
  %143 = load i8**, i8*** %142, align 8
  %144 = load i64, i64* %5, align 8
  %145 = getelementptr inbounds i8*, i8** %143, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = call i64 @taosUcs4ToMbs(i8* %137, i64 %140, i8* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %119
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 3
  %152 = load i8**, i8*** %151, align 8
  %153 = load i64, i64* %5, align 8
  %154 = getelementptr inbounds i8*, i8** %152, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load i8**, i8*** %157, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %158, i64 %160
  store i8* %155, i8** %161, align 8
  br label %176

162:                                              ; preds = %119
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %164 = load i32, i32* @DEFAULT_UNICODE_ENCODEC, align 4
  %165 = load i32, i32* @tsCharset, align 4
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = load i8**, i8*** %167, align 8
  %169 = call i32 @tscError(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %163, i32 %164, i32 %165, i8** %168)
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = load i8**, i8*** %171, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  store i8* null, i8** %175, align 8
  br label %176

176:                                              ; preds = %162, %149
  %177 = load i64, i64* %5, align 8
  %178 = add i64 %177, 1
  store i64 %178, i64* %5, align 8
  br label %179

179:                                              ; preds = %176, %77
  br label %180

180:                                              ; preds = %179, %70
  br label %181

181:                                              ; preds = %180, %53
  %182 = load i32, i32* %6, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %6, align 4
  br label %12

184:                                              ; preds = %12
  %185 = load i64, i64* %5, align 8
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = icmp ule i64 %185, %190
  %192 = zext i1 %191 to i32
  %193 = call i32 @assert(i32 %192)
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 0
  %196 = load i8**, i8*** %195, align 8
  ret i8** %196
}

declare dso_local i8* @TSC_GET_RESPTR_BASE(%struct.TYPE_14__*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local %struct.TYPE_13__* @tscFieldInfoGetField(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @isNull(i8*, i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @taosUcs4ToMbs(i8*, i64, i8*) #1

declare dso_local i32 @tscError(i8*, %struct.TYPE_15__*, i32, i32, i8**) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
