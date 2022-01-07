; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_parse_satb_tms.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_parse_satb_tms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i8*, i8*, i8* }

@reg = common dso_local global i32* null, align 8
@vram = common dso_local global i8** null, align 8
@bitmap = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@spr_ovr = common dso_local global i32 0, align 4
@object_info = common dso_local global %struct.TYPE_5__* null, align 8
@object_count = common dso_local global i32 0, align 4
@status = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_satb_tms(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = load i32*, i32** @reg, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 16
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %128, label %13

13:                                               ; preds = %1
  %14 = load i8**, i8*** @vram, align 8
  %15 = load i32*, i32** @reg, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 5
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 7
  %19 = and i32 %18, 16256
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %14, i64 %20
  store i8** %21, i8*** %5, align 8
  store i32 8, i32* %7, align 4
  %22 = load i32*, i32** @reg, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 2
  %26 = ashr i32 %25, 1
  %27 = load i32, i32* %7, align 4
  %28 = shl i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32*, i32** @reg, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 1
  %33 = load i32, i32* %7, align 4
  %34 = shl i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %123, %13
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32, i32* %3, align 4
  %38 = shl i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %36, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = ptrtoint i8* %41 to i32
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 208
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %127

46:                                               ; preds = %35
  %47 = load i32, i32* %6, align 4
  %48 = icmp sge i32 %47, 224
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 256
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sub nsw i32 %53, %54
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %122

58:                                               ; preds = %52
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %122

62:                                               ; preds = %58
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %63, 4
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bitmap, i32 0, i32 0, i32 0), align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 64, i32* @spr_ovr, align 4
  br label %70

70:                                               ; preds = %69, %65
  br label %127

71:                                               ; preds = %62
  %72 = load i32*, i32** @reg, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 1
  %76 = load i32, i32* %6, align 4
  %77 = ashr i32 %76, %75
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** @object_info, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i32 %78, i32* %83, align 8
  %84 = load i8**, i8*** %5, align 8
  %85 = load i32, i32* %3, align 4
  %86 = shl i32 %85, 2
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %84, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** @object_info, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 3
  store i8* %90, i8** %95, align 8
  %96 = load i8**, i8*** %5, align 8
  %97 = load i32, i32* %3, align 4
  %98 = shl i32 %97, 2
  %99 = add nsw i32 %98, 2
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %96, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** @object_info, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  store i8* %102, i8** %107, align 8
  %108 = load i8**, i8*** %5, align 8
  %109 = load i32, i32* %3, align 4
  %110 = shl i32 %109, 2
  %111 = add nsw i32 %110, 3
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %108, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** @object_info, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  store i8* %114, i8** %119, align 8
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %71, %58, %52
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %3, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %3, align 4
  %126 = icmp slt i32 %125, 32
  br i1 %126, label %35, label %127

127:                                              ; preds = %123, %70, %45
  br label %128

128:                                              ; preds = %127, %1
  %129 = load i32, i32* %4, align 4
  store i32 %129, i32* @object_count, align 4
  %130 = load i32, i32* @status, align 4
  %131 = and i32 %130, 224
  %132 = load i32, i32* %3, align 4
  %133 = and i32 %132, 31
  %134 = or i32 %131, %133
  store i32 %134, i32* @status, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
