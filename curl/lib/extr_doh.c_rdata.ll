; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_doh.c_rdata.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_doh.c_rdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dohentry = type { i32 }

@DOH_DNS_RDATA_LEN = common dso_local global i32 0, align 4
@DOH_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i16, i16, i32, %struct.dohentry*)* @rdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdata(i8* %0, i64 %1, i16 zeroext %2, i16 zeroext %3, i32 %4, %struct.dohentry* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca %struct.dohentry*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i16 %2, i16* %10, align 2
  store i16 %3, i16* %11, align 2
  store i32 %4, i32* %12, align 4
  store %struct.dohentry* %5, %struct.dohentry** %13, align 8
  %15 = load i16, i16* %11, align 2
  %16 = zext i16 %15 to i32
  switch i32 %16, label %60 [
    i32 130, label %17
    i32 129, label %33
    i32 128, label %49
  ]

17:                                               ; preds = %6
  %18 = load i16, i16* %10, align 2
  %19 = zext i16 %18 to i32
  %20 = icmp ne i32 %19, 4
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @DOH_DNS_RDATA_LEN, align 4
  store i32 %22, i32* %7, align 4
  br label %63

23:                                               ; preds = %17
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.dohentry*, %struct.dohentry** %13, align 8
  %27 = call i32 @store_a(i8* %24, i32 %25, %struct.dohentry* %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %7, align 4
  br label %63

32:                                               ; preds = %23
  br label %61

33:                                               ; preds = %6
  %34 = load i16, i16* %10, align 2
  %35 = zext i16 %34 to i32
  %36 = icmp ne i32 %35, 16
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @DOH_DNS_RDATA_LEN, align 4
  store i32 %38, i32* %7, align 4
  br label %63

39:                                               ; preds = %33
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.dohentry*, %struct.dohentry** %13, align 8
  %43 = call i32 @store_aaaa(i8* %40, i32 %41, %struct.dohentry* %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %7, align 4
  br label %63

48:                                               ; preds = %39
  br label %61

49:                                               ; preds = %6
  %50 = load i8*, i8** %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.dohentry*, %struct.dohentry** %13, align 8
  %54 = call i32 @store_cname(i8* %50, i64 %51, i32 %52, %struct.dohentry* %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %7, align 4
  br label %63

59:                                               ; preds = %49
  br label %61

60:                                               ; preds = %6
  br label %61

61:                                               ; preds = %60, %59, %48, %32
  %62 = load i32, i32* @DOH_OK, align 4
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %61, %57, %46, %37, %30, %21
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i32 @store_a(i8*, i32, %struct.dohentry*) #1

declare dso_local i32 @store_aaaa(i8*, i32, %struct.dohentry*) #1

declare dso_local i32 @store_cname(i8*, i64, i32, %struct.dohentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
