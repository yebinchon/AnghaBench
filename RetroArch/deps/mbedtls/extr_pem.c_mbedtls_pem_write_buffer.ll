; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pem.c_mbedtls_pem_write_buffer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pem.c_mbedtls_pem_write_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_BASE64_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PEM_ALLOC_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pem_write_buffer(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64* %6, i64** %15, align 8
  %23 = load i8*, i8** %13, align 8
  store i8* %23, i8** %19, align 8
  store i64 0, i64* %20, align 8
  store i64 0, i64* %22, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = load i64, i64* %12, align 8
  %26 = call i32 @mbedtls_base64_encode(i8* null, i64 0, i64* %21, i8* %24, i64 %25)
  %27 = load i8*, i8** %9, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = load i8*, i8** %10, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = add i64 %28, %30
  %32 = load i64, i64* %21, align 8
  %33 = udiv i64 %32, 64
  %34 = add i64 %31, %33
  %35 = add i64 %34, 1
  store i64 %35, i64* %22, align 8
  %36 = load i64, i64* %21, align 8
  %37 = load i64, i64* %22, align 8
  %38 = add i64 %36, %37
  %39 = load i64, i64* %14, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %7
  %42 = load i64, i64* %21, align 8
  %43 = load i64, i64* %22, align 8
  %44 = add i64 %42, %43
  %45 = load i64*, i64** %15, align 8
  store i64 %44, i64* %45, align 8
  %46 = load i32, i32* @MBEDTLS_ERR_BASE64_BUFFER_TOO_SMALL, align 4
  store i32 %46, i32* %8, align 4
  br label %122

47:                                               ; preds = %7
  %48 = load i64, i64* %21, align 8
  %49 = call i64 @mbedtls_calloc(i32 1, i64 %48)
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %17, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @MBEDTLS_ERR_PEM_ALLOC_FAILED, align 4
  store i32 %53, i32* %8, align 4
  br label %122

54:                                               ; preds = %47
  %55 = load i8*, i8** %17, align 8
  %56 = load i64, i64* %21, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i32 @mbedtls_base64_encode(i8* %55, i64 %56, i64* %21, i8* %57, i64 %58)
  store i32 %59, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i8*, i8** %17, align 8
  %63 = call i32 @mbedtls_free(i8* %62)
  %64 = load i32, i32* %16, align 4
  store i32 %64, i32* %8, align 4
  br label %122

65:                                               ; preds = %54
  %66 = load i8*, i8** %19, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = call i64 @strlen(i8* %68)
  %70 = call i32 (i8*, ...) @memcpy(i8* %66, i8* %67, i64 %69)
  %71 = load i8*, i8** %9, align 8
  %72 = call i64 @strlen(i8* %71)
  %73 = load i8*, i8** %19, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 %72
  store i8* %74, i8** %19, align 8
  %75 = load i8*, i8** %17, align 8
  store i8* %75, i8** %18, align 8
  br label %76

76:                                               ; preds = %85, %65
  %77 = load i64, i64* %21, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %102

79:                                               ; preds = %76
  %80 = load i64, i64* %21, align 8
  %81 = icmp ugt i64 %80, 64
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %85

83:                                               ; preds = %79
  %84 = load i64, i64* %21, align 8
  br label %85

85:                                               ; preds = %83, %82
  %86 = phi i64 [ 64, %82 ], [ %84, %83 ]
  store i64 %86, i64* %20, align 8
  %87 = load i8*, i8** %19, align 8
  %88 = load i8*, i8** %18, align 8
  %89 = load i64, i64* %20, align 8
  %90 = call i32 (i8*, ...) @memcpy(i8* %87, i8* %88, i64 %89)
  %91 = load i64, i64* %20, align 8
  %92 = load i64, i64* %21, align 8
  %93 = sub i64 %92, %91
  store i64 %93, i64* %21, align 8
  %94 = load i64, i64* %20, align 8
  %95 = load i8*, i8** %19, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 %94
  store i8* %96, i8** %19, align 8
  %97 = load i64, i64* %20, align 8
  %98 = load i8*, i8** %18, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 %97
  store i8* %99, i8** %18, align 8
  %100 = load i8*, i8** %19, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %19, align 8
  store i8 10, i8* %100, align 1
  br label %76

102:                                              ; preds = %76
  %103 = load i8*, i8** %19, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = call i64 @strlen(i8* %105)
  %107 = call i32 (i8*, ...) @memcpy(i8* %103, i8* %104, i64 %106)
  %108 = load i8*, i8** %10, align 8
  %109 = call i64 @strlen(i8* %108)
  %110 = load i8*, i8** %19, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 %109
  store i8* %111, i8** %19, align 8
  %112 = load i8*, i8** %19, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %19, align 8
  store i8 0, i8* %112, align 1
  %114 = load i8*, i8** %19, align 8
  %115 = load i8*, i8** %13, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = load i64*, i64** %15, align 8
  store i64 %118, i64* %119, align 8
  %120 = load i8*, i8** %17, align 8
  %121 = call i32 @mbedtls_free(i8* %120)
  store i32 0, i32* %8, align 4
  br label %122

122:                                              ; preds = %102, %61, %52, %41
  %123 = load i32, i32* %8, align 4
  ret i32 %123
}

declare dso_local i32 @mbedtls_base64_encode(i8*, i64, i64*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @mbedtls_calloc(i32, i64) #1

declare dso_local i32 @mbedtls_free(i8*) #1

declare dso_local i32 @memcpy(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
