; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_rsa.c_mbedtls_rsa_check_privkey.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_rsa.c_mbedtls_rsa_check_privkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32, i32, i32, %struct.TYPE_28__, %struct.TYPE_28__, %struct.TYPE_28__, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }

@MBEDTLS_ERR_RSA_KEY_CHECK_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_check_privkey(%struct.TYPE_27__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_28__, align 4
  %6 = alloca %struct.TYPE_28__, align 4
  %7 = alloca %struct.TYPE_28__, align 4
  %8 = alloca %struct.TYPE_28__, align 4
  %9 = alloca %struct.TYPE_28__, align 4
  %10 = alloca %struct.TYPE_28__, align 4
  %11 = alloca %struct.TYPE_28__, align 4
  %12 = alloca %struct.TYPE_28__, align 4
  %13 = alloca %struct.TYPE_28__, align 4
  %14 = alloca %struct.TYPE_28__, align 4
  %15 = alloca %struct.TYPE_28__, align 4
  %16 = alloca %struct.TYPE_28__, align 4
  %17 = alloca %struct.TYPE_28__, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %19 = call i32 @mbedtls_rsa_check_pubkey(%struct.TYPE_27__* %18)
  store i32 %19, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %161

23:                                               ; preds = %1
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %35, %29, %23
  %42 = load i32, i32* @MBEDTLS_ERR_RSA_KEY_CHECK_FAILED, align 4
  store i32 %42, i32* %2, align 4
  br label %161

43:                                               ; preds = %35
  %44 = call i32 @mbedtls_mpi_init(%struct.TYPE_28__* %5)
  %45 = call i32 @mbedtls_mpi_init(%struct.TYPE_28__* %6)
  %46 = call i32 @mbedtls_mpi_init(%struct.TYPE_28__* %7)
  %47 = call i32 @mbedtls_mpi_init(%struct.TYPE_28__* %8)
  %48 = call i32 @mbedtls_mpi_init(%struct.TYPE_28__* %9)
  %49 = call i32 @mbedtls_mpi_init(%struct.TYPE_28__* %10)
  %50 = call i32 @mbedtls_mpi_init(%struct.TYPE_28__* %11)
  %51 = call i32 @mbedtls_mpi_init(%struct.TYPE_28__* %12)
  %52 = call i32 @mbedtls_mpi_init(%struct.TYPE_28__* %13)
  %53 = call i32 @mbedtls_mpi_init(%struct.TYPE_28__* %14)
  %54 = call i32 @mbedtls_mpi_init(%struct.TYPE_28__* %15)
  %55 = call i32 @mbedtls_mpi_init(%struct.TYPE_28__* %16)
  %56 = call i32 @mbedtls_mpi_init(%struct.TYPE_28__* %17)
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 5
  %61 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_28__* %5, %struct.TYPE_28__* %58, %struct.TYPE_28__* %60)
  %62 = call i32 @MBEDTLS_MPI_CHK(i32 %61)
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 6
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 7
  %67 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_28__* %6, %struct.TYPE_28__* %64, %struct.TYPE_28__* %66)
  %68 = call i32 @MBEDTLS_MPI_CHK(i32 %67)
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 4
  %71 = call i32 @mbedtls_mpi_sub_int(%struct.TYPE_28__* %7, %struct.TYPE_28__* %70, i32 1)
  %72 = call i32 @MBEDTLS_MPI_CHK(i32 %71)
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 5
  %75 = call i32 @mbedtls_mpi_sub_int(%struct.TYPE_28__* %8, %struct.TYPE_28__* %74, i32 1)
  %76 = call i32 @MBEDTLS_MPI_CHK(i32 %75)
  %77 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_28__* %9, %struct.TYPE_28__* %7, %struct.TYPE_28__* %8)
  %78 = call i32 @MBEDTLS_MPI_CHK(i32 %77)
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 7
  %81 = call i32 @mbedtls_mpi_gcd(%struct.TYPE_28__* %11, %struct.TYPE_28__* %80, %struct.TYPE_28__* %9)
  %82 = call i32 @MBEDTLS_MPI_CHK(i32 %81)
  %83 = call i32 @mbedtls_mpi_gcd(%struct.TYPE_28__* %12, %struct.TYPE_28__* %7, %struct.TYPE_28__* %8)
  %84 = call i32 @MBEDTLS_MPI_CHK(i32 %83)
  %85 = call i32 @mbedtls_mpi_div_mpi(%struct.TYPE_28__* %13, %struct.TYPE_28__* %14, %struct.TYPE_28__* %9, %struct.TYPE_28__* %12)
  %86 = call i32 @MBEDTLS_MPI_CHK(i32 %85)
  %87 = call i32 @mbedtls_mpi_mod_mpi(%struct.TYPE_28__* %10, %struct.TYPE_28__* %6, %struct.TYPE_28__* %13)
  %88 = call i32 @MBEDTLS_MPI_CHK(i32 %87)
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 6
  %91 = call i32 @mbedtls_mpi_mod_mpi(%struct.TYPE_28__* %15, %struct.TYPE_28__* %90, %struct.TYPE_28__* %7)
  %92 = call i32 @MBEDTLS_MPI_CHK(i32 %91)
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 6
  %95 = call i32 @mbedtls_mpi_mod_mpi(%struct.TYPE_28__* %16, %struct.TYPE_28__* %94, %struct.TYPE_28__* %8)
  %96 = call i32 @MBEDTLS_MPI_CHK(i32 %95)
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 5
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 4
  %101 = call i32 @mbedtls_mpi_inv_mod(%struct.TYPE_28__* %17, %struct.TYPE_28__* %98, %struct.TYPE_28__* %100)
  %102 = call i32 @MBEDTLS_MPI_CHK(i32 %101)
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 3
  %105 = call i64 @mbedtls_mpi_cmp_mpi(%struct.TYPE_28__* %5, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %131, label %107

107:                                              ; preds = %43
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 2
  %110 = call i64 @mbedtls_mpi_cmp_mpi(%struct.TYPE_28__* %15, i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %131, label %112

112:                                              ; preds = %107
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 1
  %115 = call i64 @mbedtls_mpi_cmp_mpi(%struct.TYPE_28__* %16, i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %131, label %117

117:                                              ; preds = %112
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 0
  %120 = call i64 @mbedtls_mpi_cmp_mpi(%struct.TYPE_28__* %17, i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %131, label %122

122:                                              ; preds = %117
  %123 = call i64 @mbedtls_mpi_cmp_int(%struct.TYPE_28__* %14, i32 0)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %122
  %126 = call i64 @mbedtls_mpi_cmp_int(%struct.TYPE_28__* %10, i32 1)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = call i64 @mbedtls_mpi_cmp_int(%struct.TYPE_28__* %11, i32 1)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128, %125, %122, %117, %112, %107, %43
  %132 = load i32, i32* @MBEDTLS_ERR_RSA_KEY_CHECK_FAILED, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %131, %128
  br label %134

134:                                              ; preds = %133
  %135 = call i32 @mbedtls_mpi_free(%struct.TYPE_28__* %5)
  %136 = call i32 @mbedtls_mpi_free(%struct.TYPE_28__* %6)
  %137 = call i32 @mbedtls_mpi_free(%struct.TYPE_28__* %7)
  %138 = call i32 @mbedtls_mpi_free(%struct.TYPE_28__* %8)
  %139 = call i32 @mbedtls_mpi_free(%struct.TYPE_28__* %9)
  %140 = call i32 @mbedtls_mpi_free(%struct.TYPE_28__* %10)
  %141 = call i32 @mbedtls_mpi_free(%struct.TYPE_28__* %11)
  %142 = call i32 @mbedtls_mpi_free(%struct.TYPE_28__* %12)
  %143 = call i32 @mbedtls_mpi_free(%struct.TYPE_28__* %13)
  %144 = call i32 @mbedtls_mpi_free(%struct.TYPE_28__* %14)
  %145 = call i32 @mbedtls_mpi_free(%struct.TYPE_28__* %15)
  %146 = call i32 @mbedtls_mpi_free(%struct.TYPE_28__* %16)
  %147 = call i32 @mbedtls_mpi_free(%struct.TYPE_28__* %17)
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* @MBEDTLS_ERR_RSA_KEY_CHECK_FAILED, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %134
  %152 = load i32, i32* %4, align 4
  store i32 %152, i32* %2, align 4
  br label %161

153:                                              ; preds = %134
  %154 = load i32, i32* %4, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i32, i32* @MBEDTLS_ERR_RSA_KEY_CHECK_FAILED, align 4
  %158 = load i32, i32* %4, align 4
  %159 = add nsw i32 %157, %158
  store i32 %159, i32* %2, align 4
  br label %161

160:                                              ; preds = %153
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %160, %156, %151, %41, %21
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32 @mbedtls_rsa_check_pubkey(%struct.TYPE_27__*) #1

declare dso_local i32 @mbedtls_mpi_init(%struct.TYPE_28__*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @mbedtls_mpi_sub_int(%struct.TYPE_28__*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @mbedtls_mpi_gcd(%struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @mbedtls_mpi_div_mpi(%struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @mbedtls_mpi_mod_mpi(%struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @mbedtls_mpi_inv_mod(%struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i64 @mbedtls_mpi_cmp_mpi(%struct.TYPE_28__*, i32*) #1

declare dso_local i64 @mbedtls_mpi_cmp_int(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @mbedtls_mpi_free(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
