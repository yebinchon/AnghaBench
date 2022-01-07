; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_parse_satb_m4.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_parse_satb_m4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i8*, i8* }

@reg = common dso_local global i32* null, align 8
@system_hw = common dso_local global i64 0, align 8
@SYSTEM_SMS = common dso_local global i64 0, align 8
@vram = common dso_local global i8** null, align 8
@bitmap = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SYSTEM_MD = common dso_local global i64 0, align 8
@spr_ovr = common dso_local global i32 0, align 4
@object_info = common dso_local global %struct.TYPE_5__* null, align 8
@object_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_satb_m4(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %9 = load i32*, i32** @reg, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 2
  %13 = shl i32 %12, 2
  %14 = add nsw i32 8, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32*, i32** @reg, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 5
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 7
  %19 = xor i32 -16257, %18
  store i32 %19, i32* %8, align 4
  %20 = load i64, i64* @system_hw, align 8
  %21 = load i64, i64* @SYSTEM_SMS, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, 128
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %23, %1
  %27 = load i8**, i8*** @vram, align 8
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 16128
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %27, i64 %30
  store i8** %31, i8*** %4, align 8
  br label %32

32:                                               ; preds = %121, %26
  %33 = load i8**, i8*** %4, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bitmap, i32 0, i32 0, i32 0), align 4
  %41 = add nsw i32 %40, 16
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %125

44:                                               ; preds = %32
  %45 = load i32, i32* %6, align 4
  %46 = icmp sge i32 %45, 240
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, 256
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %6, align 4
  %54 = load i64, i64* @system_hw, align 8
  %55 = load i64, i64* @SYSTEM_MD, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load i32*, i32** @reg, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 1
  %62 = load i32, i32* %6, align 4
  %63 = ashr i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %57, %50
  %65 = load i32, i32* %6, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %120

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %120

71:                                               ; preds = %67
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %72, 8
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load i32, i32* %2, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32, i32* %2, align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bitmap, i32 0, i32 0, i32 0), align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 64, i32* @spr_ovr, align 4
  br label %82

82:                                               ; preds = %81, %77, %74
  br label %125

83:                                               ; preds = %71
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** @object_info, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i32 %84, i32* %89, align 8
  %90 = load i8**, i8*** %4, align 8
  %91 = load i32, i32* %3, align 4
  %92 = shl i32 %91, 1
  %93 = add nsw i32 128, %92
  %94 = load i32, i32* %8, align 4
  %95 = and i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %90, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** @object_info, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  store i8* %98, i8** %103, align 8
  %104 = load i8**, i8*** %4, align 8
  %105 = load i32, i32* %3, align 4
  %106 = shl i32 %105, 1
  %107 = add nsw i32 129, %106
  %108 = load i32, i32* %8, align 4
  %109 = and i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %104, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** @object_info, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  store i8* %112, i8** %117, align 8
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %83, %67, %64
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %3, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %3, align 4
  %124 = icmp slt i32 %123, 64
  br i1 %124, label %32, label %125

125:                                              ; preds = %121, %82, %43
  %126 = load i32, i32* %5, align 4
  store i32 %126, i32* @object_count, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
