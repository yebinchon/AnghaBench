; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_TryGetParentCertFromCertList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_TryGetParentCertFromCertList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64 }

@FIND_CERT_CHAIN_MAX_DEPTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TryGetParentCertFromCertList(i32* %0, %struct.TYPE_12__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %15 = icmp eq %struct.TYPE_12__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32*, i32** %7, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %13, %3
  store i32 0, i32* %4, align 4
  br label %84

20:                                               ; preds = %16
  %21 = load i32*, i32** %7, align 8
  %22 = call i64 @LIST_NUM(i32* %21)
  %23 = load i64, i64* @FIND_CERT_CHAIN_MAX_DEPTH, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %84

26:                                               ; preds = %20
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = call i32 @CloneX(%struct.TYPE_12__* %28)
  %30 = call i32 @Add(i32* %27, i32 %29)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %84

36:                                               ; preds = %26
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = call %struct.TYPE_12__* @FindCertIssuerFromCertList(i32* %37, %struct.TYPE_12__* %38)
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %9, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %41 = icmp eq %struct.TYPE_12__* %40, null
  br i1 %41, label %42, label %68

42:                                               ; preds = %36
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @IsEmptyStr(i32 %45)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %42
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.TYPE_12__* @DownloadCert(i32 %51)
  store %struct.TYPE_12__* %52, %struct.TYPE_12__** %9, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %55 = call i64 @CheckXEx(%struct.TYPE_12__* %53, %struct.TYPE_12__* %54, i32 1, i32 1)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %48
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %60 = call i32 @CompareX(%struct.TYPE_12__* %58, %struct.TYPE_12__* %59)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 1, i32* %10, align 4
  br label %66

63:                                               ; preds = %57, %48
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %65 = call i32 @FreeX(%struct.TYPE_12__* %64)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %9, align 8
  br label %66

66:                                               ; preds = %63, %62
  br label %67

67:                                               ; preds = %66, %42
  br label %68

68:                                               ; preds = %67, %36
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %70 = icmp ne %struct.TYPE_12__* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32*, i32** %5, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @TryGetParentCertFromCertList(i32* %72, %struct.TYPE_12__* %73, i32* %74)
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %71, %68
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %81 = call i32 @FreeX(%struct.TYPE_12__* %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %35, %25, %19
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i32 @Add(i32*, i32) #1

declare dso_local i32 @CloneX(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @FindCertIssuerFromCertList(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @IsEmptyStr(i32) #1

declare dso_local %struct.TYPE_12__* @DownloadCert(i32) #1

declare dso_local i64 @CheckXEx(%struct.TYPE_12__*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @CompareX(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @FreeX(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
