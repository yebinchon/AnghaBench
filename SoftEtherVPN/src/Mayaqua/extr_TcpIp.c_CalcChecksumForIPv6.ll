; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_CalcChecksumForIPv6.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_CalcChecksumForIPv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@INFINITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CalcChecksumForIPv6(i8* %0, i8* %1, i32 %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_3__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [256 x i32], align 16
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %18, align 4
  %20 = load i8*, i8** %11, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = load i64, i64* %12, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %81

26:                                               ; preds = %22, %6
  %27 = load i64, i64* %13, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i64, i64* %12, align 8
  store i64 %30, i64* %13, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* @INFINITE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i64 0, i64* %13, align 8
  br label %36

36:                                               ; preds = %35, %31
  %37 = load i64, i64* %12, align 8
  %38 = add i64 %37, 16
  store i64 %38, i64* %15, align 8
  %39 = load i64, i64* %15, align 8
  %40 = icmp ugt i64 %39, 1024
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i64, i64* %15, align 8
  %43 = call i32* @Malloc(i64 %42)
  store i32* %43, i32** %14, align 8
  store i32 1, i32* %18, align 4
  br label %46

44:                                               ; preds = %36
  %45 = getelementptr inbounds [256 x i32], [256 x i32]* %19, i64 0, i64 0
  store i32* %45, i32** %14, align 8
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32*, i32** %14, align 8
  %48 = bitcast i32* %47 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %48, %struct.TYPE_3__** %16, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %50 = call i32 @Zero(%struct.TYPE_3__* %49, i32 16)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @Copy(i32* %52, i8* %53, i64 1)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @Copy(i32* %56, i8* %57, i64 1)
  %59 = load i64, i64* %13, align 8
  %60 = call i32 @Endian32(i64 %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load i32*, i32** %14, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 16
  %68 = load i8*, i8** %11, align 8
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @Copy(i32* %67, i8* %68, i64 %69)
  %71 = load i32*, i32** %14, align 8
  %72 = load i64, i64* %15, align 8
  %73 = call i32 @IpChecksum(i32* %71, i64 %72)
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %18, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %46
  %77 = load i32*, i32** %14, align 8
  %78 = call i32 @Free(i32* %77)
  br label %79

79:                                               ; preds = %76, %46
  %80 = load i32, i32* %17, align 4
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %79, %25
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32* @Malloc(i64) #1

declare dso_local i32 @Zero(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @Copy(i32*, i8*, i64) #1

declare dso_local i32 @Endian32(i64) #1

declare dso_local i32 @IpChecksum(i32*, i64) #1

declare dso_local i32 @Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
