; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_hostip.c_Curl_cache_addr.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_hostip.c_Curl_cache_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_dns_entry = type { i32, i32, i32* }
%struct.Curl_easy = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@MAX_HOSTCACHE_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Curl_dns_entry* @Curl_cache_addr(%struct.Curl_easy* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.Curl_dns_entry*, align 8
  %6 = alloca %struct.Curl_easy*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.Curl_dns_entry*, align 8
  %14 = alloca %struct.Curl_dns_entry*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.Curl_easy* %0, %struct.Curl_easy** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @MAX_HOSTCACHE_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %22 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %4
  %27 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %28 = call i64 @Curl_shuffle_addr(%struct.Curl_easy* %27, i32** %7)
  store i64 %28, i64* %15, align 8
  %29 = load i64, i64* %15, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store %struct.Curl_dns_entry* null, %struct.Curl_dns_entry** %5, align 8
  store i32 1, i32* %16, align 4
  br label %81

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %4
  %34 = call %struct.Curl_dns_entry* @calloc(i32 1, i32 16)
  store %struct.Curl_dns_entry* %34, %struct.Curl_dns_entry** %13, align 8
  %35 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %13, align 8
  %36 = icmp ne %struct.Curl_dns_entry* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store %struct.Curl_dns_entry* null, %struct.Curl_dns_entry** %5, align 8
  store i32 1, i32* %16, align 4
  br label %81

38:                                               ; preds = %33
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = trunc i64 %18 to i32
  %42 = call i32 @create_hostcache_id(i8* %39, i32 %40, i8* %20, i32 %41)
  %43 = call i64 @strlen(i8* %20)
  store i64 %43, i64* %12, align 8
  %44 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %13, align 8
  %45 = getelementptr inbounds %struct.Curl_dns_entry, %struct.Curl_dns_entry* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %13, align 8
  %48 = getelementptr inbounds %struct.Curl_dns_entry, %struct.Curl_dns_entry* %47, i32 0, i32 2
  store i32* %46, i32** %48, align 8
  %49 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %13, align 8
  %50 = getelementptr inbounds %struct.Curl_dns_entry, %struct.Curl_dns_entry* %49, i32 0, i32 1
  %51 = call i32 @time(i32* %50)
  %52 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %13, align 8
  %53 = getelementptr inbounds %struct.Curl_dns_entry, %struct.Curl_dns_entry* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %38
  %57 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %13, align 8
  %58 = getelementptr inbounds %struct.Curl_dns_entry, %struct.Curl_dns_entry* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %38
  %60 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %61 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %12, align 8
  %65 = add i64 %64, 1
  %66 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %13, align 8
  %67 = bitcast %struct.Curl_dns_entry* %66 to i8*
  %68 = call %struct.Curl_dns_entry* @Curl_hash_add(i32 %63, i8* %20, i64 %65, i8* %67)
  store %struct.Curl_dns_entry* %68, %struct.Curl_dns_entry** %14, align 8
  %69 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %14, align 8
  %70 = icmp ne %struct.Curl_dns_entry* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %59
  %72 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %13, align 8
  %73 = call i32 @free(%struct.Curl_dns_entry* %72)
  store %struct.Curl_dns_entry* null, %struct.Curl_dns_entry** %5, align 8
  store i32 1, i32* %16, align 4
  br label %81

74:                                               ; preds = %59
  %75 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %14, align 8
  store %struct.Curl_dns_entry* %75, %struct.Curl_dns_entry** %13, align 8
  %76 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %13, align 8
  %77 = getelementptr inbounds %struct.Curl_dns_entry, %struct.Curl_dns_entry* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  %80 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %13, align 8
  store %struct.Curl_dns_entry* %80, %struct.Curl_dns_entry** %5, align 8
  store i32 1, i32* %16, align 4
  br label %81

81:                                               ; preds = %74, %71, %37, %31
  %82 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %5, align 8
  ret %struct.Curl_dns_entry* %83
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @Curl_shuffle_addr(%struct.Curl_easy*, i32**) #2

declare dso_local %struct.Curl_dns_entry* @calloc(i32, i32) #2

declare dso_local i32 @create_hostcache_id(i8*, i32, i8*, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @time(i32*) #2

declare dso_local %struct.Curl_dns_entry* @Curl_hash_add(i32, i8*, i64, i8*) #2

declare dso_local i32 @free(%struct.Curl_dns_entry*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
