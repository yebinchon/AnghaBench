; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_splay.c_Curl_splaygetbest.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_splay.c_Curl_splaygetbest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curltime = type { i32, i32 }
%struct.Curl_tree = type { %struct.Curl_tree*, %struct.TYPE_2__*, i32, i32, %struct.Curl_tree* }
%struct.TYPE_2__ = type { %struct.Curl_tree* }

@Curl_splaygetbest.tv_zero = internal global %struct.curltime zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Curl_tree* @Curl_splaygetbest(i64 %0, %struct.Curl_tree* %1, %struct.Curl_tree** %2) #0 {
  %4 = alloca %struct.Curl_tree*, align 8
  %5 = alloca %struct.curltime, align 4
  %6 = alloca %struct.Curl_tree*, align 8
  %7 = alloca %struct.Curl_tree**, align 8
  %8 = alloca %struct.Curl_tree*, align 8
  %9 = bitcast %struct.curltime* %5 to i64*
  store i64 %0, i64* %9, align 4
  store %struct.Curl_tree* %1, %struct.Curl_tree** %6, align 8
  store %struct.Curl_tree** %2, %struct.Curl_tree*** %7, align 8
  %10 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %11 = icmp ne %struct.Curl_tree* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load %struct.Curl_tree**, %struct.Curl_tree*** %7, align 8
  store %struct.Curl_tree* null, %struct.Curl_tree** %13, align 8
  store %struct.Curl_tree* null, %struct.Curl_tree** %4, align 8
  br label %71

14:                                               ; preds = %3
  %15 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %16 = load i64, i64* bitcast (%struct.curltime* @Curl_splaygetbest.tv_zero to i64*), align 4
  %17 = call %struct.Curl_tree* @Curl_splay(i64 %16, %struct.Curl_tree* %15)
  store %struct.Curl_tree* %17, %struct.Curl_tree** %6, align 8
  %18 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %19 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = bitcast %struct.curltime* %5 to i64*
  %22 = load i64, i64* %21, align 4
  %23 = call i64 @compare(i64 %22, i32 %20)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = load %struct.Curl_tree**, %struct.Curl_tree*** %7, align 8
  store %struct.Curl_tree* null, %struct.Curl_tree** %26, align 8
  %27 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  store %struct.Curl_tree* %27, %struct.Curl_tree** %4, align 8
  br label %71

28:                                               ; preds = %14
  %29 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %30 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %29, i32 0, i32 4
  %31 = load %struct.Curl_tree*, %struct.Curl_tree** %30, align 8
  store %struct.Curl_tree* %31, %struct.Curl_tree** %8, align 8
  %32 = load %struct.Curl_tree*, %struct.Curl_tree** %8, align 8
  %33 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %34 = icmp ne %struct.Curl_tree* %32, %33
  br i1 %34, label %35, label %64

35:                                               ; preds = %28
  %36 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %37 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.Curl_tree*, %struct.Curl_tree** %8, align 8
  %40 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %42 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %41, i32 0, i32 0
  %43 = load %struct.Curl_tree*, %struct.Curl_tree** %42, align 8
  %44 = load %struct.Curl_tree*, %struct.Curl_tree** %8, align 8
  %45 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %44, i32 0, i32 0
  store %struct.Curl_tree* %43, %struct.Curl_tree** %45, align 8
  %46 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %47 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.Curl_tree*, %struct.Curl_tree** %8, align 8
  %50 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %52 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load %struct.Curl_tree*, %struct.Curl_tree** %8, align 8
  %55 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %54, i32 0, i32 1
  store %struct.TYPE_2__* %53, %struct.TYPE_2__** %55, align 8
  %56 = load %struct.Curl_tree*, %struct.Curl_tree** %8, align 8
  %57 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %58 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store %struct.Curl_tree* %56, %struct.Curl_tree** %60, align 8
  %61 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %62 = load %struct.Curl_tree**, %struct.Curl_tree*** %7, align 8
  store %struct.Curl_tree* %61, %struct.Curl_tree** %62, align 8
  %63 = load %struct.Curl_tree*, %struct.Curl_tree** %8, align 8
  store %struct.Curl_tree* %63, %struct.Curl_tree** %4, align 8
  br label %71

64:                                               ; preds = %28
  %65 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %66 = getelementptr inbounds %struct.Curl_tree, %struct.Curl_tree* %65, i32 0, i32 0
  %67 = load %struct.Curl_tree*, %struct.Curl_tree** %66, align 8
  store %struct.Curl_tree* %67, %struct.Curl_tree** %8, align 8
  %68 = load %struct.Curl_tree*, %struct.Curl_tree** %6, align 8
  %69 = load %struct.Curl_tree**, %struct.Curl_tree*** %7, align 8
  store %struct.Curl_tree* %68, %struct.Curl_tree** %69, align 8
  %70 = load %struct.Curl_tree*, %struct.Curl_tree** %8, align 8
  store %struct.Curl_tree* %70, %struct.Curl_tree** %4, align 8
  br label %71

71:                                               ; preds = %64, %35, %25, %12
  %72 = load %struct.Curl_tree*, %struct.Curl_tree** %4, align 8
  ret %struct.Curl_tree* %72
}

declare dso_local %struct.Curl_tree* @Curl_splay(i64, %struct.Curl_tree*) #1

declare dso_local i64 @compare(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
