; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_find_ccb_by_cid.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_find_ccb_by_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32*, i64 }

@L2CAP_BASE_APPL_CID = common dso_local global i64 0, align 8
@MAX_L2CAP_CHANNELS = common dso_local global i64 0, align 8
@l2cb = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @l2cu_find_ccb_by_cid(i32* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @L2CAP_BASE_APPL_CID, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %40

11:                                               ; preds = %2
  %12 = load i64, i64* @L2CAP_BASE_APPL_CID, align 8
  %13 = load i64, i64* %5, align 8
  %14 = sub nsw i64 %13, %12
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @MAX_L2CAP_CHANNELS, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %79

19:                                               ; preds = %11
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @l2cb, i32 0, i32 0), align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %21
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %6, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  br label %39

28:                                               ; preds = %19
  %29 = load i32*, i32** %4, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  br label %38

38:                                               ; preds = %37, %31, %28
  br label %39

39:                                               ; preds = %38, %27
  br label %77

40:                                               ; preds = %2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @l2cb, i32 0, i32 0), align 8
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %6, align 8
  store i64 0, i64* %7, align 8
  br label %42

42:                                               ; preds = %68, %40
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @MAX_L2CAP_CHANNELS, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %42
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %71

64:                                               ; preds = %57, %52, %46
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 1
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** %6, align 8
  br label %67

67:                                               ; preds = %64
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %7, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %7, align 8
  br label %42

71:                                               ; preds = %63, %42
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @MAX_L2CAP_CHANNELS, align 8
  %74 = icmp sge i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %79

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76, %39
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %78, %struct.TYPE_4__** %3, align 8
  br label %79

79:                                               ; preds = %77, %75, %18
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
