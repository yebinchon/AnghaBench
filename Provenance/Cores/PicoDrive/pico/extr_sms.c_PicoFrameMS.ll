; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_sms.c_PicoFrameMS.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_sms.c_PicoFrameMS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.PicoVideo }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.PicoVideo = type { i32*, i32, i32 }

@Pico = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PicoSkipFrame = common dso_local global i32 0, align 4
@PicoPad = common dso_local global i32* null, align 8
@EL_INTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"hint\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"vint\00", align 1
@PsndOut = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PicoFrameMS() #0 {
  %1 = alloca %struct.PicoVideo*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.PicoVideo* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 2), %struct.PicoVideo** %1, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 8
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 313, i32 262
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 58020, i32 58293
  store i32 %20, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %21 = load i32, i32* @PicoSkipFrame, align 4
  store i32 %21, i32* %7, align 4
  store i32 192, i32* %8, align 4
  %22 = load i32*, i32** @PicoPad, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 7
  %26 = and i32 %25, 1
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 1, i32 0), align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %0
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 (...) @z80_nmi()
  br label %34

34:                                               ; preds = %32, %29, %0
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 1, i32 0), align 8
  %36 = call i32 (...) @PicoFrameStartMode4()
  %37 = load %struct.PicoVideo*, %struct.PicoVideo** %1, align 8
  %38 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 10
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %133, %34
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %136

46:                                               ; preds = %42
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 1), align 4
  %48 = load %struct.PicoVideo*, %struct.PicoVideo** %1, align 8
  %49 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %11, align 4
  %51 = icmp sgt i32 %50, 218
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i32, i32* %11, align 4
  %54 = sub nsw i32 %53, 6
  %55 = load %struct.PicoVideo*, %struct.PicoVideo** %1, align 8
  %56 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %52, %46
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @PicoLineMode4(i32 %65)
  br label %67

67:                                               ; preds = %64, %61, %57
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %98

71:                                               ; preds = %67
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %9, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %71
  %76 = load %struct.PicoVideo*, %struct.PicoVideo** %1, align 8
  %77 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 10
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %9, align 4
  %81 = load %struct.PicoVideo*, %struct.PicoVideo** %1, align 8
  %82 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, 2
  store i32 %84, i32* %82, align 4
  %85 = load %struct.PicoVideo*, %struct.PicoVideo** %1, align 8
  %86 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 16
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %75
  %93 = load i32, i32* @EL_INTS, align 4
  %94 = call i32 @elprintf(i32 %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %95 = call i32 (...) @z80_int()
  br label %96

96:                                               ; preds = %92, %75
  br label %97

97:                                               ; preds = %96, %71
  br label %121

98:                                               ; preds = %67
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %98
  %104 = load %struct.PicoVideo*, %struct.PicoVideo** %1, align 8
  %105 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = load %struct.PicoVideo*, %struct.PicoVideo** %1, align 8
  %109 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %103
  %116 = load i32, i32* @EL_INTS, align 4
  %117 = call i32 @elprintf(i32 %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %118 = call i32 (...) @z80_int()
  br label %119

119:                                              ; preds = %115, %103
  br label %120

120:                                              ; preds = %119, %98
  br label %121

121:                                              ; preds = %120, %97
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %5, align 4
  %127 = sub nsw i32 %125, %126
  %128 = ashr i32 %127, 8
  %129 = call i32 @z80_run(i32 %128)
  %130 = shl i32 %129, 8
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %121
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %11, align 4
  br label %42

136:                                              ; preds = %42
  %137 = load i64, i64* @PsndOut, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = call i32 (...) @PsndGetSamplesMS()
  br label %141

141:                                              ; preds = %139, %136
  ret void
}

declare dso_local i32 @z80_nmi(...) #1

declare dso_local i32 @PicoFrameStartMode4(...) #1

declare dso_local i32 @PicoLineMode4(i32) #1

declare dso_local i32 @elprintf(i32, i8*) #1

declare dso_local i32 @z80_int(...) #1

declare dso_local i32 @z80_run(i32) #1

declare dso_local i32 @PsndGetSamplesMS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
