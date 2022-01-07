; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp_curves.c_ecp_mod_p521.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp_curves.c_ecp_mod_p521.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64* }

@P521_WIDTH = common dso_local global i32 0, align 4
@P521_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @ecp_mod_p521 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_mod_p521(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %10 = load i32, i32* @P521_WIDTH, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i64, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @P521_WIDTH, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %91

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @P521_WIDTH, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sub nsw i32 %25, %27
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @P521_WIDTH, align 4
  %33 = add nsw i32 %32, 1
  %34 = icmp sgt i32 %31, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %21
  %36 = load i32, i32* @P521_WIDTH, align 4
  %37 = add nsw i32 %36, 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  br label %39

39:                                               ; preds = %35, %21
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  store i64* %14, i64** %40, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* @P521_WIDTH, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = getelementptr inbounds i64, i64* %46, i64 -1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @memcpy(i64* %14, i64* %47, i32 %52)
  %54 = call i32 @mbedtls_mpi_shift_r(%struct.TYPE_7__* %6, i32 9)
  %55 = call i32 @MBEDTLS_MPI_CHK(i32 %54)
  %56 = load i64, i64* @P521_MASK, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* @P521_WIDTH, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %59, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = and i64 %64, %56
  store i64 %65, i64* %63, align 8
  %66 = load i32, i32* @P521_WIDTH, align 4
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %5, align 8
  br label %68

68:                                               ; preds = %81, %39
  %69 = load i64, i64* %5, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = icmp ult i64 %69, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* %5, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %75
  %82 = load i64, i64* %5, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %5, align 8
  br label %68

84:                                               ; preds = %68
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %87 = call i32 @mbedtls_mpi_add_abs(%struct.TYPE_7__* %85, %struct.TYPE_7__* %86, %struct.TYPE_7__* %6)
  %88 = call i32 @MBEDTLS_MPI_CHK(i32 %87)
  br label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %91

91:                                               ; preds = %89, %20
  %92 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #2

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #2

declare dso_local i32 @mbedtls_mpi_shift_r(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @mbedtls_mpi_add_abs(%struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
