; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509.c_mbedtls_x509_serial_gets.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509.c_mbedtls_x509_serial_gets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@.str = private unnamed_addr constant [7 x i8] c"%02X%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MBEDTLS_X509_SAFE_SNPRINTF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"....\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_serial_gets(i8* %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %11, align 8
  %13 = load i64, i64* %5, align 8
  store i64 %13, i64* %9, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sle i32 %16, 32
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i32 [ %21, %18 ], [ 28, %22 ]
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %10, align 8
  store i64 0, i64* %8, align 8
  br label %26

26:                                               ; preds = %62, %23
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %26
  %31 = load i64, i64* %8, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load i64, i64* %10, align 8
  %35 = icmp ugt i64 %34, 1
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %62

45:                                               ; preds = %36, %33, %30
  %46 = load i8*, i8** %11, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %10, align 8
  %56 = sub i64 %55, 1
  %57 = icmp ult i64 %54, %56
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %60 = call i32 (i8*, i64, i8*, ...) @mbedtls_snprintf(i8* %46, i64 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %53, i8* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* @MBEDTLS_X509_SAFE_SNPRINTF, align 4
  br label %62

62:                                               ; preds = %45, %44
  %63 = load i64, i64* %8, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %8, align 8
  br label %26

65:                                               ; preds = %26
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = icmp ne i64 %66, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load i8*, i8** %11, align 8
  %74 = load i64, i64* %9, align 8
  %75 = call i32 (i8*, i64, i8*, ...) @mbedtls_snprintf(i8* %73, i64 %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* @MBEDTLS_X509_SAFE_SNPRINTF, align 4
  br label %77

77:                                               ; preds = %72, %65
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* %9, align 8
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  ret i32 %81
}

declare dso_local i32 @mbedtls_snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
