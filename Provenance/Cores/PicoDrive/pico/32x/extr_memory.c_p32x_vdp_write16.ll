; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_p32x_vdp_write16.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_p32x_vdp_write16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32** }

@Pico32x = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@Pico32xMem = common dso_local global %struct.TYPE_3__* null, align 8
@P32XV_FS = common dso_local global i32 0, align 4
@P32XV_nFEN = common dso_local global i32 0, align 4
@P32X_EVENT_FILLEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*)* @p32x_vdp_write16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p32x_vdp_write16(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 14
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 6
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 0), align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 3
  store i32 %15, i32* %17, align 4
  br label %87

18:                                               ; preds = %3
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 8
  br i1 %20, label %21, label %82

21:                                               ; preds = %18
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Pico32xMem, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32**, i32*** %23, align 8
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 0), align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 5
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @P32XV_FS, align 4
  %29 = and i32 %27, %28
  %30 = xor i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %24, i64 %31
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 0), align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 0), align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %46, %21
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %9, align 4
  %45 = icmp ne i32 %43, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %52, 65280
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  %56 = and i32 %55, 255
  %57 = or i32 %53, %56
  store i32 %57, i32* %4, align 4
  br label %42

58:                                               ; preds = %42
  %59 = load i32, i32* %4, align 4
  %60 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 0), align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 0), align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  store i32 %62, i32* %64, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %81

67:                                               ; preds = %58
  %68 = load i32, i32* %8, align 4
  %69 = icmp sgt i32 %68, 4
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load i32, i32* @P32XV_nFEN, align 4
  %72 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 0), align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 5
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* @P32X_EVENT_FILLEND, align 4
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 3, %78
  %80 = call i32 @p32x_event_schedule_sh2(i32* %76, i32 %77, i32 %79)
  br label %81

81:                                               ; preds = %70, %67, %58
  br label %87

82:                                               ; preds = %18
  %83 = load i32, i32* %4, align 4
  %84 = or i32 %83, 1
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @p32x_vdp_write8(i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %82, %81, %14
  ret void
}

declare dso_local i32 @p32x_event_schedule_sh2(i32*, i32, i32) #1

declare dso_local i32 @p32x_vdp_write8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
