; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_md5-internal.c_md5_vector.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_md5-internal.c_md5_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @md5_vector(i64 %0, i32** %1, i64* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32** %1, i32*** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = call i32 @MD5Init(i32* %9)
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %26, %4
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load i32**, i32*** %6, align 8
  %18 = load i64, i64* %10, align 8
  %19 = getelementptr inbounds i32*, i32** %17, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %10, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @MD5Update(i32* %9, i32* %20, i64 %24)
  br label %26

26:                                               ; preds = %16
  %27 = load i64, i64* %10, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %10, align 8
  br label %12

29:                                               ; preds = %12
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @MD5Final(i32* %30, i32* %9)
  ret i32 0
}

declare dso_local i32 @MD5Init(i32*) #1

declare dso_local i32 @MD5Update(i32*, i32*, i64) #1

declare dso_local i32 @MD5Final(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
