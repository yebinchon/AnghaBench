; ModuleID = '/home/carl/AnghaBench/esp-idf/components/openssl/library/extr_ssl_x509.c_SSL_use_certificate_ASN1.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/openssl/library/extr_ssl_x509.c_SSL_use_certificate_ASN1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_PKEY_ERROR_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"d2i_X509() return NULL\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"SSL_use_certificate() return %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_use_certificate_ASN1(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32* @d2i_X509(i32* null, i8* %10, i32 %11)
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @SSL_PKEY_ERROR_LEVEL, align 4
  %17 = call i32 (i32, i8*, ...) @SSL_DEBUG(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %32

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @SSL_use_certificate(i32* %19, i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @SSL_PKEY_ERROR_LEVEL, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 (i32, i8*, ...) @SSL_DEBUG(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %29

28:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %33

29:                                               ; preds = %24
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @X509_free(i32* %30)
  br label %32

32:                                               ; preds = %29, %15
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %28
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32* @d2i_X509(i32*, i8*, i32) #1

declare dso_local i32 @SSL_DEBUG(i32, i8*, ...) #1

declare dso_local i32 @SSL_use_certificate(i32*, i32*) #1

declare dso_local i32 @X509_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
