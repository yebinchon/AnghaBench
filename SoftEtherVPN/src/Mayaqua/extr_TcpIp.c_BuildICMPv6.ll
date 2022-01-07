; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_BuildICMPv6.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_BuildICMPv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i8* }

@IP_PROTO_ICMPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @BuildICMPv6(i32* %0, i32* %1, i8* %2, i8* %3, i8* %4, i8* %5, i64 %6, i64 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %8
  %24 = load i32*, i32** %11, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %15, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23, %8
  store i32* null, i32** %9, align 8
  br label %69

30:                                               ; preds = %26
  %31 = load i64, i64* %16, align 8
  %32 = add i64 24, %31
  %33 = call %struct.TYPE_6__* @ZeroMalloc(i64 %32)
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %18, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %35 = bitcast %struct.TYPE_6__* %34 to i8**
  %36 = getelementptr inbounds i8*, i8** %35, i64 24
  %37 = bitcast i8** %36 to i8*
  store i8* %37, i8** %19, align 8
  %38 = load i8*, i8** %19, align 8
  %39 = load i8*, i8** %15, align 8
  %40 = load i64, i64* %16, align 8
  %41 = call i32 @Copy(i8* %38, i8* %39, i64 %40)
  %42 = load i8*, i8** %13, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* @IP_PROTO_ICMPV6, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %52 = load i64, i64* %16, align 8
  %53 = add i64 24, %52
  %54 = call i32 @CalcChecksumForIPv6(i32* %48, i32* %49, i32 %50, %struct.TYPE_6__* %51, i64 %53, i32 0)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = load i64, i64* %17, align 8
  %60 = load i32, i32* @IP_PROTO_ICMPV6, align 4
  %61 = load i8*, i8** %12, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %63 = load i64, i64* %16, align 8
  %64 = add i64 24, %63
  %65 = call i32* @BuildIPv6(i32* %57, i32* %58, i64 %59, i32 %60, i8* %61, %struct.TYPE_6__* %62, i64 %64)
  store i32* %65, i32** %20, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %67 = call i32 @Free(%struct.TYPE_6__* %66)
  %68 = load i32*, i32** %20, align 8
  store i32* %68, i32** %9, align 8
  br label %69

69:                                               ; preds = %30, %29
  %70 = load i32*, i32** %9, align 8
  ret i32* %70
}

declare dso_local %struct.TYPE_6__* @ZeroMalloc(i64) #1

declare dso_local i32 @Copy(i8*, i8*, i64) #1

declare dso_local i32 @CalcChecksumForIPv6(i32*, i32*, i32, %struct.TYPE_6__*, i64, i32) #1

declare dso_local i32* @BuildIPv6(i32*, i32*, i64, i32, i8*, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @Free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
