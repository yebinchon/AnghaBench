; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_Curl_multi_handle.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_Curl_multi_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_multi = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@CURL_MULTI_HANDLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Curl_multi* @Curl_multi_handle(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.Curl_multi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.Curl_multi*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = call %struct.Curl_multi* @calloc(i32 1, i32 32)
  store %struct.Curl_multi* %7, %struct.Curl_multi** %6, align 8
  %8 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %9 = icmp ne %struct.Curl_multi* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.Curl_multi* null, %struct.Curl_multi** %3, align 8
  br label %65

11:                                               ; preds = %2
  %12 = load i32, i32* @CURL_MULTI_HANDLE, align 4
  %13 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %14 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %13, i32 0, i32 7
  store i32 %12, i32* %14, align 4
  %15 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %16 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %15, i32 0, i32 4
  %17 = call i64 @Curl_mk_dnscache(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %47

20:                                               ; preds = %11
  %21 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %22 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %21, i32 0, i32 5
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @sh_init(i32* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %47

27:                                               ; preds = %20
  %28 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %29 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %28, i32 0, i32 3
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @Curl_conncache_init(i32* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %47

34:                                               ; preds = %27
  %35 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %36 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %35, i32 0, i32 2
  %37 = call i32 @Curl_llist_init(i32* %36, i32* null)
  %38 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %39 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %38, i32 0, i32 1
  %40 = call i32 @Curl_llist_init(i32* %39, i32* null)
  %41 = load i32, i32* @TRUE, align 4
  %42 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %43 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 4
  %44 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %45 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %44, i32 0, i32 0
  store i32 -1, i32* %45, align 4
  %46 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  store %struct.Curl_multi* %46, %struct.Curl_multi** %3, align 8
  br label %65

47:                                               ; preds = %33, %26, %19
  %48 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %49 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %48, i32 0, i32 5
  %50 = call i32 @Curl_hash_destroy(i32* %49)
  %51 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %52 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %51, i32 0, i32 4
  %53 = call i32 @Curl_hash_destroy(i32* %52)
  %54 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %55 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %54, i32 0, i32 3
  %56 = call i32 @Curl_conncache_destroy(i32* %55)
  %57 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %58 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %57, i32 0, i32 2
  %59 = call i32 @Curl_llist_destroy(i32* %58, i32* null)
  %60 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %61 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %60, i32 0, i32 1
  %62 = call i32 @Curl_llist_destroy(i32* %61, i32* null)
  %63 = load %struct.Curl_multi*, %struct.Curl_multi** %6, align 8
  %64 = call i32 @free(%struct.Curl_multi* %63)
  store %struct.Curl_multi* null, %struct.Curl_multi** %3, align 8
  br label %65

65:                                               ; preds = %47, %34, %10
  %66 = load %struct.Curl_multi*, %struct.Curl_multi** %3, align 8
  ret %struct.Curl_multi* %66
}

declare dso_local %struct.Curl_multi* @calloc(i32, i32) #1

declare dso_local i64 @Curl_mk_dnscache(i32*) #1

declare dso_local i64 @sh_init(i32*, i32) #1

declare dso_local i64 @Curl_conncache_init(i32*, i32) #1

declare dso_local i32 @Curl_llist_init(i32*, i32*) #1

declare dso_local i32 @Curl_hash_destroy(i32*) #1

declare dso_local i32 @Curl_conncache_destroy(i32*) #1

declare dso_local i32 @Curl_llist_destroy(i32*, i32*) #1

declare dso_local i32 @free(%struct.Curl_multi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
