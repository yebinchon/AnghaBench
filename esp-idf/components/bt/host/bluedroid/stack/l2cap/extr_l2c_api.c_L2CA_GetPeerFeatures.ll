; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_api.c_L2CA_GetPeerFeatures.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_api.c_L2CA_GetPeerFeatures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@BT_TRANSPORT_BR_EDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"L2CA_GetPeerFeatures() No BDA: %08x%04x\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"L2CA_GetPeerFeatures() BDA: %08x%04x  ExtFea: 0x%08x  Chnl_Mask[0]: 0x%02x\00", align 1
@L2CAP_FIXED_CHNL_ARRAY_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @L2CA_GetPeerFeatures(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %11 = call %struct.TYPE_3__* @l2cu_find_lcb_by_bd_addr(i32* %9, i32 %10)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %8, align 8
  %12 = icmp eq %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %42

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 24
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 16
  %22 = add nsw i32 %17, %21
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 8
  %27 = add nsw i32 %22, %26
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 8
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  %40 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %39)
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %4, align 4
  br label %89

42:                                               ; preds = %3
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 24
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 16
  %51 = add nsw i32 %46, %50
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 8
  %56 = add nsw i32 %51, %55
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %56, %59
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 8
  %65 = load i32*, i32** %5, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 5
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %64, %67
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @L2CAP_TRACE_API(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %68, i32 %71, i32 %76)
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32*, i32** %6, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* @L2CAP_FIXED_CHNL_ARRAY_SIZE, align 4
  %87 = call i32 @memcpy(i32* %82, i32* %85, i32 %86)
  %88 = load i32, i32* @TRUE, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %42, %13
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.TYPE_3__* @l2cu_find_lcb_by_bd_addr(i32*, i32) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*, i32, i32) #1

declare dso_local i32 @L2CAP_TRACE_API(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
