; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_sh_addentry.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_sh_addentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_sh_entry = type { i32 }
%struct.curl_hash = type { i32 }

@TRHASH_SIZE = common dso_local global i32 0, align 4
@trhash = common dso_local global i32 0, align 4
@trhash_compare = common dso_local global i32 0, align 4
@trhash_dtor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Curl_sh_entry* (%struct.curl_hash*, i32)* @sh_addentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Curl_sh_entry* @sh_addentry(%struct.curl_hash* %0, i32 %1) #0 {
  %3 = alloca %struct.Curl_sh_entry*, align 8
  %4 = alloca %struct.curl_hash*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Curl_sh_entry*, align 8
  %7 = alloca %struct.Curl_sh_entry*, align 8
  store %struct.curl_hash* %0, %struct.curl_hash** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.curl_hash*, %struct.curl_hash** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.Curl_sh_entry* @sh_getentry(%struct.curl_hash* %8, i32 %9)
  store %struct.Curl_sh_entry* %10, %struct.Curl_sh_entry** %6, align 8
  %11 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %6, align 8
  %12 = icmp ne %struct.Curl_sh_entry* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %6, align 8
  store %struct.Curl_sh_entry* %14, %struct.Curl_sh_entry** %3, align 8
  br label %43

15:                                               ; preds = %2
  %16 = call %struct.Curl_sh_entry* @calloc(i32 1, i32 4)
  store %struct.Curl_sh_entry* %16, %struct.Curl_sh_entry** %7, align 8
  %17 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %7, align 8
  %18 = icmp ne %struct.Curl_sh_entry* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store %struct.Curl_sh_entry* null, %struct.Curl_sh_entry** %3, align 8
  br label %43

20:                                               ; preds = %15
  %21 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %7, align 8
  %22 = getelementptr inbounds %struct.Curl_sh_entry, %struct.Curl_sh_entry* %21, i32 0, i32 0
  %23 = load i32, i32* @TRHASH_SIZE, align 4
  %24 = load i32, i32* @trhash, align 4
  %25 = load i32, i32* @trhash_compare, align 4
  %26 = load i32, i32* @trhash_dtor, align 4
  %27 = call i64 @Curl_hash_init(i32* %22, i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %7, align 8
  %31 = call i32 @free(%struct.Curl_sh_entry* %30)
  store %struct.Curl_sh_entry* null, %struct.Curl_sh_entry** %3, align 8
  br label %43

32:                                               ; preds = %20
  %33 = load %struct.curl_hash*, %struct.curl_hash** %4, align 8
  %34 = bitcast i32* %5 to i8*
  %35 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %7, align 8
  %36 = call i32 @Curl_hash_add(%struct.curl_hash* %33, i8* %34, i32 4, %struct.Curl_sh_entry* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %7, align 8
  %40 = call i32 @free(%struct.Curl_sh_entry* %39)
  store %struct.Curl_sh_entry* null, %struct.Curl_sh_entry** %3, align 8
  br label %43

41:                                               ; preds = %32
  %42 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %7, align 8
  store %struct.Curl_sh_entry* %42, %struct.Curl_sh_entry** %3, align 8
  br label %43

43:                                               ; preds = %41, %38, %29, %19, %13
  %44 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %3, align 8
  ret %struct.Curl_sh_entry* %44
}

declare dso_local %struct.Curl_sh_entry* @sh_getentry(%struct.curl_hash*, i32) #1

declare dso_local %struct.Curl_sh_entry* @calloc(i32, i32) #1

declare dso_local i64 @Curl_hash_init(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @free(%struct.Curl_sh_entry*) #1

declare dso_local i32 @Curl_hash_add(%struct.curl_hash*, i8*, i32, %struct.Curl_sh_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
