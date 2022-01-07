; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_des.c_mbedtls_des3_crypt_ecb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_des.c_mbedtls_des3_crypt_ecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_des3_crypt_ecb(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @GET_UINT32_BE(i32 %15, i8* %16, i32 0)
  %18 = load i32, i32* %9, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @GET_UINT32_BE(i32 %18, i8* %19, i32 4)
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @DES_IP(i32 %21, i32 %22)
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %34, %3
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 8
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @DES_ROUND(i32 %28, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @DES_ROUND(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %24

37:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %48, %37
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 8
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @DES_ROUND(i32 %42, i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @DES_ROUND(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %38

51:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %62, %51
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 8
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @DES_ROUND(i32 %56, i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @DES_ROUND(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %52

65:                                               ; preds = %52
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @DES_FP(i32 %66, i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @PUT_UINT32_BE(i32 %69, i8* %70, i32 0)
  %72 = load i32, i32* %8, align 4
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @PUT_UINT32_BE(i32 %72, i8* %73, i32 4)
  ret i32 0
}

declare dso_local i32 @GET_UINT32_BE(i32, i8*, i32) #1

declare dso_local i32 @DES_IP(i32, i32) #1

declare dso_local i32 @DES_ROUND(i32, i32) #1

declare dso_local i32 @DES_FP(i32, i32) #1

declare dso_local i32 @PUT_UINT32_BE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
