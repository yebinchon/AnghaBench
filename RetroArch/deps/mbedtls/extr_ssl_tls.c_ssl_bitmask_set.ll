; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_ssl_bitmask_set.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_ssl_bitmask_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64)* @ssl_bitmask_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_bitmask_set(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = urem i64 %11, 8
  %13 = sub i64 8, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 8
  br i1 %16, label %17, label %73

17:                                               ; preds = %3
  %18 = load i64, i64* %5, align 8
  %19 = udiv i64 %18, 8
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = icmp ule i64 %20, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %42, %24
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = load i64, i64* %6, align 8
  %32 = sub i64 %30, %31
  %33 = trunc i64 %32 to i32
  %34 = shl i32 1, %33
  %35 = load i8*, i8** %4, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %39, %34
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %37, align 1
  br label %42

42:                                               ; preds = %28
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %6, align 8
  br label %25

45:                                               ; preds = %25
  br label %114

46:                                               ; preds = %17
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = load i64, i64* %5, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = load i64, i64* %6, align 8
  %54 = sub i64 %53, %52
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %69, %46
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = sub i32 %59, 1
  %61 = shl i32 1, %60
  %62 = load i8*, i8** %4, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = or i32 %66, %61
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %64, align 1
  br label %69

69:                                               ; preds = %58
  %70 = load i32, i32* %7, align 4
  %71 = add i32 %70, -1
  store i32 %71, i32* %7, align 4
  br label %55

72:                                               ; preds = %55
  br label %73

73:                                               ; preds = %72, %3
  %74 = load i64, i64* %6, align 8
  %75 = urem i64 %74, 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %106

79:                                               ; preds = %73
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* %6, align 8
  %82 = add i64 %80, %81
  %83 = udiv i64 %82, 8
  store i64 %83, i64* %10, align 8
  %84 = load i32, i32* %8, align 4
  %85 = zext i32 %84 to i64
  %86 = load i64, i64* %6, align 8
  %87 = sub i64 %86, %85
  store i64 %87, i64* %6, align 8
  br label %88

88:                                               ; preds = %102, %79
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %88
  %92 = load i32, i32* %8, align 4
  %93 = sub i32 8, %92
  %94 = shl i32 1, %93
  %95 = load i8*, i8** %4, align 8
  %96 = load i64, i64* %10, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = or i32 %99, %94
  %101 = trunc i32 %100 to i8
  store i8 %101, i8* %97, align 1
  br label %102

102:                                              ; preds = %91
  %103 = load i32, i32* %8, align 4
  %104 = add i32 %103, -1
  store i32 %104, i32* %8, align 4
  br label %88

105:                                              ; preds = %88
  br label %106

106:                                              ; preds = %105, %73
  %107 = load i8*, i8** %4, align 8
  %108 = load i64, i64* %5, align 8
  %109 = udiv i64 %108, 8
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i64, i64* %6, align 8
  %112 = udiv i64 %111, 8
  %113 = call i32 @memset(i8* %110, i32 255, i64 %112)
  br label %114

114:                                              ; preds = %106, %45
  ret void
}

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
