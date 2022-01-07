; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscProcessShowRsp.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscProcessShowRsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_23__, %struct.TYPE_21__ }
%struct.TYPE_23__ = type { i8, %struct.TYPE_20__, i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_27__, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_27__* }
%struct.TYPE_28__ = type { i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"showlist\00", align 1
@tscCacheHandle = common dso_local global i32 0, align 4
@tsMeterMetaKeepTimer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tscProcessShowRsp(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca [20 x i8], align 16
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca %struct.TYPE_28__, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 1
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %7, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  store %struct.TYPE_23__* %18, %struct.TYPE_23__** %8, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %20 = call %struct.TYPE_26__* @tscGetMeterMetaInfo(%struct.TYPE_23__* %19, i32 0)
  store %struct.TYPE_26__* %20, %struct.TYPE_26__** %9, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %24, %struct.TYPE_24__** %4, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %31 = call i32 @tscResetForNextRetrieve(%struct.TYPE_21__* %30)
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  store %struct.TYPE_27__* %33, %struct.TYPE_27__** %3, align 8
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @ntohs(i32 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %42 = bitcast %struct.TYPE_27__* %41 to i8*
  %43 = getelementptr inbounds i8, i8* %42, i64 8
  %44 = bitcast i8* %43 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %44, %struct.TYPE_25__** %5, align 8
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @ntohs(i32 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %67, %1
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @htons(i32 %61)
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 1
  store %struct.TYPE_25__* %66, %struct.TYPE_25__** %5, align 8
  br label %67

67:                                               ; preds = %58
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %52

70:                                               ; preds = %52
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load i8, i8* %72, align 4
  %74 = sext i8 %73 to i32
  %75 = add nsw i32 %74, 97
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  store i8 %76, i8* %77, align 16
  %78 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = call i32 @strcpy(i8* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %81 = load i32, i32* @tscCacheHandle, align 4
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 0
  %84 = bitcast %struct.TYPE_27__** %83 to i8*
  %85 = call i32 @taosRemoveDataFromCache(i32 %81, i8* %84, i32 0)
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 4
  %91 = add i64 %90, 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* @tscCacheHandle, align 4
  %94 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %96 = bitcast %struct.TYPE_27__* %95 to i8*
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @tsMeterMetaKeepTimer, align 4
  %99 = call i64 @taosAddDataIntoCache(i32 %93, i8* %94, i8* %96, i32 %97, i32 %98)
  %100 = inttoptr i64 %99 to %struct.TYPE_27__*
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 0
  store %struct.TYPE_27__* %100, %struct.TYPE_27__** %102, align 8
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %110, align 8
  %112 = call %struct.TYPE_25__* @tsGetSchema(%struct.TYPE_27__* %111)
  store %struct.TYPE_25__* %112, %struct.TYPE_25__** %12, align 8
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @tscColumnBaseInfoReserve(i32* %114, i32 %117)
  %119 = bitcast %struct.TYPE_28__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %119, i8 0, i64 16, i1 false)
  store i64 0, i64* %14, align 8
  br label %120

120:                                              ; preds = %139, %70
  %121 = load i64, i64* %14, align 8
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = icmp ult i64 %121, %125
  br i1 %126, label %127, label %142

127:                                              ; preds = %120
  %128 = load i64, i64* %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 0
  store i64 %128, i64* %129, align 8
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %131 = call i32 @tscColumnBaseInfoInsert(%struct.TYPE_23__* %130, %struct.TYPE_28__* %13)
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 1
  %134 = load i64, i64* %14, align 8
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %136 = load i64, i64* %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i64 %136
  %138 = call i32 @tscFieldInfoSetValFromSchema(%struct.TYPE_20__* %133, i64 %134, %struct.TYPE_25__* %137)
  br label %139

139:                                              ; preds = %127
  %140 = load i64, i64* %14, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %14, align 8
  br label %120

142:                                              ; preds = %120
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %144 = call i32 @tscFieldInfoCalOffset(%struct.TYPE_23__* %143)
  ret i32 0
}

declare dso_local %struct.TYPE_26__* @tscGetMeterMetaInfo(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @tscResetForNextRetrieve(%struct.TYPE_21__*) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @taosRemoveDataFromCache(i32, i8*, i32) #1

declare dso_local i64 @taosAddDataIntoCache(i32, i8*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_25__* @tsGetSchema(%struct.TYPE_27__*) #1

declare dso_local i32 @tscColumnBaseInfoReserve(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @tscColumnBaseInfoInsert(%struct.TYPE_23__*, %struct.TYPE_28__*) #1

declare dso_local i32 @tscFieldInfoSetValFromSchema(%struct.TYPE_20__*, i64, %struct.TYPE_25__*) #1

declare dso_local i32 @tscFieldInfoCalOffset(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
