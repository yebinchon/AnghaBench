; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_ecp_comb_fixed.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_ecp_comb_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8, i32*)* @ecp_comb_fixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecp_comb_fixed(i8* %0, i64 %1, i8 zeroext %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8 %2, i8* %7, align 1
  store i32* %3, i32** %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = add i64 %15, 1
  %17 = call i32 @memset(i8* %14, i32 0, i64 %16)
  store i64 0, i64* %9, align 8
  br label %18

18:                                               ; preds = %49, %4
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %52

22:                                               ; preds = %18
  store i64 0, i64* %10, align 8
  br label %23

23:                                               ; preds = %45, %22
  %24 = load i64, i64* %10, align 8
  %25 = load i8, i8* %7, align 1
  %26 = zext i8 %25 to i64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %23
  %29 = load i32*, i32** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %10, align 8
  %33 = mul i64 %31, %32
  %34 = add i64 %30, %33
  %35 = call i64 @mbedtls_mpi_get_bit(i32* %29, i64 %34)
  %36 = load i64, i64* %10, align 8
  %37 = shl i64 %35, %36
  %38 = load i8*, i8** %5, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i64
  %43 = or i64 %42, %37
  %44 = trunc i64 %43 to i8
  store i8 %44, i8* %40, align 1
  br label %45

45:                                               ; preds = %28
  %46 = load i64, i64* %10, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %10, align 8
  br label %23

48:                                               ; preds = %23
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %9, align 8
  br label %18

52:                                               ; preds = %18
  store i8 0, i8* %11, align 1
  store i64 1, i64* %9, align 8
  br label %53

53:                                               ; preds = %137, %52
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp ule i64 %54, %55
  br i1 %56, label %57, label %140

57:                                               ; preds = %53
  %58 = load i8*, i8** %5, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* %11, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %62, %64
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %12, align 1
  %67 = load i8*, i8** %5, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* %11, align 1
  %73 = zext i8 %72 to i32
  %74 = xor i32 %71, %73
  %75 = trunc i32 %74 to i8
  %76 = load i8*, i8** %5, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8 %75, i8* %78, align 1
  %79 = load i8, i8* %12, align 1
  store i8 %79, i8* %11, align 1
  %80 = load i8*, i8** %5, align 8
  %81 = load i64, i64* %9, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = and i32 %84, 1
  %86 = sub nsw i32 1, %85
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %13, align 1
  %88 = load i8*, i8** %5, align 8
  %89 = load i64, i64* %9, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = load i8*, i8** %5, align 8
  %94 = load i64, i64* %9, align 8
  %95 = sub i64 %94, 1
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = load i8, i8* %13, align 1
  %100 = zext i8 %99 to i32
  %101 = mul nsw i32 %98, %100
  %102 = and i32 %92, %101
  %103 = load i8, i8* %11, align 1
  %104 = zext i8 %103 to i32
  %105 = or i32 %104, %102
  %106 = trunc i32 %105 to i8
  store i8 %106, i8* %11, align 1
  %107 = load i8*, i8** %5, align 8
  %108 = load i64, i64* %9, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = load i8*, i8** %5, align 8
  %113 = load i64, i64* %9, align 8
  %114 = sub i64 %113, 1
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = load i8, i8* %13, align 1
  %119 = zext i8 %118 to i32
  %120 = mul nsw i32 %117, %119
  %121 = xor i32 %111, %120
  %122 = trunc i32 %121 to i8
  %123 = load i8*, i8** %5, align 8
  %124 = load i64, i64* %9, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8 %122, i8* %125, align 1
  %126 = load i8, i8* %13, align 1
  %127 = zext i8 %126 to i32
  %128 = shl i32 %127, 7
  %129 = load i8*, i8** %5, align 8
  %130 = load i64, i64* %9, align 8
  %131 = sub i64 %130, 1
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = or i32 %134, %128
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %132, align 1
  br label %137

137:                                              ; preds = %57
  %138 = load i64, i64* %9, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %9, align 8
  br label %53

140:                                              ; preds = %53
  ret void
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @mbedtls_mpi_get_bit(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
