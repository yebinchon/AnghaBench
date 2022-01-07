; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/extr_carthw.c_carthw_realtec_write8.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/extr_carthw.c_carthw_realtec_write8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@realtec_bank = common dso_local global i32 0, align 4
@realtec_size = common dso_local global i32 0, align 4
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"write [%06x] %02x @ %06x\00", align 1
@SekPc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"realtec: unexpected write [%06x] %02x @ %06x\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"realtec: new bank %06x, size %06x\00", align 1
@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"realtec: bank too large / out of range?\00", align 1
@m68k_read8_map = common dso_local global i32 0, align 4
@m68k_read16_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @carthw_realtec_write8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carthw_realtec_write8(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @realtec_bank, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @realtec_size, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 4194304
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load i32, i32* @realtec_bank, align 4
  %14 = and i32 %13, 917504
  store i32 %14, i32* @realtec_bank, align 4
  %15 = load i32, i32* %4, align 4
  %16 = shl i32 %15, 19
  %17 = and i32 3145728, %16
  %18 = load i32, i32* @realtec_bank, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* @realtec_bank, align 4
  %20 = load i32, i32* @realtec_bank, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %12
  %24 = load i32, i32* @EL_ANOMALY, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @SekPc, align 4
  %28 = call i32 (i32, i8*, ...) @elprintf(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %23, %12
  br label %76

30:                                               ; preds = %2
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 4202496
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = shl i32 %34, 17
  %36 = and i32 %35, 4063232
  store i32 %36, i32* @realtec_size, align 4
  %37 = load i32, i32* @realtec_size, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i32, i32* @EL_ANOMALY, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @SekPc, align 4
  %45 = call i32 (i32, i8*, ...) @elprintf(i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %33
  br label %75

47:                                               ; preds = %30
  %48 = load i32, i32* %3, align 4
  %49 = icmp eq i32 %48, 4210688
  br i1 %49, label %50, label %68

50:                                               ; preds = %47
  %51 = load i32, i32* @realtec_bank, align 4
  %52 = and i32 %51, 3145728
  store i32 %52, i32* @realtec_bank, align 4
  %53 = load i32, i32* %4, align 4
  %54 = shl i32 %53, 17
  %55 = and i32 917504, %54
  %56 = load i32, i32* @realtec_bank, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* @realtec_bank, align 4
  %58 = load i32, i32* @realtec_bank, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %50
  %62 = load i32, i32* @EL_ANOMALY, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @SekPc, align 4
  %66 = call i32 (i32, i8*, ...) @elprintf(i32 %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %61, %50
  br label %74

68:                                               ; preds = %47
  %69 = load i32, i32* @EL_ANOMALY, align 4
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @SekPc, align 4
  %73 = call i32 (i32, i8*, ...) @elprintf(i32 %69, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %68, %67
  br label %75

75:                                               ; preds = %74, %46
  br label %76

76:                                               ; preds = %75, %29
  %77 = load i32, i32* @realtec_bank, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %132

79:                                               ; preds = %76
  %80 = load i32, i32* @realtec_size, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %132

82:                                               ; preds = %79
  %83 = load i32, i32* @realtec_bank, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* @realtec_size, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %132

90:                                               ; preds = %86, %82
  %91 = load i32, i32* @EL_ANOMALY, align 4
  %92 = load i32, i32* @realtec_bank, align 4
  %93 = load i32, i32* @realtec_size, align 4
  %94 = load i32, i32* @SekPc, align 4
  %95 = call i32 (i32, i8*, ...) @elprintf(i32 %91, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* @realtec_size, align 4
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %98 = load i32, i32* @realtec_bank, align 4
  %99 = sub nsw i32 %97, %98
  %100 = icmp sgt i32 %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %90
  %102 = load i32, i32* @EL_ANOMALY, align 4
  %103 = call i32 (i32, i8*, ...) @elprintf(i32 %102, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %132

104:                                              ; preds = %90
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %127, %104
  %106 = load i32, i32* %5, align 4
  %107 = icmp slt i32 %106, 4194304
  br i1 %107, label %108, label %131

108:                                              ; preds = %105
  %109 = load i32, i32* @m68k_read8_map, align 4
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @realtec_size, align 4
  %112 = sub nsw i32 %111, 1
  %113 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1), align 8
  %114 = load i32, i32* @realtec_bank, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %113, %115
  %117 = call i32 @cpu68k_map_set(i32 %109, i32 %110, i32 %112, i64 %116, i32 0)
  %118 = load i32, i32* @m68k_read16_map, align 4
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @realtec_size, align 4
  %121 = sub nsw i32 %120, 1
  %122 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1), align 8
  %123 = load i32, i32* @realtec_bank, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %122, %124
  %126 = call i32 @cpu68k_map_set(i32 %118, i32 %119, i32 %121, i64 %125, i32 0)
  br label %127

127:                                              ; preds = %108
  %128 = load i32, i32* @realtec_size, align 4
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %5, align 4
  br label %105

131:                                              ; preds = %105
  br label %132

132:                                              ; preds = %101, %131, %86, %79, %76
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, ...) #1

declare dso_local i32 @cpu68k_map_set(i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
