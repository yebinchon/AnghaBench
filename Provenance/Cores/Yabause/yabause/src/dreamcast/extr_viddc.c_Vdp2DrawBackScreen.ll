; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_Vdp2DrawBackScreen.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_Vdp2DrawBackScreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { float, i32, float, float, i32, float, i32, float, i32, i64, i64, i64, i64, i8*, i8*, i8*, i8* }

@Vdp2Regs = common dso_local global %struct.TYPE_6__* null, align 8
@vdp2height = common dso_local global i32 0, align 4
@Vdp2Ram = common dso_local global i32 0, align 4
@op_poly_hdr = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@PVR_LIST_OP_POLY = common dso_local global i32 0, align 4
@PVR_CMD_VERTEX_EOL = common dso_local global i8* null, align 8
@vdp2width = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Vdp2DrawBackScreen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Vdp2DrawBackScreen() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 32768
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 7
  %15 = shl i32 %14, 16
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %15, %18
  %20 = shl i32 %19, 1
  store i32 %20, i32* %1, align 4
  br label %32

21:                                               ; preds = %0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 3
  %26 = shl i32 %25, 16
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %26, %29
  %31 = shl i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %32

32:                                               ; preds = %21, %10
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Vdp2Regs, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 32768
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %84

38:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %80, %38
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @vdp2height, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %83

43:                                               ; preds = %39
  %44 = load i32, i32* @Vdp2Ram, align 4
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @T1ReadWord(i32 %44, i32 %45)
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* %1, align 4
  %48 = add nsw i32 %47, 2
  store i32 %48, i32* %1, align 4
  %49 = load i32, i32* %2, align 4
  %50 = call i8* @SAT2YAB32(i32 255, i32 %49)
  store i8* %50, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @op_poly_hdr, i32 0, i32 16), align 8
  %51 = load i32, i32* @PVR_LIST_OP_POLY, align 4
  %52 = call i32 @pvr_list_prim(i32 %51, %struct.TYPE_5__* @op_poly_hdr, i32 4)
  %53 = load i8*, i8** @PVR_CMD_VERTEX_EOL, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 15
  store i8* %53, i8** %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store float 0.000000e+00, float* %55, align 8
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  store float 0x3FB99999A0000000, float* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 3
  store float 0.000000e+00, float* %60, align 4
  %61 = load i32, i32* %4, align 4
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 4
  store i32 %61, i32* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 5
  store float 0x3FB99999A0000000, float* %63, align 4
  %64 = load i8*, i8** @vdp2width, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 14
  store i8* %64, i8** %65, align 8
  %66 = load i32, i32* %4, align 4
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 6
  store i32 %66, i32* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 7
  store float 0x3FB99999A0000000, float* %68, align 4
  %69 = load i8*, i8** @vdp2width, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 13
  store i8* %69, i8** %70, align 8
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 8
  store i32 %72, i32* %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 9
  store i64 0, i64* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 10
  store i64 0, i64* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 11
  store i64 0, i64* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 12
  store i64 0, i64* %77, align 8
  %78 = load i32, i32* @PVR_LIST_OP_POLY, align 4
  %79 = call i32 @pvr_list_prim(i32 %78, %struct.TYPE_5__* %3, i32 104)
  br label %80

80:                                               ; preds = %43
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %39

83:                                               ; preds = %39
  br label %115

84:                                               ; preds = %32
  %85 = load i32, i32* @Vdp2Ram, align 4
  %86 = load i32, i32* %1, align 4
  %87 = call i32 @T1ReadWord(i32 %85, i32 %86)
  store i32 %87, i32* %2, align 4
  %88 = load i32, i32* %2, align 4
  %89 = call i8* @SAT2YAB32(i32 255, i32 %88)
  store i8* %89, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @op_poly_hdr, i32 0, i32 16), align 8
  %90 = load i32, i32* @PVR_LIST_OP_POLY, align 4
  %91 = call i32 @pvr_list_prim(i32 %90, %struct.TYPE_5__* @op_poly_hdr, i32 4)
  %92 = load i8*, i8** @PVR_CMD_VERTEX_EOL, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 15
  store i8* %92, i8** %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store float 0.000000e+00, float* %94, align 8
  %95 = load i32, i32* @vdp2height, align 4
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i32 %95, i32* %96, align 4
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  store float 0x3FB99999A0000000, float* %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 3
  store float 0.000000e+00, float* %98, align 4
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 4
  store i32 0, i32* %99, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 5
  store float 0x3FB99999A0000000, float* %100, align 4
  %101 = load i8*, i8** @vdp2width, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 14
  store i8* %101, i8** %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 6
  store i32 0, i32* %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 7
  store float 0x3FB99999A0000000, float* %104, align 4
  %105 = load i8*, i8** @vdp2width, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 13
  store i8* %105, i8** %106, align 8
  %107 = load i32, i32* @vdp2height, align 4
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 8
  store i32 %107, i32* %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 9
  store i64 0, i64* %109, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 10
  store i64 0, i64* %110, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 11
  store i64 0, i64* %111, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 12
  store i64 0, i64* %112, align 8
  %113 = load i32, i32* @PVR_LIST_OP_POLY, align 4
  %114 = call i32 @pvr_list_prim(i32 %113, %struct.TYPE_5__* %3, i32 104)
  br label %115

115:                                              ; preds = %84, %83
  ret void
}

declare dso_local i32 @T1ReadWord(i32, i32) #1

declare dso_local i8* @SAT2YAB32(i32, i32) #1

declare dso_local i32 @pvr_list_prim(i32, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
