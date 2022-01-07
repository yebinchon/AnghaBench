; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_CalcChecksumForIPv4.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_CalcChecksumForIPv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i64, i64 }

@INFINITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CalcChecksumForIPv4(i64 %0, i64 %1, i32 %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_2__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [1600 x i32], align 16
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
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
  br label %83

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
  %38 = add i64 %37, 32
  store i64 %38, i64* %15, align 8
  %39 = load i64, i64* %15, align 8
  %40 = icmp ugt i64 %39, 6400
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i64, i64* %15, align 8
  %43 = call i32* @Malloc(i64 %42)
  store i32* %43, i32** %14, align 8
  store i32 1, i32* %18, align 4
  br label %46

44:                                               ; preds = %36
  %45 = getelementptr inbounds [1600 x i32], [1600 x i32]* %19, i64 0, i64 0
  store i32* %45, i32** %14, align 8
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32*, i32** %14, align 8
  %48 = bitcast i32* %47 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %48, %struct.TYPE_2__** %16, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  %55 = load i64, i64* %13, align 8
  %56 = call i32 @Endian16(i64 %55)
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load i64, i64* %12, align 8
  %65 = icmp sge i64 %64, 1
  br i1 %65, label %66, label %72

66:                                               ; preds = %46
  %67 = load i32*, i32** %14, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 32
  %69 = load i8*, i8** %11, align 8
  %70 = load i64, i64* %12, align 8
  %71 = call i32 @Copy(i32* %68, i8* %69, i64 %70)
  br label %72

72:                                               ; preds = %66, %46
  %73 = load i32*, i32** %14, align 8
  %74 = load i64, i64* %15, align 8
  %75 = call i32 @IpChecksum(i32* %73, i64 %74)
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %18, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32*, i32** %14, align 8
  %80 = call i32 @Free(i32* %79)
  br label %81

81:                                               ; preds = %78, %72
  %82 = load i32, i32* %17, align 4
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %81, %25
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i32* @Malloc(i64) #1

declare dso_local i32 @Endian16(i64) #1

declare dso_local i32 @Copy(i32*, i8*, i64) #1

declare dso_local i32 @IpChecksum(i32*, i64) #1

declare dso_local i32 @Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
