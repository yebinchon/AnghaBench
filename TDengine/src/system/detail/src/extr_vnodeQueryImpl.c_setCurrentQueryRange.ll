; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_setCurrentQueryRange.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_setCurrentQueryRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [81 x i8] c"QInfo:%p vid:%d sid:%d id:%s, no result in files, qrange:%lld-%lld, lastKey:%lld\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"QInfo:%p vid:%d sid:%d id:%s, query in files, qrange:%lld-%lld, lastKey:%lld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32, i32*, i32*)* @setCurrentQueryRange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setCurrentQueryRange(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i64 @GET_QINFO_ADDR(i32* %15)
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %12, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %13, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %14, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i64 @QUERY_IS_ASC_QUERY(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %5
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %10, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32*, i32** %11, align 8
  store i32 %32, i32* %33, align 4
  br label %41

34:                                               ; preds = %5
  %35 = load i32, i32* %9, align 4
  %36 = load i32*, i32** %10, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %11, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %34, %27
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %43, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %41
  %48 = load i32*, i32** %12, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @qTrace(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32* %48, i32 %51, i32 %54, i32 %57, i32 %60, i32 %63, i32 %66)
  store i32 0, i32* %6, align 4
  br label %89

68:                                               ; preds = %41
  %69 = load i32*, i32** %12, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @qTrace(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32* %69, i32 %72, i32 %75, i32 %78, i32 %81, i32 %84, i32 %87)
  store i32 1, i32* %6, align 4
  br label %89

89:                                               ; preds = %68, %47
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i64 @GET_QINFO_ADDR(i32*) #1

declare dso_local i64 @QUERY_IS_ASC_QUERY(i32*) #1

declare dso_local i32 @qTrace(i8*, i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
