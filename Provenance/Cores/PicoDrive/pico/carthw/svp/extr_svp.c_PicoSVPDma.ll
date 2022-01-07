; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_svp.c_PicoSVPDma.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_svp.c_PicoSVPDma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i64 }

@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EL_VDPDMA = common dso_local global i32 0, align 4
@EL_SVP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"SVP DmaSlow from %06x, len=%i\00", align 1
@svp = common dso_local global %struct.TYPE_3__* null, align 8
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"SVP FIXME unhandled DmaSlow from %06x, len=%i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i16**, i16**)* @PicoSVPDma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PicoSVPDma(i32 %0, i32 %1, i16** %2, i16** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16**, align 8
  %9 = alloca i16**, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i16** %2, i16*** %8, align 8
  store i16** %3, i16*** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0), align 8
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %4
  %14 = load i32, i32* %6, align 4
  %15 = sub i32 %14, 2
  store i32 %15, i32* %6, align 4
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 1), align 8
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, -2
  %19 = zext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = inttoptr i64 %20 to i16*
  %22 = load i16**, i16*** %8, align 8
  store i16* %21, i16** %22, align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 1), align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0), align 8
  %25 = zext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = inttoptr i64 %26 to i16*
  %28 = load i16**, i16*** %9, align 8
  store i16* %27, i16** %28, align 8
  store i32 1, i32* %5, align 4
  br label %69

29:                                               ; preds = %4
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 16646144
  %32 = icmp eq i32 %31, 3145728
  br i1 %32, label %33, label %58

33:                                               ; preds = %29
  %34 = load i32, i32* @EL_VDPDMA, align 4
  %35 = load i32, i32* @EL_SVP, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @elprintf(i32 %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 131070
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sub i32 %42, 2
  store i32 %43, i32* %6, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @svp, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = inttoptr i64 %49 to i16*
  %51 = load i16**, i16*** %8, align 8
  store i16* %50, i16** %51, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @svp, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 8
  %56 = inttoptr i64 %55 to i16*
  %57 = load i16**, i16*** %9, align 8
  store i16* %56, i16** %57, align 8
  store i32 1, i32* %5, align 4
  br label %69

58:                                               ; preds = %29
  %59 = load i32, i32* @EL_VDPDMA, align 4
  %60 = load i32, i32* @EL_SVP, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @EL_ANOMALY, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @elprintf(i32 %63, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %33, %13
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @elprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
