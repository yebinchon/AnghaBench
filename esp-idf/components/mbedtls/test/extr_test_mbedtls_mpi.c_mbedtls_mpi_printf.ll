; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/test/extr_test_mbedtls_mpi.c_mbedtls_mpi_printf.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/test/extr_test_mbedtls_mpi.c_mbedtls_mpi_printf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mbedtls_mpi_printf.buf = internal global [1024 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"%s = 0x%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%s = TOOLONG\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_mpi_printf(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = call i32 @memset(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @mbedtls_mpi_printf.buf, i64 0, i64 0), i32 0, i32 1024)
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @mbedtls_mpi_write_string(i32* %7, i32 16, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @mbedtls_mpi_printf.buf, i64 0, i64 0), i32 1023, i64* %5)
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %12, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @mbedtls_mpi_printf.buf, i64 0, i64 0))
  br label %17

14:                                               ; preds = %2
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %14, %11
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mbedtls_mpi_write_string(i32*, i32, i8*, i32, i64*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
