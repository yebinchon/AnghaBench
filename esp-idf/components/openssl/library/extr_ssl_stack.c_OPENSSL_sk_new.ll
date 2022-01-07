; ModuleID = '/home/carl/AnghaBench/esp-idf/components/openssl/library/extr_ssl_stack.c_OPENSSL_sk_new.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/openssl/library/extr_ssl_stack.c_OPENSSL_sk_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8**, i32, i32 }

@SSL_STACK_ERROR_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"no enough memory > (stack)\00", align 1
@MIN_NODES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"no enough memory > (data)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @OPENSSL_sk_new(i32 %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  %6 = call i8* @ssl_mem_zalloc(i32 16)
  %7 = bitcast i8* %6 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %4, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @SSL_STACK_ERROR_LEVEL, align 4
  %12 = call i32 @SSL_DEBUG(i32 %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %39

13:                                               ; preds = %1
  %14 = load i32, i32* @MIN_NODES, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 8, %15
  %17 = trunc i64 %16 to i32
  %18 = call i8* @ssl_mem_zalloc(i32 %17)
  %19 = bitcast i8* %18 to i8**
  store i8** %19, i8*** %5, align 8
  %20 = load i8**, i8*** %5, align 8
  %21 = icmp ne i8** %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  %23 = load i32, i32* @SSL_STACK_ERROR_LEVEL, align 4
  %24 = call i32 @SSL_DEBUG(i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %36

25:                                               ; preds = %13
  %26 = load i8**, i8*** %5, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i8** %26, i8*** %28, align 8
  %29 = load i32, i32* @MIN_NODES, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %2, align 8
  br label %40

36:                                               ; preds = %22
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = call i32 @ssl_mem_free(%struct.TYPE_4__* %37)
  br label %39

39:                                               ; preds = %36, %10
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %40

40:                                               ; preds = %39, %25
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %41
}

declare dso_local i8* @ssl_mem_zalloc(i32) #1

declare dso_local i32 @SSL_DEBUG(i32, i8*) #1

declare dso_local i32 @ssl_mem_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
