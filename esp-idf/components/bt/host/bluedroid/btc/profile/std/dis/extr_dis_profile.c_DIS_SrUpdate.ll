; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/dis/extr_dis_profile.c_DIS_SrUpdate.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/dis/extr_dis_profile.c_DIS_SrUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32**, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_9__, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@DIS_SUCCESS = common dso_local global i32 0, align 4
@DIS_ATTR_SYS_ID_BIT = common dso_local global i32 0, align 4
@dis_cb = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@DIS_ATTR_PNP_ID_BIT = common dso_local global i32 0, align 4
@DIS_ILLEGAL_PARAM = common dso_local global i32 0, align 4
@DIS_MAX_CHAR_NUM = common dso_local global i32 0, align 4
@DIS_NO_RESOURCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DIS_SrUpdate(i32 %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  store i32 1, i32* %5, align 4
  %7 = load i32, i32* @DIS_SUCCESS, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @DIS_ATTR_SYS_ID_BIT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @dis_cb, i32 0, i32 0, i32 2), align 8
  br label %123

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @DIS_ATTR_PNP_ID_BIT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %16
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @dis_cb, i32 0, i32 0, i32 1, i32 3), align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @dis_cb, i32 0, i32 0, i32 1, i32 2), align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @dis_cb, i32 0, i32 0, i32 1, i32 1), align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @dis_cb, i32 0, i32 0, i32 1, i32 0), align 8
  br label %122

38:                                               ; preds = %16
  %39 = load i32, i32* @DIS_ILLEGAL_PARAM, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %118, %38
  %41 = load i32, i32* %3, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @DIS_MAX_CHAR_NUM, align 4
  %46 = sub nsw i32 %45, 1
  %47 = icmp slt i32 %44, %46
  br label %48

48:                                               ; preds = %43, %40
  %49 = phi i1 [ false, %40 ], [ %47, %43 ]
  br i1 %49, label %50, label %121

50:                                               ; preds = %48
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %5, align 4
  %53 = shl i32 1, %52
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %118

56:                                               ; preds = %50
  %57 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @dis_cb, i32 0, i32 0, i32 0), align 8
  %58 = load i32, i32* %5, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %57, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @dis_cb, i32 0, i32 0, i32 0), align 8
  %66 = load i32, i32* %5, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %65, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @osi_free(i32* %70)
  br label %72

72:                                               ; preds = %64, %56
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  %78 = call i64 @osi_malloc(i32 %77)
  %79 = inttoptr i64 %78 to i32*
  %80 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @dis_cb, i32 0, i32 0, i32 0), align 8
  %81 = load i32, i32* %5, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %80, i64 %83
  store i32* %79, i32** %84, align 8
  %85 = icmp ne i32* %79, null
  br i1 %85, label %86, label %115

86:                                               ; preds = %72
  %87 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @dis_cb, i32 0, i32 0, i32 0), align 8
  %88 = load i32, i32* %5, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %87, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @memcpy(i32* %92, i32 %96, i32 %100)
  %102 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @dis_cb, i32 0, i32 0, i32 0), align 8
  %103 = load i32, i32* %5, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32*, i32** %102, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %107, i64 %112
  store i32 0, i32* %113, align 4
  %114 = load i32, i32* @DIS_SUCCESS, align 4
  store i32 %114, i32* %6, align 4
  br label %117

115:                                              ; preds = %72
  %116 = load i32, i32* @DIS_NO_RESOURCES, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %115, %86
  br label %121

118:                                              ; preds = %50
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %40

121:                                              ; preds = %117, %48
  br label %122

122:                                              ; preds = %121, %21
  br label %123

123:                                              ; preds = %122, %12
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local i32 @osi_free(i32*) #1

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
