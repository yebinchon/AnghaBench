; ModuleID = '/home/carl/AnghaBench/esp-idf/components/openssl/library/extr_ssl_lib.c_SSL_SESSION_new.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/openssl/library/extr_ssl_lib.c_SSL_SESSION_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@SSL_LIB_ERROR_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"no enough memory > (session)\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"X509_new() return NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* ()* @SSL_SESSION_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @SSL_SESSION_new() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = call %struct.TYPE_5__* @ssl_mem_zalloc(i32 4)
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = icmp ne %struct.TYPE_5__* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @SSL_LIB_ERROR_LEVEL, align 4
  %8 = call i32 @SSL_DEBUG(i32 %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %25

9:                                                ; preds = %0
  %10 = call i32 (...) @X509_new()
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %9
  %18 = load i32, i32* @SSL_LIB_ERROR_LEVEL, align 4
  %19 = call i32 @SSL_DEBUG(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %22

20:                                               ; preds = %9
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %1, align 8
  br label %26

22:                                               ; preds = %17
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = call i32 @ssl_mem_free(%struct.TYPE_5__* %23)
  br label %25

25:                                               ; preds = %22, %6
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %1, align 8
  br label %26

26:                                               ; preds = %25, %20
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  ret %struct.TYPE_5__* %27
}

declare dso_local %struct.TYPE_5__* @ssl_mem_zalloc(i32) #1

declare dso_local i32 @SSL_DEBUG(i32, i8*) #1

declare dso_local i32 @X509_new(...) #1

declare dso_local i32 @ssl_mem_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
