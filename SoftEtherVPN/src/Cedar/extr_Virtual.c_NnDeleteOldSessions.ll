; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnDeleteOldSessions.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnDeleteOldSessions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_12__ = type { i64, i64, i64 }

@NAT_TCP_CONNECTED = common dso_local global i64 0, align 8
@NAT_TCP_ESTABLISHED = common dso_local global i64 0, align 8
@NAT_TCP = common dso_local global i64 0, align 8
@NN_TIMEOUT_FOR_UNESTBALISHED_TCP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NnDeleteOldSessions(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %10 = icmp eq %struct.TYPE_13__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %115

12:                                               ; preds = %1
  store i32* null, i32** %4, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  store i64 0, i64* %3, align 8
  br label %18

18:                                               ; preds = %90, %12
  %19 = load i64, i64* %3, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @LIST_NUM(i32* %24)
  %26 = icmp slt i64 %19, %25
  br i1 %26, label %27, label %93

27:                                               ; preds = %18
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = call %struct.TYPE_12__* @LIST_DATA(i32* %32, i64 %33)
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %6, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NAT_TCP_CONNECTED, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %27
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NAT_TCP_ESTABLISHED, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %40, %27
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NAT_TCP, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  br label %67

61:                                               ; preds = %46
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  br label %67

67:                                               ; preds = %61, %55
  %68 = phi i64 [ %60, %55 ], [ %66, %61 ]
  %69 = add nsw i64 %49, %68
  store i64 %69, i64* %7, align 8
  br label %76

70:                                               ; preds = %40
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @NN_TIMEOUT_FOR_UNESTBALISHED_TCP, align 8
  %75 = add nsw i64 %73, %74
  store i64 %75, i64* %7, align 8
  br label %76

76:                                               ; preds = %70, %67
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %5, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load i32*, i32** %4, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i32* @NewListFast(i32* null)
  store i32* %84, i32** %4, align 8
  br label %85

85:                                               ; preds = %83, %80
  %86 = load i32*, i32** %4, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %88 = call i32 @Add(i32* %86, %struct.TYPE_12__* %87)
  br label %89

89:                                               ; preds = %85, %76
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %3, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %3, align 8
  br label %18

93:                                               ; preds = %18
  %94 = load i32*, i32** %4, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %115

96:                                               ; preds = %93
  store i64 0, i64* %3, align 8
  br label %97

97:                                               ; preds = %109, %96
  %98 = load i64, i64* %3, align 8
  %99 = load i32*, i32** %4, align 8
  %100 = call i64 @LIST_NUM(i32* %99)
  %101 = icmp slt i64 %98, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load i32*, i32** %4, align 8
  %104 = load i64, i64* %3, align 8
  %105 = call %struct.TYPE_12__* @LIST_DATA(i32* %103, i64 %104)
  store %struct.TYPE_12__* %105, %struct.TYPE_12__** %8, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %108 = call i32 @NnDeleteSession(%struct.TYPE_13__* %106, %struct.TYPE_12__* %107)
  br label %109

109:                                              ; preds = %102
  %110 = load i64, i64* %3, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %3, align 8
  br label %97

112:                                              ; preds = %97
  %113 = load i32*, i32** %4, align 8
  %114 = call i32 @ReleaseList(i32* %113)
  br label %115

115:                                              ; preds = %11, %112, %93
  ret void
}

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_12__* @LIST_DATA(i32*, i64) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32 @Add(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @NnDeleteSession(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @ReleaseList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
