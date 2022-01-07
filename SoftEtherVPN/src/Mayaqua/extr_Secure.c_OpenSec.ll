; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Secure.c_OpenSec.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Secure.c_OpenSec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i64*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_10__ = type { i64 (i32, i64*, i32*)* }
%struct.TYPE_11__ = type { i32 }

@SEC_ERROR_NOERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"epass\00", align 1
@INFINITE = common dso_local global i64 0, align 8
@CKR_OK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @OpenSec(i64 %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call %struct.TYPE_11__* @GetSecureDevice(i64 %7)
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = icmp eq %struct.TYPE_11__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %100

12:                                               ; preds = %1
  %13 = call %struct.TYPE_12__* @ZeroMalloc(i32 40)
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %5, align 8
  %14 = call i32 (...) @NewLock()
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @SEC_ERROR_NOERROR, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 4
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %22, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @SearchStrEx(i32 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %27 = load i64, i64* @INFINITE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %12
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %12
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = call i32 @LoadSecModule(%struct.TYPE_12__* %33)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = call i32 @CloseSec(%struct.TYPE_12__* %37)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %100

39:                                               ; preds = %32
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64 (i32, i64*, i32*)*, i64 (i32, i64*, i32*)** %45, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = call i64 %46(i32 1, i64* null, i32* %48)
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* @CKR_OK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %39
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52, %39
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = call i32 @FreeSecModule(%struct.TYPE_12__* %58)
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %61 = call i32 @CloseSec(%struct.TYPE_12__* %60)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %100

62:                                               ; preds = %52
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 8, %66
  %68 = trunc i64 %67 to i32
  %69 = call %struct.TYPE_12__* @ZeroMalloc(i32 %68)
  %70 = bitcast %struct.TYPE_12__* %69 to i64*
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  store i64* %70, i64** %72, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64 (i32, i64*, i32*)*, i64 (i32, i64*, i32*)** %76, align 8
  %78 = load i32, i32* @TRUE, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  %81 = load i64*, i64** %80, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = call i64 %77(i32 %78, i64* %81, i32* %83)
  %85 = load i64, i64* @CKR_OK, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %62
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 2
  %90 = load i64*, i64** %89, align 8
  %91 = call i32 @Free(i64* %90)
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  store i64* null, i64** %93, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %95 = call i32 @FreeSecModule(%struct.TYPE_12__* %94)
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = call i32 @CloseSec(%struct.TYPE_12__* %96)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %100

98:                                               ; preds = %62
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %99, %struct.TYPE_12__** %2, align 8
  br label %100

100:                                              ; preds = %98, %87, %57, %36, %11
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  ret %struct.TYPE_12__* %101
}

declare dso_local %struct.TYPE_11__* @GetSecureDevice(i64) #1

declare dso_local %struct.TYPE_12__* @ZeroMalloc(i32) #1

declare dso_local i32 @NewLock(...) #1

declare dso_local i64 @SearchStrEx(i32, i8*, i32, i32) #1

declare dso_local i32 @LoadSecModule(%struct.TYPE_12__*) #1

declare dso_local i32 @CloseSec(%struct.TYPE_12__*) #1

declare dso_local i32 @FreeSecModule(%struct.TYPE_12__*) #1

declare dso_local i32 @Free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
