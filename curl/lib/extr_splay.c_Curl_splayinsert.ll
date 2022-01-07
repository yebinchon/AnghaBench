; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_splay.c_Curl_splayinsert.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_splay.c_Curl_splayinsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curltime = type { i32, i32 }
%struct.Curl_tree = type { %struct.Curl_tree*, %struct.Curl_tree*, %struct.curltime, %struct.Curl_tree*, %struct.Curl_tree* }

@Curl_splayinsert.KEY_NOTUSED = internal constant %struct.curltime { i32 -1, i32 -1 }, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Curl_tree* @Curl_splayinsert(i64 %0, %struct.Curl_tree* %1, %struct.Curl_tree* %2) #0 {
  %4 = alloca %struct.Curl_tree*, align 8
  %5 = alloca %struct.curltime, align 4
  %6 = alloca %struct.Curl_tree*, align 8
  %7 = alloca %struct.Curl_tree*, align 8
  %8 = bitcast %struct.curltime* %5 to i64*
  store i64 %0, i64* %8, align 4
  store %struct.Curl_tree* %1, %struct.Curl_tree** %6, align 8
  store %struct.Curl_tree* %2, %struct.Curl_tree** %7, align 8
  %9 = load %struct.Curl_tree*, %struct.Curl_tree** %7, align 8
  %10 = icmp eq %struct.Curl_tree* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  store %struct.Curl_tree* %12, %struct.Curl_tree** %4, align 8
  br label %103

13:                                               ; preds = %3
  %14 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %15 = icmp ne %struct.Curl_tree* %14, null
  br i1 %15, label %16, label %51

16:                                               ; preds = %13
  %17 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %18 = bitcast %struct.curltime* %5 to i64*
  %19 = load i64, i64* %18, align 4
  %20 = call %struct.Curl_tree* @Curl_splay(i64 %19, %struct.Curl_tree* %17)
  store %struct.Curl_tree* %20, %struct.Curl_tree** %6, align 8
  %21 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %22 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %21, i32 0, i32 2
  %23 = bitcast %struct.curltime* %5 to i64*
  %24 = load i64, i64* %23, align 4
  %25 = bitcast %struct.curltime* %22 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @compare(i64 %24, i64 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %16
  %30 = load %struct.Curl_tree*, %struct.Curl_tree** %7, align 8
  %31 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %30, i32 0, i32 2
  %32 = bitcast %struct.curltime* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 4 bitcast (%struct.curltime* @Curl_splayinsert.KEY_NOTUSED to i8*), i64 8, i1 false)
  %33 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %34 = load %struct.Curl_tree*, %struct.Curl_tree** %7, align 8
  %35 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %34, i32 0, i32 1
  store %struct.Curl_tree* %33, %struct.Curl_tree** %35, align 8
  %36 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %37 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %36, i32 0, i32 0
  %38 = load %struct.Curl_tree*, %struct.Curl_tree** %37, align 8
  %39 = load %struct.Curl_tree*, %struct.Curl_tree** %7, align 8
  %40 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %39, i32 0, i32 0
  store %struct.Curl_tree* %38, %struct.Curl_tree** %40, align 8
  %41 = load %struct.Curl_tree*, %struct.Curl_tree** %7, align 8
  %42 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %43 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %42, i32 0, i32 0
  %44 = load %struct.Curl_tree*, %struct.Curl_tree** %43, align 8
  %45 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %44, i32 0, i32 1
  store %struct.Curl_tree* %41, %struct.Curl_tree** %45, align 8
  %46 = load %struct.Curl_tree*, %struct.Curl_tree** %7, align 8
  %47 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %48 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %47, i32 0, i32 0
  store %struct.Curl_tree* %46, %struct.Curl_tree** %48, align 8
  %49 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  store %struct.Curl_tree* %49, %struct.Curl_tree** %4, align 8
  br label %103

50:                                               ; preds = %16
  br label %51

