; ModuleID = '/home/carl/AnghaBench/esp-idf/components/openssl/library/extr_ssl_pkey.c___EVP_PKEY_new.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/openssl/library/extr_ssl_pkey.c___EVP_PKEY_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@SSL_PKEY_ERROR_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"no enough memory > (pkey)\00", align 1
@new = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"EVP_PKEY_METHOD_CALL(new) return %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @__EVP_PKEY_new(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = call %struct.TYPE_8__* @ssl_mem_zalloc(i32 4)
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %5, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %8 = icmp ne %struct.TYPE_8__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @SSL_PKEY_ERROR_LEVEL, align 4
  %11 = call i32 (i32, i8*, ...) @SSL_DEBUG(i32 %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %41

12:                                               ; preds = %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %25

21:                                               ; preds = %12
  %22 = call i32 (...) @EVP_PKEY_method()
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %15
  %26 = load i32, i32* @new, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = call i32 @EVP_PKEY_METHOD_CALL(i32 %26, %struct.TYPE_8__* %27, %struct.TYPE_8__* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @SSL_PKEY_ERROR_LEVEL, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 (i32, i8*, ...) @SSL_DEBUG(i32 %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %38

36:                                               ; preds = %25
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %2, align 8
  br label %42

38:                                               ; preds = %32
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = call i32 @ssl_mem_free(%struct.TYPE_8__* %39)
  br label %41

41:                                               ; preds = %38, %9
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %42

42:                                               ; preds = %41, %36
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %43
}

declare dso_local %struct.TYPE_8__* @ssl_mem_zalloc(i32) #1

declare dso_local i32 @SSL_DEBUG(i32, i8*, ...) #1

declare dso_local i32 @EVP_PKEY_method(...) #1

declare dso_local i32 @EVP_PKEY_METHOD_CALL(i32, %struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @ssl_mem_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
