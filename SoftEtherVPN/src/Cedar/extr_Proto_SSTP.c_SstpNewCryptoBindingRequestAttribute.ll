; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_SSTP.c_SstpNewCryptoBindingRequestAttribute.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_SSTP.c_SstpNewCryptoBindingRequestAttribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@SSTP_NONCE_SIZE = common dso_local global i32 0, align 4
@SSTP_ATTRIB_CRYPTO_BINDING_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SstpNewCryptoBindingRequestAttribute(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = call %struct.TYPE_5__* (...) @NewBuf()
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %7, align 8
  store i64 0, i64* %6, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %10 = call i32 @WriteBuf(%struct.TYPE_5__* %9, i64* %6, i32 1)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %12 = call i32 @WriteBuf(%struct.TYPE_5__* %11, i64* %6, i32 1)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %14 = call i32 @WriteBuf(%struct.TYPE_5__* %13, i64* %6, i32 1)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %16 = call i32 @WriteBuf(%struct.TYPE_5__* %15, i64* %3, i32 1)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = load i64*, i64** %4, align 8
  %19 = load i32, i32* @SSTP_NONCE_SIZE, align 4
  %20 = call i32 @WriteBuf(%struct.TYPE_5__* %17, i64* %18, i32 %19)
  %21 = load i32, i32* @SSTP_ATTRIB_CRYPTO_BINDING_REQ, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @SstpNewAttribute(i32 %21, i32 %24, i32 %27)
  store i32* %28, i32** %5, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = call i32 @FreeBuf(%struct.TYPE_5__* %29)
  %31 = load i32*, i32** %5, align 8
  ret i32* %31
}

declare dso_local %struct.TYPE_5__* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_5__*, i64*, i32) #1

declare dso_local i32* @SstpNewAttribute(i32, i32, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
