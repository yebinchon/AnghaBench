; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_DeleteNatTcp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_DeleteNatTcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"LH_NAT_TCP_DELETED\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"NAT_ENTRY: DeleteNatTcp\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DeleteNatTcp(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = icmp eq %struct.TYPE_10__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = icmp eq %struct.TYPE_11__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  br label %117

13:                                               ; preds = %9
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @NLog(%struct.TYPE_10__* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 7
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %13
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 7
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* @INFINITE, align 4
  %30 = call i32 @WaitThread(i32* %28, i32 %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 7
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @ReleaseThread(i32* %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 7
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %23, %13
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 6
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 6
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @Disconnect(i32* %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 6
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @ReleaseSock(i32* %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 6
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %42, %37
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 5
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 5
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @ReleaseFifo(i32* %61)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 5
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %58, %53
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %96

70:                                               ; preds = %65
  store i64 0, i64* %5, align 8
  br label %71

71:                                               ; preds = %86, %70
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = call i64 @LIST_NUM(i32* %75)
  %77 = icmp slt i64 %72, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %71
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = call %struct.TYPE_11__* @LIST_DATA(i32* %81, i64 %82)
  store %struct.TYPE_11__* %83, %struct.TYPE_11__** %6, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %85 = call i32 @Free(%struct.TYPE_11__* %84)
  br label %86

86:                                               ; preds = %78
  %87 = load i64, i64* %5, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %5, align 8
  br label %71

89:                                               ; preds = %71
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @ReleaseList(i32* %92)
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 4
  store i32* null, i32** %95, align 8
  br label %96

96:                                               ; preds = %89, %65
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @ReleaseFifo(i32* %99)
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @ReleaseFifo(i32* %103)
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %109 = call i32 @Delete(i32 %107, %struct.TYPE_11__* %108)
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @DeleteLock(i32 %112)
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %115 = call i32 @Free(%struct.TYPE_11__* %114)
  %116 = call i32 @Debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %117

117:                                              ; preds = %96, %12
  ret void
}

declare dso_local i32 @NLog(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @WaitThread(i32*, i32) #1

declare dso_local i32 @ReleaseThread(i32*) #1

declare dso_local i32 @Disconnect(i32*) #1

declare dso_local i32 @ReleaseSock(i32*) #1

declare dso_local i32 @ReleaseFifo(i32*) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_11__* @LIST_DATA(i32*, i64) #1

declare dso_local i32 @Free(%struct.TYPE_11__*) #1

declare dso_local i32 @ReleaseList(i32*) #1

declare dso_local i32 @Delete(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @DeleteLock(i32) #1

declare dso_local i32 @Debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
