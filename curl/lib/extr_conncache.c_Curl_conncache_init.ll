; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_conncache.c_Curl_conncache_init.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_conncache.c_Curl_conncache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conncache = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.conncache* }

@Curl_hash_str = common dso_local global i32 0, align 4
@Curl_str_key_compare = common dso_local global i32 0, align 4
@free_bundle_hash_entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_conncache_init(%struct.conncache* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.conncache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.conncache* %0, %struct.conncache** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call %struct.TYPE_5__* (...) @curl_easy_init()
  %8 = load %struct.conncache*, %struct.conncache** %4, align 8
  %9 = getelementptr inbounds %struct.conncache, %struct.conncache* %8, i32 0, i32 0
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %9, align 8
  %10 = load %struct.conncache*, %struct.conncache** %4, align 8
  %11 = getelementptr inbounds %struct.conncache, %struct.conncache* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.conncache*, %struct.conncache** %4, align 8
  %17 = getelementptr inbounds %struct.conncache, %struct.conncache* %16, i32 0, i32 1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @Curl_hash_str, align 4
  %20 = load i32, i32* @Curl_str_key_compare, align 4
  %21 = load i32, i32* @free_bundle_hash_entry, align 4
  %22 = call i32 @Curl_hash_init(i32* %17, i32 %18, i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load %struct.conncache*, %struct.conncache** %4, align 8
  %27 = getelementptr inbounds %struct.conncache, %struct.conncache* %26, i32 0, i32 0
  %28 = call i32 @Curl_close(%struct.TYPE_5__** %27)
  br label %36

29:                                               ; preds = %15
  %30 = load %struct.conncache*, %struct.conncache** %4, align 8
  %31 = load %struct.conncache*, %struct.conncache** %4, align 8
  %32 = getelementptr inbounds %struct.conncache, %struct.conncache* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store %struct.conncache* %30, %struct.conncache** %35, align 8
  br label %36

36:                                               ; preds = %29, %25
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %14
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.TYPE_5__* @curl_easy_init(...) #1

declare dso_local i32 @Curl_hash_init(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @Curl_close(%struct.TYPE_5__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
