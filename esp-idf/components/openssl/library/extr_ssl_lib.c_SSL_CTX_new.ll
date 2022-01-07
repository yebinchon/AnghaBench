; ModuleID = '/home/carl/AnghaBench/esp-idf/components/openssl/library/extr_ssl_lib.c_SSL_CTX_new.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/openssl/library/extr_ssl_lib.c_SSL_CTX_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@SSL_LIB_ERROR_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"no no_method\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"X509_new() return NULL\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"ssl_cert_new() return NULL\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"no enough memory > (ctx)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @SSL_CTX_new(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @SSL_LIB_ERROR_LEVEL, align 4
  %11 = call i32 @SSL_DEBUG(i32 %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %57

12:                                               ; preds = %1
  %13 = call i32* (...) @X509_new()
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @SSL_LIB_ERROR_LEVEL, align 4
  %18 = call i32 @SSL_DEBUG(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %56

19:                                               ; preds = %12
  %20 = call i32* (...) @ssl_cert_new()
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @SSL_LIB_ERROR_LEVEL, align 4
  %25 = call i32 @SSL_DEBUG(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %53

26:                                               ; preds = %19
  %27 = call i64 @ssl_mem_zalloc(i32 32)
  %28 = inttoptr i64 %27 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %4, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @SSL_LIB_ERROR_LEVEL, align 4
  %33 = call i32 @SSL_DEBUG(i32 %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %50

34:                                               ; preds = %26
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %37, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  store i32* %38, i32** %40, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %2, align 8
  br label %57

50:                                               ; preds = %31
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @ssl_cert_free(i32* %51)
  br label %53

53:                                               ; preds = %50, %23
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @X509_free(i32* %54)
  br label %56

56:                                               ; preds = %53, %16
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %57

57:                                               ; preds = %56, %34, %9
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %58
}

declare dso_local i32 @SSL_DEBUG(i32, i8*) #1

declare dso_local i32* @X509_new(...) #1

declare dso_local i32* @ssl_cert_new(...) #1

declare dso_local i64 @ssl_mem_zalloc(i32) #1

declare dso_local i32 @ssl_cert_free(i32*) #1

declare dso_local i32 @X509_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
