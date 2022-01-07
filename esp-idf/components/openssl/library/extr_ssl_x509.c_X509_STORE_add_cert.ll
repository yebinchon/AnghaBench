; ModuleID = '/home/carl/AnghaBench/esp-idf/components/openssl/library/extr_ssl_x509.c_X509_STORE_add_cert.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/openssl/library/extr_ssl_x509.c_X509_STORE_add_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_STORE_add_cert(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = call i32 @SSL_ASSERT1(%struct.TYPE_6__* %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = call i32 @SSL_ASSERT1(%struct.TYPE_6__* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = icmp eq %struct.TYPE_6__* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %37

23:                                               ; preds = %2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = call i32 @X509_free(%struct.TYPE_6__* %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %36, align 8
  store i32 1, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %22
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @SSL_ASSERT1(%struct.TYPE_6__*) #1

declare dso_local i32 @X509_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
