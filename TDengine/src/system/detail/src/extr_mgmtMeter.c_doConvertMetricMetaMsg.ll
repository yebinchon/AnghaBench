; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_doConvertMetricMetaMsg.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_doConvertMetricMetaMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64, i32, i32, i64, i32, i32, i64, i64*, i32 }
%struct.TYPE_5__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_5__*, i64)* @doConvertMetricMetaMsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @doConvertMetricMetaMsg(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = bitcast %struct.TYPE_5__* %9 to i8*
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %10, i64 %17
  %19 = bitcast i8* %18 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %5, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i8* @htons(i64 %22)
  %24 = ptrtoint i8* %23 to i64
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i8* @htons(i64 %29)
  %31 = ptrtoint i8* %30 to i64
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i8* @htons(i64 %36)
  %38 = ptrtoint i8* %37 to i64
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = call i8* @htons(i64 %43)
  %45 = ptrtoint i8* %44 to i64
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i8* @htonl(i32 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @htonl(i32 %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = call i8* @htons(i64 %64)
  %66 = ptrtoint i8* %65 to i64
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 6
  store i64 %66, i64* %68, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @htonl(i32 %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @htonl(i32 %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 8
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 9
  %85 = load i64, i64* %84, align 8
  %86 = call i8* @htons(i64 %85)
  %87 = ptrtoint i8* %86 to i64
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 9
  store i64 %87, i64* %89, align 8
  store i64 0, i64* %6, align 8
  br label %90

90:                                               ; preds = %110, %2
  %91 = load i64, i64* %6, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ult i64 %91, %94
  br i1 %95, label %96, label %113

96:                                               ; preds = %90
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 10
  %99 = load i64*, i64** %98, align 8
  %100 = load i64, i64* %6, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = call i8* @htons(i64 %102)
  %104 = ptrtoint i8* %103 to i64
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 10
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* %6, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  store i64 %104, i64* %109, align 8
  br label %110

110:                                              ; preds = %96
  %111 = load i64, i64* %6, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %6, align 8
  br label %90

113:                                              ; preds = %90
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 11
  %116 = load i32, i32* %115, align 8
  %117 = call i8* @htonl(i32 %116)
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 11
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %122 = bitcast %struct.TYPE_5__* %121 to i8*
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 11
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %122, i64 %126
  %128 = bitcast i8* %127 to i64*
  store i64* %128, i64** %7, align 8
  store i64 0, i64* %8, align 8
  br label %129

129:                                              ; preds = %145, %113
  %130 = load i64, i64* %8, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = icmp ult i64 %130, %133
  br i1 %134, label %135, label %148

135:                                              ; preds = %129
  %136 = load i64*, i64** %7, align 8
  %137 = load i64, i64* %8, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = call i8* @htons(i64 %139)
  %141 = ptrtoint i8* %140 to i64
  %142 = load i64*, i64** %7, align 8
  %143 = load i64, i64* %8, align 8
  %144 = getelementptr inbounds i64, i64* %142, i64 %143
  store i64 %141, i64* %144, align 8
  br label %145

145:                                              ; preds = %135
  %146 = load i64, i64* %8, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %8, align 8
  br label %129

148:                                              ; preds = %129
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  ret %struct.TYPE_6__* %149
}

declare dso_local i8* @htons(i64) #1

declare dso_local i8* @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
