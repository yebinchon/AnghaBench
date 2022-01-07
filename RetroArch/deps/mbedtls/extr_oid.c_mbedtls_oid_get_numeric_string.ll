; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_oid.c_mbedtls_oid_get_numeric_string.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_oid.c_mbedtls_oid_get_numeric_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@.str = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@OID_SAFE_SNPRINTF = common dso_local global i32 0, align 4
@MBEDTLS_ERR_OID_BUF_TOO_SMALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c".%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_oid_get_numeric_string(i8* %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %12, align 8
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %10, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ugt i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %3
  %20 = load i8*, i8** %12, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %26, 40
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = srem i32 %32, 40
  %34 = call i32 (i8*, i64, i8*, i32, ...) @mbedtls_snprintf(i8* %20, i64 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @OID_SAFE_SNPRINTF, align 4
  br label %36

36:                                               ; preds = %19, %3
  store i32 0, i32* %11, align 4
  store i64 1, i64* %9, align 8
  br label %37

37:                                               ; preds = %78, %36
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %81

43:                                               ; preds = %37
  %44 = load i32, i32* %11, align 4
  %45 = shl i32 %44, 7
  %46 = lshr i32 %45, 7
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @MBEDTLS_ERR_OID_BUF_TOO_SMALL, align 4
  store i32 %50, i32* %4, align 4
  br label %86

51:                                               ; preds = %43
  %52 = load i32, i32* %11, align 4
  %53 = shl i32 %52, 7
  store i32 %53, i32* %11, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 127
  %61 = load i32, i32* %11, align 4
  %62 = add i32 %61, %60
  store i32 %62, i32* %11, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 128
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %51
  %72 = load i8*, i8** %12, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 (i8*, i64, i8*, i32, ...) @mbedtls_snprintf(i8* %72, i64 %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* @OID_SAFE_SNPRINTF, align 4
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %71, %51
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %9, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %9, align 8
  br label %37

81:                                               ; preds = %37
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* %10, align 8
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %81, %49
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @mbedtls_snprintf(i8*, i64, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
