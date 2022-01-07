; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_DhcpBuildClasslessRouteData.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_DhcpBuildClasslessRouteData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }

@MAX_DHCP_CLASSLESS_ROUTE_ENTRIES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @DhcpBuildClasslessRouteData(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [4 x i64], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = icmp eq %struct.TYPE_4__* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %1
  store i32* null, i32** %2, align 8
  br label %78

19:                                               ; preds = %13
  %20 = call i32* (...) @NewBuf()
  store i32* %20, i32** %4, align 8
  store i64 0, i64* %5, align 8
  br label %21

21:                                               ; preds = %71, %19
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @MAX_DHCP_CLASSLESS_ROUTE_ENTRIES, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %74

25:                                               ; preds = %21
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %29
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %6, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %70

35:                                               ; preds = %25
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sle i32 %38, 32
  br i1 %39, label %40, label %70

40:                                               ; preds = %35
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %7, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @WriteBuf(i32* %45, i64* %7, i32 1)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 7
  %51 = sdiv i32 %50, 8
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %8, align 8
  %53 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %54 = call i32 @Zero(i64* %53, i32 32)
  %55 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @Copy(i64* %55, i32* %57, i64 %58)
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %62 = load i64, i64* %8, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @WriteBuf(i32* %60, i64* %61, i32 %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = call i64 @IPToUINT(i32* %66)
  store i64 %67, i64* %9, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @WriteBuf(i32* %68, i64* %9, i32 8)
  br label %70

70:                                               ; preds = %40, %35, %25
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %5, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %5, align 8
  br label %21

74:                                               ; preds = %21
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @SeekBufToBegin(i32* %75)
  %77 = load i32*, i32** %4, align 8
  store i32* %77, i32** %2, align 8
  br label %78

78:                                               ; preds = %74, %18
  %79 = load i32*, i32** %2, align 8
  ret i32* %79
}

declare dso_local i32* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(i32*, i64*, i32) #1

declare dso_local i32 @Zero(i64*, i32) #1

declare dso_local i32 @Copy(i64*, i32*, i64) #1

declare dso_local i64 @IPToUINT(i32*) #1

declare dso_local i32 @SeekBufToBegin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
