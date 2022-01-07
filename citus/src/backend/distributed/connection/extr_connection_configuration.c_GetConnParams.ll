; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_connection_configuration.c_GetConnParams.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_connection_configuration.c_GetConnParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i8**, i8** }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"dbname\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"client_encoding\00", align 1
@ConnParams = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"too many connParams entries\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetConnParams(%struct.TYPE_4__* %0, i8*** %1, i8*** %2, i64* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8***, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [12 x i8], align 1
  %12 = alloca [5 x i8*], align 16
  %13 = alloca [5 x i8*], align 16
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8*** %1, i8**** %7, align 8
  store i8*** %2, i8**** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = bitcast [12 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %19, i8 0, i64 12, i1 false)
  %20 = bitcast [5 x i8*]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 40, i1 false)
  %21 = bitcast i8* %20 to [5 x i8*]*
  %22 = getelementptr inbounds [5 x i8*], [5 x i8*]* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8** %22, align 16
  %23 = getelementptr inbounds [5 x i8*], [5 x i8*]* %21, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8** %23, align 8
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* %21, i32 0, i32 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8** %24, align 16
  %25 = getelementptr inbounds [5 x i8*], [5 x i8*]* %21, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8** %25, align 8
  %26 = getelementptr inbounds [5 x i8*], [5 x i8*]* %21, i32 0, i32 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8** %26, align 16
  %27 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %27, align 8
  %31 = getelementptr inbounds i8*, i8** %27, i64 1
  %32 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 0
  store i8* %32, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %31, i64 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %33, align 8
  %37 = getelementptr inbounds i8*, i8** %33, i64 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %37, align 8
  %41 = getelementptr inbounds i8*, i8** %37, i64 1
  %42 = call i8* (...) @GetDatabaseEncodingName()
  store i8* %42, i8** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ConnParams, i32 0, i32 0), align 8
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 8
  %47 = trunc i64 %46 to i32
  %48 = call i8** @MemoryContextAllocZero(i32 %43, i32 %47)
  %49 = load i8***, i8**** %7, align 8
  store i8** %48, i8*** %49, align 8
  store i8** %48, i8*** %14, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ConnParams, i32 0, i32 0), align 8
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 8
  %54 = trunc i64 %53 to i32
  %55 = call i8** @MemoryContextAllocZero(i32 %50, i32 %54)
  %56 = load i8***, i8**** %8, align 8
  store i8** %55, i8*** %56, align 8
  store i8** %55, i8*** %15, align 8
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ConnParams, i32 0, i32 1), align 8
  %58 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i64 0, i64 0
  %59 = call i64 @lengthof(i8** %58)
  %60 = add i64 %57, %59
  store i64 %60, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ConnParams, i32 0, i32 1), align 8
  %62 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i64 0, i64 0
  %63 = call i64 @lengthof(i8** %62)
  %64 = add i64 %61, %63
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ConnParams, i32 0, i32 0), align 8
  %66 = sext i32 %65 to i64
  %67 = icmp uge i64 %64, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %5
  %69 = load i32, i32* @ERROR, align 4
  %70 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %71 = call i32 @errcode(i32 %70)
  %72 = call i32 @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %73 = call i32 @ereport(i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %68, %5
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 0
  %79 = call i32 @pg_ltoa(i32 %77, i8* %78)
  store i64 0, i64* %17, align 8
  br label %80

80:                                               ; preds = %99, %74
  %81 = load i64, i64* %17, align 8
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ConnParams, i32 0, i32 1), align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %80
  %85 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ConnParams, i32 0, i32 2), align 8
  %86 = load i64, i64* %17, align 8
  %87 = getelementptr inbounds i8*, i8** %85, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = load i8**, i8*** %14, align 8
  %90 = load i64, i64* %17, align 8
  %91 = getelementptr inbounds i8*, i8** %89, i64 %90
  store i8* %88, i8** %91, align 8
  %92 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ConnParams, i32 0, i32 3), align 8
  %93 = load i64, i64* %17, align 8
  %94 = getelementptr inbounds i8*, i8** %92, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = load i8**, i8*** %15, align 8
  %97 = load i64, i64* %17, align 8
  %98 = getelementptr inbounds i8*, i8** %96, i64 %97
  store i8* %95, i8** %98, align 8
  br label %99

99:                                               ; preds = %84
  %100 = load i64, i64* %17, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %17, align 8
  br label %80

102:                                              ; preds = %80
  %103 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ConnParams, i32 0, i32 1), align 8
  %104 = load i64*, i64** %9, align 8
  store i64 %103, i64* %104, align 8
  store i64 0, i64* %18, align 8
  br label %105

105:                                              ; preds = %131, %102
  %106 = load i64, i64* %18, align 8
  %107 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i64 0, i64 0
  %108 = call i64 @lengthof(i8** %107)
  %109 = icmp ult i64 %106, %108
  br i1 %109, label %110, label %134

110:                                              ; preds = %105
  %111 = load i32, i32* %10, align 4
  %112 = load i64, i64* %18, align 8
  %113 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i64 0, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = call i8* @MemoryContextStrdup(i32 %111, i8* %114)
  %116 = load i8**, i8*** %14, align 8
  %117 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ConnParams, i32 0, i32 1), align 8
  %118 = load i64, i64* %18, align 8
  %119 = add i64 %117, %118
  %120 = getelementptr inbounds i8*, i8** %116, i64 %119
  store i8* %115, i8** %120, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load i64, i64* %18, align 8
  %123 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = call i8* @MemoryContextStrdup(i32 %121, i8* %124)
  %126 = load i8**, i8*** %15, align 8
  %127 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ConnParams, i32 0, i32 1), align 8
  %128 = load i64, i64* %18, align 8
  %129 = add i64 %127, %128
  %130 = getelementptr inbounds i8*, i8** %126, i64 %129
  store i8* %125, i8** %130, align 8
  br label %131

131:                                              ; preds = %110
  %132 = load i64, i64* %18, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %18, align 8
  br label %105

134:                                              ; preds = %105
  %135 = load i8**, i8*** %15, align 8
  %136 = load i64, i64* %16, align 8
  %137 = getelementptr inbounds i8*, i8** %135, i64 %136
  store i8* null, i8** %137, align 8
  %138 = load i8**, i8*** %14, align 8
  %139 = load i64, i64* %16, align 8
  %140 = getelementptr inbounds i8*, i8** %138, i64 %139
  store i8* null, i8** %140, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @GetDatabaseEncodingName(...) #2

declare dso_local i8** @MemoryContextAllocZero(i32, i32) #2

declare dso_local i64 @lengthof(i8**) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*) #2

declare dso_local i32 @pg_ltoa(i32, i8*) #2

declare dso_local i8* @MemoryContextStrdup(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
