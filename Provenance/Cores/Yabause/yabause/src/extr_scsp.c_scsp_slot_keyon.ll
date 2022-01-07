; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_scsp_slot_keyon.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_scsp_slot_keyon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i32, i32, i32, i32, i32*, i64, i32, i64, i32*, i32*, i64, i32 }
%struct.TYPE_7__ = type { i32 (...)* }

@SCSP_ENV_RELEASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [81 x i8] c"key on slot %d. 68K PC = %08X slot->sa = %08X slot->lsa = %08X slot->lea = %08X\0A\00", align 1
@scsp = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@M68K = common dso_local global %struct.TYPE_7__* null, align 8
@SCSP_FREQ_LB = common dso_local global i32 0, align 4
@SCSP_RAM_MASK = common dso_local global i32 0, align 4
@SCSP_ENV_AS = common dso_local global i32 0, align 4
@SCSP_ENV_ATTACK = common dso_local global i64 0, align 8
@SCSP_ENV_AE = common dso_local global i32 0, align 4
@scsp_attack_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @scsp_slot_keyon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsp_slot_keyon(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @SCSP_ENV_RELEASE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %131

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 1), align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i64 0
  %12 = ptrtoint %struct.TYPE_5__* %9 to i64
  %13 = ptrtoint %struct.TYPE_5__* %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 96
  %16 = trunc i64 %15 to i32
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @M68K, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32 (...)*, i32 (...)** %18, align 8
  %20 = call i32 (...) %19()
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 13
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SCSP_FREQ_LB, align 4
  %31 = ashr i32 %29, %30
  %32 = call i32 @SCSPLOG(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %20, i64 %23, i32 %26, i32 %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 12
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %72

37:                                               ; preds = %8
  %38 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 0), align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 11
  store i32* %42, i32** %44, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SCSP_FREQ_LB, align 4
  %52 = ashr i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = add i64 %47, %53
  %55 = load i32, i32* @SCSP_RAM_MASK, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ugt i64 %54, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %37
  %59 = load i32, i32* @SCSP_RAM_MASK, align 4
  %60 = sext i32 %59 to i64
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sub i64 %60, %63
  %65 = load i32, i32* @SCSP_FREQ_LB, align 4
  %66 = zext i32 %65 to i64
  %67 = shl i64 %64, %66
  %68 = trunc i64 %67 to i32
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %58, %37
  br label %110

72:                                               ; preds = %8
  %73 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 0), align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = and i64 %76, -2
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 10
  store i32* %78, i32** %80, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @SCSP_FREQ_LB, align 4
  %88 = sub nsw i32 %87, 1
  %89 = ashr i32 %86, %88
  %90 = sext i32 %89 to i64
  %91 = add i64 %83, %90
  %92 = load i32, i32* @SCSP_RAM_MASK, align 4
  %93 = sext i32 %92 to i64
  %94 = icmp ugt i64 %91, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %72
  %96 = load i32, i32* @SCSP_RAM_MASK, align 4
  %97 = sext i32 %96 to i64
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = sub i64 %97, %100
  %102 = load i32, i32* @SCSP_FREQ_LB, align 4
  %103 = sub nsw i32 %102, 1
  %104 = zext i32 %103 to i64
  %105 = shl i64 %101, %104
  %106 = trunc i64 %105 to i32
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %95, %72
  br label %110

110:                                              ; preds = %109, %71
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 9
  store i64 0, i64* %112, align 8
  %113 = load i32, i32* @SCSP_ENV_AS, align 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 8
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 7
  store i64 0, i64* %117, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 5
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 6
  store i32* %119, i32** %121, align 8
  %122 = load i64, i64* @SCSP_ENV_ATTACK, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load i32, i32* @SCSP_ENV_AE, align 4
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* @scsp_attack_next, align 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %110, %1
  ret void
}

declare dso_local i32 @SCSPLOG(i8*, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
