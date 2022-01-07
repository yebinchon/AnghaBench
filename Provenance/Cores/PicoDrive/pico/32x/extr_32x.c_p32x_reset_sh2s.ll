; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_32x.c_p32x_reset_sh2s.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_32x.c_p32x_reset_sh2s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i16* }

@EL_32X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"sh2 reset\00", align 1
@msh2 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@ssh2 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@p32x_bios_m = common dso_local global i32* null, align 8
@Pico = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@EL_STATUS = common dso_local global i32 0, align 4
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"32x: invalid initial data ptrs: %06x -> %06x, %06x\00", align 1
@Pico32xMem = common dso_local global %struct.TYPE_9__* null, align 8
@Pico32x = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@p32x_bios_s = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p32x_reset_sh2s() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @EL_32X, align 4
  %7 = call i32 (i32, i8*, ...) @elprintf(i32 %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @sh2_reset(%struct.TYPE_8__* @msh2)
  %9 = call i32 @sh2_reset(%struct.TYPE_8__* @ssh2)
  %10 = call i32 @sh2_peripheral_reset(%struct.TYPE_8__* @msh2)
  %11 = call i32 @sh2_peripheral_reset(%struct.TYPE_8__* @ssh2)
  %12 = load i32*, i32** @p32x_bios_m, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %93

14:                                               ; preds = %0
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico, i32 0, i32 1), align 8
  %16 = add nsw i64 %15, 980
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @HWSWAP(i32 %18)
  %20 = and i32 %19, 268435455
  store i32 %20, i32* %1, align 4
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico, i32 0, i32 1), align 8
  %22 = add nsw i64 %21, 984
  %23 = inttoptr i64 %22 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @HWSWAP(i32 %24)
  %26 = and i32 %25, 268435455
  store i32 %26, i32* %2, align 4
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico, i32 0, i32 1), align 8
  %28 = add nsw i64 %27, 988
  %29 = inttoptr i64 %28 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @HWSWAP(i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico, i32 0, i32 0), align 8
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %57, label %35

35:                                               ; preds = %14
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* %3, align 4
  %38 = add i32 %36, %37
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico, i32 0, i32 0), align 8
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %57, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %3, align 4
  %43 = icmp ugt i32 %42, 262144
  br i1 %43, label %57, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* %3, align 4
  %47 = add i32 %45, %46
  %48 = icmp ugt i32 %47, 262144
  br i1 %48, label %57, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %1, align 4
  %51 = and i32 %50, 3
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %2, align 4
  %55 = and i32 %54, 3
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %53, %49, %44, %41, %35, %14
  %58 = load i32, i32* @EL_STATUS, align 4
  %59 = load i32, i32* @EL_ANOMALY, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %1, align 4
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 (i32, i8*, ...) @elprintf(i32 %60, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62, i32 %63)
  br label %78

65:                                               ; preds = %53
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Pico32xMem, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %2, align 4
  %70 = zext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico, i32 0, i32 1), align 8
  %73 = load i32, i32* %1, align 4
  %74 = zext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @memcpy(i64 %71, i64 %75, i32 %76)
  br label %78

78:                                               ; preds = %65, %57
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico, i32 0, i32 1), align 8
  %80 = add nsw i64 %79, 1000
  %81 = inttoptr i64 %80 to i32*
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @HWSWAP(i32 %82)
  store i32 %83, i32* %4, align 4
  %84 = call i32 @sh2_set_gbr(i32 0, i32 536887296)
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @sh2_set_vbr(i32 0, i32 %85)
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico, i32 0, i32 1), align 8
  %88 = add nsw i64 %87, 398
  %89 = inttoptr i64 %88 to i16*
  %90 = load i16, i16* %89, align 2
  %91 = load i16*, i16** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Pico32x, i32 0, i32 0), align 8
  %92 = getelementptr inbounds i16, i16* %91, i64 20
  store i16 %90, i16* %92, align 2
  br label %93

93:                                               ; preds = %78, %0
  %94 = load i32*, i32** @p32x_bios_s, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Pico, i32 0, i32 1), align 8
  %98 = add nsw i64 %97, 1004
  %99 = inttoptr i64 %98 to i32*
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @HWSWAP(i32 %100)
  store i32 %101, i32* %5, align 4
  %102 = call i32 @sh2_set_gbr(i32 1, i32 536887296)
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @sh2_set_vbr(i32 1, i32 %103)
  br label %105

105:                                              ; preds = %96, %93
  %106 = call i32 (...) @SekCyclesDone()
  store i32 %106, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ssh2, i32 0, i32 0), align 4
  store i32 %106, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @msh2, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, ...) #1

declare dso_local i32 @sh2_reset(%struct.TYPE_8__*) #1

declare dso_local i32 @sh2_peripheral_reset(%struct.TYPE_8__*) #1

declare dso_local i32 @HWSWAP(i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @sh2_set_gbr(i32, i32) #1

declare dso_local i32 @sh2_set_vbr(i32, i32) #1

declare dso_local i32 @SekCyclesDone(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
