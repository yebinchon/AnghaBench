; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Radius.c_NewEapClient.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Radius.c_NewEapClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32 }

@RADIUS_RETRY_INTERVAL = common dso_local global i64 0, align 8
@RADIUS_RETRY_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @NewEapClient(i32* %0, i64 %1, i8* %2, i64 %3, i64 %4, i8* %5, i8* %6, i8* %7) #0 {
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  br label %83

22:                                               ; preds = %8
  %23 = load i64, i64* %13, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i64, i64* @RADIUS_RETRY_INTERVAL, align 8
  store i64 %26, i64* %13, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i64, i64* %14, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i64, i64* @RADIUS_RETRY_TIMEOUT, align 8
  store i64 %31, i64* %14, align 8
  br label %32

32:                                               ; preds = %30, %27
  %33 = call %struct.TYPE_4__* @ZeroMalloc(i32 72)
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %18, align 8
  %34 = call i32 (...) @NewRef()
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 12
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @IsIP6(i32* %39)
  %41 = call i32 @NewUDPEx(i32 0, i32 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 11
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 10
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @Copy(i32* %45, i32* %46, i32 4)
  %48 = load i64, i64* %11, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 9
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 8
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %14, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 7
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 @StrCpy(i32 %59, i32 4, i8* %60)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load i8*, i8** %17, align 8
  %66 = call i32 @StrCpy(i32 %64, i32 4, i8* %65)
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %15, align 8
  %71 = call i32 @StrCpy(i32 %69, i32 4, i8* %70)
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load i8*, i8** %16, align 8
  %76 = call i32 @StrCpy(i32 %74, i32 4, i8* %75)
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = call i32 (...) @NewBuf()
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %82, %struct.TYPE_4__** %9, align 8
  br label %83

83:                                               ; preds = %32, %21
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  ret %struct.TYPE_4__* %84
}

declare dso_local %struct.TYPE_4__* @ZeroMalloc(i32) #1

declare dso_local i32 @NewRef(...) #1

declare dso_local i32 @NewUDPEx(i32, i32) #1

declare dso_local i32 @IsIP6(i32*) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @NewBuf(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
