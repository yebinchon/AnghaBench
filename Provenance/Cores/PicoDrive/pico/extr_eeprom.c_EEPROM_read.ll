; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_eeprom.c_EEPROM_read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_eeprom.c_EEPROM_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32, i64 }

@Pico = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@last_write = common dso_local global i32 0, align 4
@EL_EEPROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"eeprom: early read, cycles=%i\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"eeprom: r ack\00", align 1
@SRam = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"eeprom: read: addr %02x, cycle %i, reg %02x\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"eeprom: read done, byte %02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EEPROM_read() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 4
  %9 = ashr i32 %8, 6
  %10 = call i32 @EEPROM_write_do(i32 %9)
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 4
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 1), align 4
  %13 = and i32 %12, 8191
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 2), align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 3), align 4
  store i32 %15, i32* %6, align 4
  %16 = call i32 (...) @SekCyclesDone()
  %17 = load i32, i32* @last_write, align 4
  %18 = sub i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %3, align 4
  %20 = lshr i32 %19, 6
  %21 = and i32 %20, 1
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, 128
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %0
  %26 = load i32, i32* %7, align 4
  %27 = icmp uge i32 %26, 24
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* @EL_EEPROM, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 (i32, i8*, ...) @elprintf(i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %28, %25, %0
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  br label %128

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 9
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 18
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 27
  br i1 %47, label %48, label %51

48:                                               ; preds = %45, %42, %39
  %49 = load i32, i32* @EL_EEPROM, align 4
  %50 = call i32 (i32, i8*, ...) @elprintf(i32 %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %127

51:                                               ; preds = %45
  %52 = load i32, i32* %5, align 4
  %53 = icmp ugt i32 %52, 9
  br i1 %53, label %54, label %126

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = icmp ult i32 %55, 18
  br i1 %56, label %57, label %126

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = sub i32 17, %58
  store i32 %59, i32* %1, align 4
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 2), align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %92

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, 1
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %91

66:                                               ; preds = %62
  %67 = load i32, i32* @EL_EEPROM, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %3, align 4
  %71 = call i32 (i32, i8*, ...) @elprintf(i32 %67, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* %1, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %66
  %75 = load i32, i32* @EL_EEPROM, align 4
  %76 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 0), align 8
  %77 = load i32, i32* %4, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i32, i8*, ...) @elprintf(i32 %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %74, %66
  %83 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 0), align 8
  %84 = load i32, i32* %4, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %1, align 4
  %89 = lshr i32 %87, %88
  %90 = and i32 %89, 1
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %82, %62
  br label %125

92:                                               ; preds = %57
  %93 = load i32, i32* %4, align 4
  %94 = and i32 %93, 1
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %124

96:                                               ; preds = %92
  %97 = load i32, i32* @EL_EEPROM, align 4
  %98 = load i32, i32* %4, align 4
  %99 = lshr i32 %98, 1
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %3, align 4
  %102 = call i32 (i32, i8*, ...) @elprintf(i32 %97, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* %1, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %96
  %106 = load i32, i32* @EL_EEPROM, align 4
  %107 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 0), align 8
  %108 = load i32, i32* %4, align 4
  %109 = lshr i32 %108, 1
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i32, i8*, ...) @elprintf(i32 %106, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %105, %96
  %115 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 0), align 8
  %116 = load i32, i32* %4, align 4
  %117 = lshr i32 %116, 1
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %1, align 4
  %122 = lshr i32 %120, %121
  %123 = and i32 %122, 1
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %114, %92
  br label %125

125:                                              ; preds = %124, %91
  br label %126

126:                                              ; preds = %125, %54, %51
  br label %127

127:                                              ; preds = %126, %48
  br label %128

128:                                              ; preds = %127, %38
  %129 = load i32, i32* %2, align 4
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 1), align 8
  %131 = shl i32 %129, %130
  ret i32 %131
}

declare dso_local i32 @EEPROM_write_do(i32) #1

declare dso_local i32 @SekCyclesDone(...) #1

declare dso_local i32 @elprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
