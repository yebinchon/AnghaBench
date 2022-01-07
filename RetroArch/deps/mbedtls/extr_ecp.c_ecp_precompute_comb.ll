; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_ecp_precompute_comb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_ecp_precompute_comb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COMB_MAX_PRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i8, i64)* @ecp_precompute_comb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_precompute_comb(i32* %0, i32* %1, i32* %2, i8 zeroext %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8 %3, i8* %9, align 1
  store i64 %4, i64* %10, align 8
  %18 = load i32, i32* @COMB_MAX_PRE, align 4
  %19 = sub nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %16, align 8
  %22 = alloca i32*, i64 %20, align 16
  store i64 %20, i64* %17, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @mbedtls_ecp_copy(i32* %24, i32* %25)
  %27 = call i32 @MBEDTLS_MPI_CHK(i32 %26)
  store i8 0, i8* %13, align 1
  store i8 1, i8* %12, align 1
  br label %28

28:                                               ; preds = %70, %5
  %29 = load i8, i8* %12, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* %9, align 1
  %32 = zext i8 %31 to i32
  %33 = sub nsw i32 %32, 1
  %34 = shl i32 1, %33
  %35 = icmp ult i32 %30, %34
  br i1 %35, label %36, label %75

36:                                               ; preds = %28
  %37 = load i32*, i32** %7, align 8
  %38 = load i8, i8* %12, align 1
  %39 = zext i8 %38 to i32
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  store i32* %41, i32** %15, align 8
  %42 = load i32*, i32** %15, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i8, i8* %12, align 1
  %45 = zext i8 %44 to i32
  %46 = ashr i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  %49 = call i32 @mbedtls_ecp_copy(i32* %42, i32* %48)
  %50 = call i32 @MBEDTLS_MPI_CHK(i32 %49)
  store i64 0, i64* %14, align 8
  br label %51

51:                                               ; preds = %61, %36
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %10, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i32*, i32** %6, align 8
  %57 = load i32*, i32** %15, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = call i32 @ecp_double_jac(i32* %56, i32* %57, i32* %58)
  %60 = call i32 @MBEDTLS_MPI_CHK(i32 %59)
  br label %61

61:                                               ; preds = %55
  %62 = load i64, i64* %14, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %14, align 8
  br label %51

64:                                               ; preds = %51
  %65 = load i32*, i32** %15, align 8
  %66 = load i8, i8* %13, align 1
  %67 = add i8 %66, 1
  store i8 %67, i8* %13, align 1
  %68 = zext i8 %66 to i64
  %69 = getelementptr inbounds i32*, i32** %22, i64 %68
  store i32* %65, i32** %69, align 8
  br label %70

70:                                               ; preds = %64
  %71 = load i8, i8* %12, align 1
  %72 = zext i8 %71 to i32
  %73 = shl i32 %72, 1
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %12, align 1
  br label %28

75:                                               ; preds = %28
  %76 = load i32*, i32** %6, align 8
  %77 = load i8, i8* %13, align 1
  %78 = call i32 @ecp_normalize_jac_many(i32* %76, i32** %22, i8 zeroext %77)
  %79 = call i32 @MBEDTLS_MPI_CHK(i32 %78)
  store i8 0, i8* %13, align 1
  store i8 1, i8* %12, align 1
  br label %80

80:                                               ; preds = %123, %75
  %81 = load i8, i8* %12, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8, i8* %9, align 1
  %84 = zext i8 %83 to i32
  %85 = sub nsw i32 %84, 1
  %86 = shl i32 1, %85
  %87 = icmp ult i32 %82, %86
  br i1 %87, label %88, label %128

88:                                               ; preds = %80
  %89 = load i8, i8* %12, align 1
  %90 = zext i8 %89 to i64
  store i64 %90, i64* %14, align 8
  br label %91

91:                                               ; preds = %95, %88
  %92 = load i64, i64* %14, align 8
  %93 = add i64 %92, -1
  store i64 %93, i64* %14, align 8
  %94 = icmp ne i64 %92, 0
  br i1 %94, label %95, label %122

95:                                               ; preds = %91
  %96 = load i32*, i32** %6, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = load i8, i8* %12, align 1
  %99 = zext i8 %98 to i64
  %100 = load i64, i64* %14, align 8
  %101 = add i64 %99, %100
  %102 = getelementptr inbounds i32, i32* %97, i64 %101
  %103 = load i32*, i32** %7, align 8
  %104 = load i64, i64* %14, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32*, i32** %7, align 8
  %107 = load i8, i8* %12, align 1
  %108 = zext i8 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = call i32 @ecp_add_mixed(i32* %96, i32* %102, i32* %105, i32* %109)
  %111 = call i32 @MBEDTLS_MPI_CHK(i32 %110)
  %112 = load i32*, i32** %7, align 8
  %113 = load i8, i8* %12, align 1
  %114 = zext i8 %113 to i64
  %115 = load i64, i64* %14, align 8
  %116 = add i64 %114, %115
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  %118 = load i8, i8* %13, align 1
  %119 = add i8 %118, 1
  store i8 %119, i8* %13, align 1
  %120 = zext i8 %118 to i64
  %121 = getelementptr inbounds i32*, i32** %22, i64 %120
  store i32* %117, i32** %121, align 8
  br label %91

122:                                              ; preds = %91
  br label %123

123:                                              ; preds = %122
  %124 = load i8, i8* %12, align 1
  %125 = zext i8 %124 to i32
  %126 = shl i32 %125, 1
  %127 = trunc i32 %126 to i8
  store i8 %127, i8* %12, align 1
  br label %80

128:                                              ; preds = %80
  %129 = load i32*, i32** %6, align 8
  %130 = load i8, i8* %13, align 1
  %131 = call i32 @ecp_normalize_jac_many(i32* %129, i32** %22, i8 zeroext %130)
  %132 = call i32 @MBEDTLS_MPI_CHK(i32 %131)
  br label %133

133:                                              ; preds = %128
  %134 = load i32, i32* %11, align 4
  %135 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %135)
  ret i32 %134
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #2

declare dso_local i32 @mbedtls_ecp_copy(i32*, i32*) #2

declare dso_local i32 @ecp_double_jac(i32*, i32*, i32*) #2

declare dso_local i32 @ecp_normalize_jac_many(i32*, i32**, i8 zeroext) #2

declare dso_local i32 @ecp_add_mixed(i32*, i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