51:                                               ; preds = %50, %13
  %52 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %53 = icmp eq %struct.Curl_tree* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.Curl_tree*, %struct.Curl_tree** %7, align 8
  %56 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %55, i32 0, i32 3
  store %struct.Curl_tree* null, %struct.Curl_tree** %56, align 8
  %57 = load %struct.Curl_tree*, %struct.Curl_tree** %7, align 8
  %58 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %57, i32 0, i32 4
  store %struct.Curl_tree* null, %struct.Curl_tree** %58, align 8
  br label %91

59:                                               ; preds = %51
  %60 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %61 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %60, i32 0, i32 2
  %62 = bitcast %struct.curltime* %5 to i64*
  %63 = load i64, i64* %62, align 4
  %64 = bitcast %struct.curltime* %61 to i64*
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @compare(i64 %63, i64 %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %59
  %69 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %70 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %69, i32 0, i32 4
  %71 = load %struct.Curl_tree*, %struct.Curl_tree** %70, align 8
  %72 = load %struct.Curl_tree*, %struct.Curl_tree** %7, align 8
  %73 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %72, i32 0, i32 4
  store %struct.Curl_tree* %71, %struct.Curl_tree** %73, align 8
  %74 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %75 = load %struct.Curl_tree*, %struct.Curl_tree** %7, align 8
  %76 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %75, i32 0, i32 3
  store %struct.Curl_tree* %74, %struct.Curl_tree** %76, align 8
  %77 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %78 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %77, i32 0, i32 4
  store %struct.Curl_tree* null, %struct.Curl_tree** %78, align 8
  br label %90

79:                                               ; preds = %59
  %80 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %81 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %80, i32 0, i32 3
  %82 = load %struct.Curl_tree*, %struct.Curl_tree** %81, align 8
  %83 = load %struct.Curl_tree*, %struct.Curl_tree** %7, align 8
  %84 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %83, i32 0, i32 3
  store %struct.Curl_tree* %82, %struct.Curl_tree** %84, align 8
  %85 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %86 = load %struct.Curl_tree*, %struct.Curl_tree** %7, align 8
  %87 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %86, i32 0, i32 4
  store %struct.Curl_tree* %85, %struct.Curl_tree** %87, align 8
  %88 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %89 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %88, i32 0, i32 3
  store %struct.Curl_tree* null, %struct.Curl_tree** %89, align 8
  br label %90

90:                                               ; preds = %79, %68
  br label %91

91:                                               ; preds = %90, %54
  %92 = load %struct.Curl_tree*, %struct.Curl_tree** %7, align 8
  %93 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %92, i32 0, i32 2
  %94 = bitcast %struct.curltime* %93 to i8*
  %95 = bitcast %struct.curltime* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 4 %95, i64 8, i1 false)
  %96 = load %struct.Curl_tree*, %struct.Curl_tree** %7, align 8
  %97 = load %struct.Curl_tree*, %struct.Curl_tree** %7, align 8
  %98 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %97, i32 0, i32 1
  store %struct.Curl_tree* %96, %struct.Curl_tree** %98, align 8
  %99 = load %struct.Curl_tree*, %struct.Curl_tree** %7, align 8
  %100 = load %struct.Curl_tree*, %struct.Curl_tree** %7, align 8
  %101 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %100, i32 0, i32 0
  store %struct.Curl_tree* %99, %struct.Curl_tree** %101, align 8
  %102 = load %struct.Curl_tree*, %struct.Curl_tree** %7, align 8
  store %struct.Curl_tree* %102, %struct.Curl_tree** %4, align 8
  br label %103

103:                                              ; preds = %91, %29, %11
  %104 = load %struct.Curl_tree*, %struct.Curl_tree** %4, align 8
  ret %struct.Curl_tree* %104
}

declare dso_local %struct.Curl_tree* @Curl_splay(i64, %struct.Curl_tree*) #1

declare dso_local i64 @compare(i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
