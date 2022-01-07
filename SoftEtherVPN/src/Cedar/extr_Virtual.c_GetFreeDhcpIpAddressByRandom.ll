; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_GetFreeDhcpIpAddressByRandom.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_GetFreeDhcpIpAddressByRandom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetFreeDhcpIpAddressByRandom(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [14 x i32], align 16
  %11 = alloca [16 x i32], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = icmp eq %struct.TYPE_5__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %2
  store i64 0, i64* %3, align 8
  br label %83

20:                                               ; preds = %16
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @Endian32(i64 %23)
  store i64 %24, i64* %6, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @Endian32(i64 %27)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  store i64 0, i64* %3, align 8
  br label %83

33:                                               ; preds = %20
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %6, align 8
  %36 = sub nsw i64 %34, %35
  %37 = add nsw i64 %36, 1
  %38 = mul nsw i64 %37, 2
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i64 @MIN(i64 %39, i32 131072)
  store i64 %40, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %41

41:                                               ; preds = %79, %33
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %82

45:                                               ; preds = %41
  %46 = getelementptr inbounds [14 x i32], [14 x i32]* %10, i64 0, i64 0
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @WRITE_UINT(i32* %46, i64 %47)
  %49 = getelementptr inbounds [14 x i32], [14 x i32]* %10, i64 0, i64 0
  %50 = getelementptr inbounds i32, i32* %49, i64 8
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @Copy(i32* %50, i32* %51, i32 6)
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %54 = getelementptr inbounds [14 x i32], [14 x i32]* %10, i64 0, i64 0
  %55 = call i32 @Md5(i32* %53, i32* %54, i32 56)
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %57 = call i64 @READ_UINT(i32* %56)
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %6, align 8
  %62 = sub nsw i64 %60, %61
  %63 = add nsw i64 %62, 1
  %64 = srem i64 %59, %63
  %65 = add nsw i64 %58, %64
  %66 = call i64 @Endian32(i64 %65)
  store i64 %66, i64* %13, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = load i64, i64* %13, align 8
  %69 = call i32* @SearchDhcpLeaseByIp(%struct.TYPE_5__* %67, i64 %68)
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %45
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = load i64, i64* %13, align 8
  %74 = call i32* @SearchDhcpPendingLeaseByIp(%struct.TYPE_5__* %72, i64 %73)
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i64, i64* %13, align 8
  store i64 %77, i64* %3, align 8
  br label %83

78:                                               ; preds = %71, %45
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %8, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %8, align 8
  br label %41

82:                                               ; preds = %41
  store i64 0, i64* %3, align 8
  br label %83

83:                                               ; preds = %82, %76, %32, %19
  %84 = load i64, i64* %3, align 8
  ret i64 %84
}

declare dso_local i64 @Endian32(i64) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @WRITE_UINT(i32*, i64) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32 @Md5(i32*, i32*, i32) #1

declare dso_local i64 @READ_UINT(i32*) #1

declare dso_local i32* @SearchDhcpLeaseByIp(%struct.TYPE_5__*, i64) #1

declare dso_local i32* @SearchDhcpPendingLeaseByIp(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
