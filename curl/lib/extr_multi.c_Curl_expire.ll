; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_Curl_expire.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_Curl_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_4__, %struct.Curl_multi* }
%struct.TYPE_4__ = type { %struct.TYPE_5__, %struct.curltime }
%struct.TYPE_5__ = type { %struct.Curl_easy* }
%struct.curltime = type { i32, i64 }
%struct.Curl_multi = type { i32 }

@EXPIRE_LAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Internal error removing splay node = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Curl_expire(%struct.Curl_easy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Curl_multi*, align 8
  %8 = alloca %struct.curltime*, align 8
  %9 = alloca %struct.curltime, align 8
  %10 = alloca %struct.curltime, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.Curl_easy* %0, %struct.Curl_easy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %14 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %13, i32 0, i32 1
  %15 = load %struct.Curl_multi*, %struct.Curl_multi** %14, align 8
  store %struct.Curl_multi* %15, %struct.Curl_multi** %7, align 8
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %17 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store %struct.curltime* %18, %struct.curltime** %8, align 8
  %19 = load %struct.Curl_multi*, %struct.Curl_multi** %7, align 8
  %20 = icmp ne %struct.Curl_multi* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %131

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @EXPIRE_LAST, align 4
  %25 = icmp slt i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @DEBUGASSERT(i32 %26)
  %28 = call { i32, i64 } (...) @Curl_now()
  %29 = bitcast %struct.curltime* %10 to { i32, i64 }*
  %30 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %29, i32 0, i32 0
  %31 = extractvalue { i32, i64 } %28, 0
  store i32 %31, i32* %30, align 8
  %32 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %29, i32 0, i32 1
  %33 = extractvalue { i32, i64 } %28, 1
  store i64 %33, i64* %32, align 8
  %34 = bitcast %struct.curltime* %9 to i8*
  %35 = bitcast %struct.curltime* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 16, i1 false)
  %36 = load i32, i32* %5, align 4
  %37 = sdiv i32 %36, 1000
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.curltime, %struct.curltime* %9, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, %38
  store i64 %41, i64* %39, align 8
  %42 = load i32, i32* %5, align 4
  %43 = srem i32 %42, 1000
  %44 = mul i32 %43, 1000
  %45 = getelementptr inbounds %struct.curltime, %struct.curltime* %9, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add i32 %46, %44
  store i32 %47, i32* %45, align 8
  %48 = getelementptr inbounds %struct.curltime, %struct.curltime* %9, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp uge i32 %49, 1000000
  br i1 %50, label %51, label %58

51:                                               ; preds = %22
  %52 = getelementptr inbounds %struct.curltime, %struct.curltime* %9, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = getelementptr inbounds %struct.curltime, %struct.curltime* %9, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub i32 %56, 1000000
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %51, %22
  %59 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @multi_deltimeout(%struct.Curl_easy* %59, i32 %60)
  %62 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @multi_addtimeout(%struct.Curl_easy* %62, %struct.curltime* %9, i32 %63)
  %65 = load %struct.curltime*, %struct.curltime** %8, align 8
  %66 = getelementptr inbounds %struct.curltime, %struct.curltime* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %58
  %70 = load %struct.curltime*, %struct.curltime** %8, align 8
  %71 = getelementptr inbounds %struct.curltime, %struct.curltime* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %107

74:                                               ; preds = %69, %58
  %75 = load %struct.curltime*, %struct.curltime** %8, align 8
  %76 = bitcast %struct.curltime* %9 to { i32, i64 }*
  %77 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %76, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = bitcast %struct.curltime* %75 to { i32, i64 }*
  %82 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %81, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @Curl_timediff(i32 %78, i64 %80, i32 %83, i64 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %74
  br label %131

90:                                               ; preds = %74
  %91 = load %struct.Curl_multi*, %struct.Curl_multi** %7, align 8
  %92 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %95 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load %struct.Curl_multi*, %struct.Curl_multi** %7, align 8
  %98 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %97, i32 0, i32 0
  %99 = call i32 @Curl_splayremovebyaddr(i32 %93, %struct.TYPE_5__* %96, i32* %98)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %90
  %103 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @infof(%struct.Curl_easy* %103, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %102, %90
  br label %107

107:                                              ; preds = %106, %69
  %108 = load %struct.curltime*, %struct.curltime** %8, align 8
  %109 = bitcast %struct.curltime* %108 to i8*
  %110 = bitcast %struct.curltime* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 8 %110, i64 16, i1 false)
  %111 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %112 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %113 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  store %struct.Curl_easy* %111, %struct.Curl_easy** %115, align 8
  %116 = load %struct.curltime*, %struct.curltime** %8, align 8
  %117 = load %struct.Curl_multi*, %struct.Curl_multi** %7, align 8
  %118 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %121 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = bitcast %struct.curltime* %116 to { i32, i64 }*
  %124 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %123, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @Curl_splayinsert(i32 %125, i64 %127, i32 %119, %struct.TYPE_5__* %122)
  %129 = load %struct.Curl_multi*, %struct.Curl_multi** %7, align 8
  %130 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %107, %89, %21
  ret void
}

declare dso_local i32 @DEBUGASSERT(i32) #1

declare dso_local { i32, i64 } @Curl_now(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @multi_deltimeout(%struct.Curl_easy*, i32) #1

declare dso_local i32 @multi_addtimeout(%struct.Curl_easy*, %struct.curltime*, i32) #1

declare dso_local i32 @Curl_timediff(i32, i64, i32, i64) #1

declare dso_local i32 @Curl_splayremovebyaddr(i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i32) #1

declare dso_local i32 @Curl_splayinsert(i32, i64, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
