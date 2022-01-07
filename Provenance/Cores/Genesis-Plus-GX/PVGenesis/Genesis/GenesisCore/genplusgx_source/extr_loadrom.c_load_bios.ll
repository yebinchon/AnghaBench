; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_loadrom.c_load_bios.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_loadrom.c_load_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32, i32 }

@system_hw = common dso_local global i32 0, align 4
@system_bios = common dso_local global i32 0, align 4
@region_code = common dso_local global i32 0, align 4
@CD_BIOS_US = common dso_local global i32 0, align 4
@scd = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@CD_BIOS_EU = common dso_local global i32 0, align 4
@CD_BIOS_JP = common dso_local global i32 0, align 4
@cart = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GG_BIOS = common dso_local global i32 0, align 4
@MS_BIOS_US = common dso_local global i32 0, align 4
@MS_BIOS_EU = common dso_local global i32 0, align 4
@MS_BIOS_JP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_bios() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* @system_hw, align 4
  switch i32 %3, label %120 [
    i32 130, label %4
    i32 132, label %42
    i32 131, label %42
    i32 129, label %67
    i32 128, label %67
  ]

4:                                                ; preds = %0
  %5 = load i32, i32* @system_bios, align 4
  %6 = and i32 %5, 16
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = load i32, i32* @system_bios, align 4
  %10 = and i32 %9, 12
  %11 = load i32, i32* @region_code, align 4
  %12 = ashr i32 %11, 4
  %13 = icmp ne i32 %10, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %8, %4
  %15 = load i32, i32* @region_code, align 4
  switch i32 %15, label %24 [
    i32 133, label %16
    i32 134, label %20
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @CD_BIOS_US, align 4
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scd, i32 0, i32 0), align 8
  %19 = call i32 @load_archive(i32 %17, i32* %18, i32 8, i32 0)
  store i32 %19, i32* %2, align 4
  br label %28

20:                                               ; preds = %14
  %21 = load i32, i32* @CD_BIOS_EU, align 4
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scd, i32 0, i32 0), align 8
  %23 = call i32 @load_archive(i32 %21, i32* %22, i32 8, i32 0)
  store i32 %23, i32* %2, align 4
  br label %28

24:                                               ; preds = %14
  %25 = load i32, i32* @CD_BIOS_JP, align 4
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @scd, i32 0, i32 0), align 8
  %27 = call i32 @load_archive(i32 %25, i32* %26, i32 8, i32 0)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %24, %20, %16
  %29 = load i32, i32* %2, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32, i32* @system_bios, align 4
  %33 = or i32 %32, 16
  store i32 %33, i32* @system_bios, align 4
  %34 = load i32, i32* @system_bios, align 4
  %35 = and i32 %34, 240
  %36 = load i32, i32* @region_code, align 4
  %37 = ashr i32 %36, 4
  %38 = or i32 %35, %37
  store i32 %38, i32* @system_bios, align 4
  br label %39

39:                                               ; preds = %31, %28
  %40 = load i32, i32* %2, align 4
  store i32 %40, i32* %1, align 4
  br label %121

41:                                               ; preds = %8
  store i32 -1, i32* %1, align 4
  br label %121

42:                                               ; preds = %0, %0
  %43 = load i32, i32* @system_bios, align 4
  %44 = and i32 %43, 132
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @system_bios, align 4
  %48 = and i32 %47, -134
  store i32 %48, i32* @system_bios, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cart, i32 0, i32 0), align 4
  %50 = icmp sle i32 %49, 4194304
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = load i32, i32* @GG_BIOS, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cart, i32 0, i32 1), align 4
  %54 = add nsw i32 %53, 4194304
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i32*
  %57 = call i32 @load_archive(i32 %52, i32* %56, i32 1048576, i32 0)
  store i32 %57, i32* %2, align 4
  %58 = load i32, i32* %2, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32, i32* @system_bios, align 4
  %62 = or i32 %61, 132
  store i32 %62, i32* @system_bios, align 4
  br label %63

63:                                               ; preds = %60, %51
  br label %64

64:                                               ; preds = %63, %46
  %65 = load i32, i32* %2, align 4
  store i32 %65, i32* %1, align 4
  br label %121

66:                                               ; preds = %42
  store i32 -1, i32* %1, align 4
  br label %121

67:                                               ; preds = %0, %0
  %68 = load i32, i32* @system_bios, align 4
  %69 = and i32 %68, 129
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load i32, i32* @system_bios, align 4
  %73 = and i32 %72, 12
  %74 = load i32, i32* @region_code, align 4
  %75 = ashr i32 %74, 4
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %119

77:                                               ; preds = %71, %67
  %78 = load i32, i32* @system_bios, align 4
  %79 = and i32 %78, -134
  store i32 %79, i32* @system_bios, align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cart, i32 0, i32 0), align 4
  %81 = icmp sle i32 %80, 4194304
  br i1 %81, label %82, label %117

82:                                               ; preds = %77
  %83 = load i32, i32* @region_code, align 4
  switch i32 %83, label %98 [
    i32 133, label %84
    i32 134, label %91
  ]

84:                                               ; preds = %82
  %85 = load i32, i32* @MS_BIOS_US, align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cart, i32 0, i32 1), align 4
  %87 = add nsw i32 %86, 4194304
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i32*
  %90 = call i32 @load_archive(i32 %85, i32* %89, i32 4194304, i32 0)
  store i32 %90, i32* %2, align 4
  br label %105

91:                                               ; preds = %82
  %92 = load i32, i32* @MS_BIOS_EU, align 4
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cart, i32 0, i32 1), align 4
  %94 = add nsw i32 %93, 4194304
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i32*
  %97 = call i32 @load_archive(i32 %92, i32* %96, i32 4194304, i32 0)
  store i32 %97, i32* %2, align 4
  br label %105

98:                                               ; preds = %82
  %99 = load i32, i32* @MS_BIOS_JP, align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cart, i32 0, i32 1), align 4
  %101 = add nsw i32 %100, 4194304
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i32*
  %104 = call i32 @load_archive(i32 %99, i32* %103, i32 4194304, i32 0)
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %98, %91, %84
  %106 = load i32, i32* %2, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = load i32, i32* @system_bios, align 4
  %110 = or i32 %109, 129
  store i32 %110, i32* @system_bios, align 4
  %111 = load i32, i32* @system_bios, align 4
  %112 = and i32 %111, 240
  %113 = load i32, i32* @region_code, align 4
  %114 = ashr i32 %113, 4
  %115 = or i32 %112, %114
  store i32 %115, i32* @system_bios, align 4
  br label %116

116:                                              ; preds = %108, %105
  br label %117

117:                                              ; preds = %116, %77
  %118 = load i32, i32* %2, align 4
  store i32 %118, i32* %1, align 4
  br label %121

119:                                              ; preds = %71
  store i32 -1, i32* %1, align 4
  br label %121

120:                                              ; preds = %0
  store i32 0, i32* %1, align 4
  br label %121

121:                                              ; preds = %120, %119, %117, %66, %64, %41, %39
  %122 = load i32, i32* %1, align 4
  ret i32 %122
}

declare dso_local i32 @load_archive(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
