; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_hash.c_hash_element_dtor.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_hash.c_hash_element_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_hash = type { i32 (i32*)* }
%struct.curl_hash_element = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @hash_element_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_element_dtor(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.curl_hash*, align 8
  %6 = alloca %struct.curl_hash_element*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.curl_hash*
  store %struct.curl_hash* %8, %struct.curl_hash** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.curl_hash_element*
  store %struct.curl_hash_element* %10, %struct.curl_hash_element** %6, align 8
  %11 = load %struct.curl_hash_element*, %struct.curl_hash_element** %6, align 8
  %12 = getelementptr inbounds %struct.curl_hash_element, %struct.curl_hash_element* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.curl_hash*, %struct.curl_hash** %5, align 8
  %17 = getelementptr inbounds %struct.curl_hash, %struct.curl_hash* %16, i32 0, i32 0
  %18 = load i32 (i32*)*, i32 (i32*)** %17, align 8
  %19 = load %struct.curl_hash_element*, %struct.curl_hash_element** %6, align 8
  %20 = getelementptr inbounds %struct.curl_hash_element, %struct.curl_hash_element* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 %18(i32* %21)
  %23 = load %struct.curl_hash_element*, %struct.curl_hash_element** %6, align 8
  %24 = getelementptr inbounds %struct.curl_hash_element, %struct.curl_hash_element* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %15, %2
  %26 = load %struct.curl_hash_element*, %struct.curl_hash_element** %6, align 8
  %27 = getelementptr inbounds %struct.curl_hash_element, %struct.curl_hash_element* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.curl_hash_element*, %struct.curl_hash_element** %6, align 8
  %29 = call i32 @free(%struct.curl_hash_element* %28)
  ret void
}

declare dso_local i32 @free(%struct.curl_hash_element*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
