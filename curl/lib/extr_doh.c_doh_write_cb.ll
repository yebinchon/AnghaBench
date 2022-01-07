; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_doh.c_doh_write_cb.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_doh.c_doh_write_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dohresponse = type { i64, i32* }

@DOH_MAX_RESPONSE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i8*)* @doh_write_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @doh_write_cb(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dohresponse*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = mul i64 %12, %13
  store i64 %14, i64* %10, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.dohresponse*
  store %struct.dohresponse* %16, %struct.dohresponse** %11, align 8
  %17 = load %struct.dohresponse*, %struct.dohresponse** %11, align 8
  %18 = getelementptr inbounds %struct.dohresponse, %struct.dohresponse* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %10, align 8
  %21 = add i64 %19, %20
  %22 = load i64, i64* @DOH_MAX_RESPONSE_SIZE, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %59

25:                                               ; preds = %4
  %26 = load %struct.dohresponse*, %struct.dohresponse** %11, align 8
  %27 = getelementptr inbounds %struct.dohresponse, %struct.dohresponse* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.dohresponse*, %struct.dohresponse** %11, align 8
  %30 = getelementptr inbounds %struct.dohresponse, %struct.dohresponse* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %10, align 8
  %33 = add i64 %31, %32
  %34 = call i32* @Curl_saferealloc(i32* %28, i64 %33)
  %35 = load %struct.dohresponse*, %struct.dohresponse** %11, align 8
  %36 = getelementptr inbounds %struct.dohresponse, %struct.dohresponse* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  %37 = load %struct.dohresponse*, %struct.dohresponse** %11, align 8
  %38 = getelementptr inbounds %struct.dohresponse, %struct.dohresponse* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %25
  store i64 0, i64* %5, align 8
  br label %59

42:                                               ; preds = %25
  %43 = load %struct.dohresponse*, %struct.dohresponse** %11, align 8
  %44 = getelementptr inbounds %struct.dohresponse, %struct.dohresponse* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.dohresponse*, %struct.dohresponse** %11, align 8
  %47 = getelementptr inbounds %struct.dohresponse, %struct.dohresponse* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @memcpy(i32* %49, i8* %50, i64 %51)
  %53 = load i64, i64* %10, align 8
  %54 = load %struct.dohresponse*, %struct.dohresponse** %11, align 8
  %55 = getelementptr inbounds %struct.dohresponse, %struct.dohresponse* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load i64, i64* %10, align 8
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %42, %41, %24
  %60 = load i64, i64* %5, align 8
  ret i64 %60
}

declare dso_local i32* @Curl_saferealloc(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
