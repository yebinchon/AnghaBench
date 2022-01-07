; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mbedtls_mpi_write_string.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mbedtls_mpi_write_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i64* }

@MBEDTLS_ERR_MPI_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_MPI_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@ciL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_write_string(%struct.TYPE_9__* %0, i32 %1, i8* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_9__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 16
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %5
  %26 = load i32, i32* @MBEDTLS_ERR_MPI_BAD_INPUT_DATA, align 4
  store i32 %26, i32* %6, align 4
  br label %153

27:                                               ; preds = %22
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = call i64 @mbedtls_mpi_bitlen(%struct.TYPE_9__* %28)
  store i64 %29, i64* %13, align 8
  %30 = load i32, i32* %8, align 4
  %31 = icmp sge i32 %30, 4
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i64, i64* %13, align 8
  %34 = lshr i64 %33, 1
  store i64 %34, i64* %13, align 8
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %8, align 4
  %37 = icmp sge i32 %36, 16
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i64, i64* %13, align 8
  %40 = lshr i64 %39, 1
  store i64 %40, i64* %13, align 8
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i64, i64* %13, align 8
  %43 = add i64 %42, 1
  %44 = and i64 %43, 1
  %45 = add i64 3, %44
  %46 = load i64, i64* %13, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %13, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %13, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load i64, i64* %13, align 8
  %53 = load i64*, i64** %11, align 8
  store i64 %52, i64* %53, align 8
  %54 = load i32, i32* @MBEDTLS_ERR_MPI_BUFFER_TOO_SMALL, align 4
  store i32 %54, i32* %6, align 4
  br label %153

55:                                               ; preds = %41
  %56 = load i8*, i8** %9, align 8
  store i8* %56, i8** %14, align 8
  %57 = call i32 @mbedtls_mpi_init(%struct.TYPE_9__* %15)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i8*, i8** %14, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %14, align 8
  store i8 45, i8* %63, align 1
  br label %65

65:                                               ; preds = %62, %55
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, 16
  br i1 %67, label %68, label %128

68:                                               ; preds = %65
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %17, align 8
  store i64 0, i64* %19, align 8
  br label %72

72:                                               ; preds = %124, %68
  %73 = load i64, i64* %17, align 8
  %74 = icmp ugt i64 %73, 0
  br i1 %74, label %75, label %127

75:                                               ; preds = %72
  %76 = load i64, i64* @ciL, align 8
  store i64 %76, i64* %18, align 8
  br label %77

77:                                               ; preds = %120, %75
  %78 = load i64, i64* %18, align 8
  %79 = icmp ugt i64 %78, 0
  br i1 %79, label %80, label %123

80:                                               ; preds = %77
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* %17, align 8
  %85 = sub i64 %84, 1
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %18, align 8
  %89 = sub i64 %88, 1
  %90 = shl i64 %89, 3
  %91 = lshr i64 %87, %90
  %92 = and i64 %91, 255
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %80
  %97 = load i64, i64* %19, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i64, i64* %17, align 8
  %101 = load i64, i64* %18, align 8
  %102 = add i64 %100, %101
  %103 = icmp ne i64 %102, 2
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %120

105:                                              ; preds = %99, %96, %80
  %106 = load i32, i32* %16, align 4
  %107 = sdiv i32 %106, 16
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = load i8*, i8** %14, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %14, align 8
  store i8 %110, i8* %111, align 1
  %113 = load i32, i32* %16, align 4
  %114 = srem i32 %113, 16
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = load i8*, i8** %14, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %14, align 8
  store i8 %117, i8* %118, align 1
  store i64 1, i64* %19, align 8
  br label %120

120:                                              ; preds = %105, %104
  %121 = load i64, i64* %18, align 8
  %122 = add i64 %121, -1
  store i64 %122, i64* %18, align 8
  br label %77

123:                                              ; preds = %77
  br label %124

124:                                              ; preds = %123
  %125 = load i64, i64* %17, align 8
  %126 = add i64 %125, -1
  store i64 %126, i64* %17, align 8
  br label %72

127:                                              ; preds = %72
  br label %141

128:                                              ; preds = %65
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %130 = call i32 @mbedtls_mpi_copy(%struct.TYPE_9__* %15, %struct.TYPE_9__* %129)
  %131 = call i32 @MBEDTLS_MPI_CHK(i32 %130)
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i32 1, i32* %136, align 8
  br label %137

137:                                              ; preds = %135, %128
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @mpi_write_hlp(%struct.TYPE_9__* %15, i32 %138, i8** %14)
  %140 = call i32 @MBEDTLS_MPI_CHK(i32 %139)
  br label %141

141:                                              ; preds = %137, %127
  %142 = load i8*, i8** %14, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %14, align 8
  store i8 0, i8* %142, align 1
  %144 = load i8*, i8** %14, align 8
  %145 = load i8*, i8** %9, align 8
  %146 = ptrtoint i8* %144 to i64
  %147 = ptrtoint i8* %145 to i64
  %148 = sub i64 %146, %147
  %149 = load i64*, i64** %11, align 8
  store i64 %148, i64* %149, align 8
  br label %150

150:                                              ; preds = %141
  %151 = call i32 @mbedtls_mpi_free(%struct.TYPE_9__* %15)
  %152 = load i32, i32* %12, align 4
  store i32 %152, i32* %6, align 4
  br label %153

153:                                              ; preds = %150, %51, %25
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

declare dso_local i64 @mbedtls_mpi_bitlen(%struct.TYPE_9__*) #1

declare dso_local i32 @mbedtls_mpi_init(%struct.TYPE_9__*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_copy(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @mpi_write_hlp(%struct.TYPE_9__*, i32, i8**) #1

declare dso_local i32 @mbedtls_mpi_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
