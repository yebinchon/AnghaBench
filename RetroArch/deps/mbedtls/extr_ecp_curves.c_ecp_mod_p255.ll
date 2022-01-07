; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp_curves.c_ecp_mod_p255.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp_curves.c_ecp_mod_p255.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64* }

@P255_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @ecp_mod_p255 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_mod_p255(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %10 = load i32, i32* @P255_WIDTH, align 4
  %11 = add nsw i32 %10, 2
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i64, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @P255_WIDTH, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %92

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @P255_WIDTH, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sub nsw i32 %25, %27
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @P255_WIDTH, align 4
  %33 = add nsw i32 %32, 1
  %34 = icmp sgt i32 %31, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %21
  %36 = load i32, i32* @P255_WIDTH, align 4
  %37 = add nsw i32 %36, 1
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  br label %39

39:                                               ; preds = %35, %21
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  store i64* %14, i64** %40, align 8
  %41 = mul nuw i64 8, %12
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memset(i64* %14, i32 0, i32 %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* @P255_WIDTH, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = getelementptr inbounds i64, i64* %49, i64 -1
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @memcpy(i64* %14, i64* %50, i32 %55)
  %57 = call i32 @mbedtls_mpi_shift_r(%struct.TYPE_10__* %6, i32 63)
  %58 = call i32 @MBEDTLS_MPI_CHK(i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = call i32 @mbedtls_mpi_set_bit(%struct.TYPE_10__* %62, i32 255, i32 0)
  %64 = call i32 @MBEDTLS_MPI_CHK(i32 %63)
  %65 = load i32, i32* @P255_WIDTH, align 4
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %5, align 8
  br label %67

67:                                               ; preds = %80, %39
  %68 = load i64, i64* %5, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = icmp ult i64 %68, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %67
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* %5, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %74
  %81 = load i64, i64* %5, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %5, align 8
  br label %67

83:                                               ; preds = %67
  %84 = call i32 @mbedtls_mpi_mul_int(%struct.TYPE_10__* %6, %struct.TYPE_10__* %6, i32 19)
  %85 = call i32 @MBEDTLS_MPI_CHK(i32 %84)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %88 = call i32 @mbedtls_mpi_add_abs(%struct.TYPE_10__* %86, %struct.TYPE_10__* %87, %struct.TYPE_10__* %6)
  %89 = call i32 @MBEDTLS_MPI_CHK(i32 %88)
  br label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %92

92:                                               ; preds = %90, %20
  %93 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i32 @memcpy(i64*, i64*, i32) #2

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #2

declare dso_local i32 @mbedtls_mpi_shift_r(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @mbedtls_mpi_set_bit(%struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @mbedtls_mpi_mul_int(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #2

declare dso_local i32 @mbedtls_mpi_add_abs(%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
