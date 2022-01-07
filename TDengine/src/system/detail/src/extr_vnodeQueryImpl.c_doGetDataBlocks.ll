; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_doGetDataBlocks.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_doGetDataBlocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__**, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct.TYPE_9__*, i8*, i64, i64, i32, i32, i64)* @doGetDataBlocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @doGetDataBlocks(i32 %0, %struct.TYPE_9__* %1, i8* %2, i64 %3, i64 %4, i32 %5, i32 %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %9, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i64 %7, i64* %16, align 8
  store i8* null, i8** %17, align 8
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %8
  %23 = load i8*, i8** %11, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i8* @doGetDataBlockImpl(i8* %23, i64 %24, i32 %25)
  store i8* %26, i8** %17, align 8
  br label %73

27:                                               ; preds = %8
  %28 = load i8*, i8** %11, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %18, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %19, align 8
  %33 = load i64, i64* %12, align 8
  %34 = icmp ult i64 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %27
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp ule i64 %38, %39
  br i1 %40, label %51, label %41

41:                                               ; preds = %35
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = load i64, i64* %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %13, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %41, %35, %27
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %53, align 8
  %55 = load i64, i64* %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %54, i64 %55
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %17, align 8
  %60 = load i8*, i8** %17, align 8
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @setNullN(i8* %60, i32 %61, i32 %62, i32 %65)
  br label %72

67:                                               ; preds = %41
  %68 = load i8*, i8** %11, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i8* @doGetDataBlockImpl(i8* %68, i64 %69, i32 %70)
  store i8* %71, i8** %17, align 8
  br label %72

72:                                               ; preds = %67, %51
  br label %73

73:                                               ; preds = %72, %22
  %74 = load i8*, i8** %17, align 8
  ret i8* %74
}

declare dso_local i8* @doGetDataBlockImpl(i8*, i64, i32) #1

declare dso_local i32 @setNullN(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
