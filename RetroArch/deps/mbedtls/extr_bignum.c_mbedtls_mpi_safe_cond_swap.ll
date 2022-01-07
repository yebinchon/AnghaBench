; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mbedtls_mpi_safe_cond_swap.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mbedtls_mpi_safe_cond_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_safe_cond_swap(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i8 %2, i8* %7, align 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = icmp eq %struct.TYPE_5__* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %142

16:                                               ; preds = %3
  %17 = load i8, i8* %7, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* %7, align 1
  %20 = zext i8 %19 to i32
  %21 = sub nsw i32 0, %20
  %22 = trunc i32 %21 to i8
  %23 = zext i8 %22 to i32
  %24 = or i32 %18, %23
  %25 = ashr i32 %24, 7
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %7, align 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @mbedtls_mpi_grow(%struct.TYPE_5__* %27, i64 %30)
  %32 = call i32 @MBEDTLS_MPI_CHK(i32 %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @mbedtls_mpi_grow(%struct.TYPE_5__* %33, i64 %36)
  %38 = call i32 @MBEDTLS_MPI_CHK(i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %9, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i8, i8* %7, align 1
  %46 = zext i8 %45 to i32
  %47 = sub nsw i32 1, %46
  %48 = mul nsw i32 %44, %47
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i8, i8* %7, align 1
  %53 = zext i8 %52 to i32
  %54 = mul nsw i32 %51, %53
  %55 = add nsw i32 %48, %54
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i8, i8* %7, align 1
  %62 = zext i8 %61 to i32
  %63 = sub nsw i32 1, %62
  %64 = mul nsw i32 %60, %63
  %65 = load i32, i32* %9, align 4
  %66 = load i8, i8* %7, align 1
  %67 = zext i8 %66 to i32
  %68 = mul nsw i32 %65, %67
  %69 = add nsw i32 %64, %68
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  store i64 0, i64* %10, align 8
  br label %72

72:                                               ; preds = %136, %16
  %73 = load i64, i64* %10, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ult i64 %73, %76
  br i1 %77, label %78, label %139

78:                                               ; preds = %72
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = load i8, i8* %83, align 1
  store i8 %84, i8* %11, align 1
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = load i64, i64* %10, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8, i8* %7, align 1
  %93 = zext i8 %92 to i32
  %94 = sub nsw i32 1, %93
  %95 = mul nsw i32 %91, %94
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = load i64, i64* %10, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = load i8, i8* %7, align 1
  %104 = zext i8 %103 to i32
  %105 = mul nsw i32 %102, %104
  %106 = add nsw i32 %95, %105
  %107 = trunc i32 %106 to i8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = load i64, i64* %10, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8 %107, i8* %112, align 1
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = load i64, i64* %10, align 8
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = load i8, i8* %7, align 1
  %121 = zext i8 %120 to i32
  %122 = sub nsw i32 1, %121
  %123 = mul nsw i32 %119, %122
  %124 = load i8, i8* %11, align 1
  %125 = zext i8 %124 to i32
  %126 = load i8, i8* %7, align 1
  %127 = zext i8 %126 to i32
  %128 = mul nsw i32 %125, %127
  %129 = add nsw i32 %123, %128
  %130 = trunc i32 %129 to i8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  %134 = load i64, i64* %10, align 8
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  store i8 %130, i8* %135, align 1
  br label %136

136:                                              ; preds = %78
  %137 = load i64, i64* %10, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %10, align 8
  br label %72

139:                                              ; preds = %72
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %140, %15
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_grow(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
