; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_ssl_resend_hello_request.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_ssl_resend_hello_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"no longer retransmitting hello request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @ssl_resend_hello_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_resend_hello_request(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %17, %22
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  store i8 1, i8* %5, align 1
  br label %25

25:                                               ; preds = %28, %12
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i8, i8* %5, align 1
  %30 = add i8 %29, 1
  store i8 %30, i8* %5, align 1
  %31 = load i32, i32* %4, align 4
  %32 = ashr i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %25

33:                                               ; preds = %25
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i8, i8* %35, align 8
  %37 = add i8 %36, 1
  store i8 %37, i8* %35, align 8
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* %5, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp sgt i32 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %48

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = call i32 @ssl_write_hello_request(%struct.TYPE_6__* %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @ssl_write_hello_request(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
