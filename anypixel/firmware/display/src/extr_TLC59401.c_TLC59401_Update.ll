; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/src/extr_TLC59401.c_TLC59401_Update.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/src/extr_TLC59401.c_TLC59401_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@TLC59401_Update.callCount = internal global i32 0, align 4
@needLatch0 = common dso_local global i32 0, align 4
@needLatch1 = common dso_local global i32 0, align 4
@enableBlank = common dso_local global i64 0, align 8
@pins_tlc59401 = common dso_local global %struct.TYPE_4__* null, align 8
@TLC59401_PIN_BLANK0 = common dso_local global i64 0, align 8
@TLC59401_PIN_XLAT0 = common dso_local global i64 0, align 8
@TLC59401_PIN_BLANK1 = common dso_local global i64 0, align 8
@TLC59401_PIN_XLAT1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TLC59401_Update() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %3 = call i64 (...) @isIdle()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @needLatch0, align 4
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @needLatch1, align 4
  store i32 %7, i32* %2, align 4
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i32, i32* @TLC59401_Update.callCount, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @TLC59401_Update.callCount, align 4
  %11 = and i32 %9, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %74

13:                                               ; preds = %8
  %14 = load i64, i64* @enableBlank, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pins_tlc59401, align 8
  %18 = load i64, i64* @TLC59401_PIN_BLANK0, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pins_tlc59401, align 8
  %23 = load i64, i64* @TLC59401_PIN_BLANK0, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 %21, i32* %27, align 4
  br label %28

28:                                               ; preds = %16, %13
  %29 = load i32, i32* %1, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pins_tlc59401, align 8
  %33 = load i64, i64* @TLC59401_PIN_XLAT0, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pins_tlc59401, align 8
  %38 = load i64, i64* @TLC59401_PIN_XLAT0, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32 %36, i32* %42, align 4
  br label %43

43:                                               ; preds = %31, %28
  call void asm sideeffect "NOP", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  call void asm sideeffect "NOP", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  call void asm sideeffect "NOP", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  call void asm sideeffect "NOP", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !5
  call void asm sideeffect "NOP", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !6
  call void asm sideeffect "NOP", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !7
  call void asm sideeffect "NOP", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !8
  call void asm sideeffect "NOP", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !9
  call void asm sideeffect "NOP", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !10
  %44 = load i32, i32* %1, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pins_tlc59401, align 8
  %48 = load i64, i64* @TLC59401_PIN_XLAT0, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pins_tlc59401, align 8
  %53 = load i64, i64* @TLC59401_PIN_XLAT0, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %51, i32* %57, align 4
  store i32 0, i32* @needLatch0, align 4
  br label %58

58:                                               ; preds = %46, %43
  %59 = load i64, i64* @enableBlank, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pins_tlc59401, align 8
  %63 = load i64, i64* @TLC59401_PIN_BLANK0, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pins_tlc59401, align 8
  %68 = load i64, i64* @TLC59401_PIN_BLANK0, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 %66, i32* %72, align 4
  br label %73

73:                                               ; preds = %61, %58
  br label %135

74:                                               ; preds = %8
  %75 = load i64, i64* @enableBlank, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %74
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pins_tlc59401, align 8
  %79 = load i64, i64* @TLC59401_PIN_BLANK1, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pins_tlc59401, align 8
  %84 = load i64, i64* @TLC59401_PIN_BLANK1, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  store i32 %82, i32* %88, align 4
  br label %89

89:                                               ; preds = %77, %74
  %90 = load i32, i32* %2, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %89
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pins_tlc59401, align 8
  %94 = load i64, i64* @TLC59401_PIN_XLAT1, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pins_tlc59401, align 8
  %99 = load i64, i64* @TLC59401_PIN_XLAT1, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  store i32 %97, i32* %103, align 4
  br label %104

104:                                              ; preds = %92, %89
  call void asm sideeffect "NOP", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !11
  call void asm sideeffect "NOP", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !12
  call void asm sideeffect "NOP", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !13
  call void asm sideeffect "NOP", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !14
  call void asm sideeffect "NOP", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !15
  call void asm sideeffect "NOP", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !16
  call void asm sideeffect "NOP", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !17
  call void asm sideeffect "NOP", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !18
  call void asm sideeffect "NOP", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !19
  %105 = load i32, i32* %2, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %104
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pins_tlc59401, align 8
  %109 = load i64, i64* @TLC59401_PIN_XLAT1, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pins_tlc59401, align 8
  %114 = load i64, i64* @TLC59401_PIN_XLAT1, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  store i32 %112, i32* %118, align 4
  store i32 0, i32* @needLatch1, align 4
  br label %119

119:                                              ; preds = %107, %104
  %120 = load i64, i64* @enableBlank, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %119
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pins_tlc59401, align 8
  %124 = load i64, i64* @TLC59401_PIN_BLANK1, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pins_tlc59401, align 8
  %129 = load i64, i64* @TLC59401_PIN_BLANK1, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  store i32 %127, i32* %133, align 4
  br label %134

134:                                              ; preds = %122, %119
  br label %135

135:                                              ; preds = %134, %73
  ret void
}

declare dso_local i64 @isIdle(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1043}
!3 = !{i32 1063}
!4 = !{i32 1083}
!5 = !{i32 1103}
!6 = !{i32 1123}
!7 = !{i32 1143}
!8 = !{i32 1163}
!9 = !{i32 1183}
!10 = !{i32 1203}
!11 = !{i32 1803}
!12 = !{i32 1823}
!13 = !{i32 1843}
!14 = !{i32 1863}
!15 = !{i32 1883}
!16 = !{i32 1903}
!17 = !{i32 1923}
!18 = !{i32 1943}
!19 = !{i32 1963}
