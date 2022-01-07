; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_gcm.c_mbedtls_gcm_finish.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_gcm.c_mbedtls_gcm_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8*, i32 }

@MBEDTLS_ERR_GCM_BAD_INPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_gcm_finish(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [16 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 %14, 8
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 8
  store i32 %19, i32* %11, align 4
  %20 = load i64, i64* %7, align 8
  %21 = icmp ugt i64 %20, 16
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  %24 = icmp ult i64 %23, 4
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %3
  %26 = load i32, i32* @MBEDTLS_ERR_GCM_BAD_INPUT, align 4
  store i32 %26, i32* %4, align 4
  br label %109

27:                                               ; preds = %22
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @memcpy(i8* %28, i32 %31, i64 %32)
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %108

39:                                               ; preds = %36, %27
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %41 = call i32 @memset(i8* %40, i32 0, i32 16)
  %42 = load i32, i32* %11, align 4
  %43 = ashr i32 %42, 32
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %45 = call i32 @PUT_UINT32_BE(i32 %43, i8* %44, i32 0)
  %46 = load i32, i32* %11, align 4
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %48 = call i32 @PUT_UINT32_BE(i32 %46, i8* %47, i32 4)
  %49 = load i32, i32* %10, align 4
  %50 = ashr i32 %49, 32
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %52 = call i32 @PUT_UINT32_BE(i32 %50, i8* %51, i32 8)
  %53 = load i32, i32* %10, align 4
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %55 = call i32 @PUT_UINT32_BE(i32 %53, i8* %54, i32 12)
  store i64 0, i64* %9, align 8
  br label %56

56:                                               ; preds = %73, %39
  %57 = load i64, i64* %9, align 8
  %58 = icmp ult i64 %57, 16
  br i1 %58, label %59, label %76

59:                                               ; preds = %56
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = xor i32 %70, %63
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %68, align 1
  br label %73

73:                                               ; preds = %59
  %74 = load i64, i64* %9, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %9, align 8
  br label %56

76:                                               ; preds = %56
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @gcm_mult(%struct.TYPE_4__* %77, i8* %80, i8* %83)
  store i64 0, i64* %9, align 8
  br label %85

85:                                               ; preds = %104, %76
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %7, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %107

89:                                               ; preds = %85
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = load i64, i64* %9, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = load i8*, i8** %6, align 8
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = xor i32 %101, %96
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %99, align 1
  br label %104

104:                                              ; preds = %89
  %105 = load i64, i64* %9, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %9, align 8
  br label %85

107:                                              ; preds = %85
  br label %108

108:                                              ; preds = %107, %36
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %25
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @PUT_UINT32_BE(i32, i8*, i32) #1

declare dso_local i32 @gcm_mult(%struct.TYPE_4__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
