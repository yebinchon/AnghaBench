; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_z80if.c_z80_unpack.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_z80if.c_z80_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_16__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.z80_state = type { i32*, i64, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, %struct.TYPE_21__, %struct.TYPE_14__, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"Z80\00", align 1
@EL_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"legacy z80 state\00", align 1
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"z80_unpack failed\00", align 1
@A = common dso_local global i32 0, align 4
@A2 = common dso_local global i32 0, align 4
@BC = common dso_local global i32 0, align 4
@BC2 = common dso_local global i32 0, align 4
@CLEAR_LINE = common dso_local global i64 0, align 8
@CZ80 = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@CZ80_HALT = common dso_local global i32 0, align 4
@CZ80_IFF1 = common dso_local global i32 0, align 4
@CZ80_IFF2 = common dso_local global i32 0, align 4
@CZ80_IRQ = common dso_local global i32 0, align 4
@CZ80_PC = common dso_local global i32 0, align 4
@CZ80_SP = common dso_local global i32 0, align 4
@DE = common dso_local global i32 0, align 4
@DE2 = common dso_local global i32 0, align 4
@HL = common dso_local global i32 0, align 4
@HL2 = common dso_local global i32 0, align 4
@HOLD_LINE = common dso_local global i64 0, align 8
@I = common dso_local global i32 0, align 4
@IX = common dso_local global i32 0, align 4
@IY = common dso_local global i32 0, align 4
@drZ80 = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@zA = common dso_local global i32 0, align 4
@zA2 = common dso_local global i32 0, align 4
@zB = common dso_local global i32 0, align 4
@zC = common dso_local global i32 0, align 4
@zD = common dso_local global i32 0, align 4
@zE = common dso_local global i32 0, align 4
@zF = common dso_local global i32 0, align 4
@zF2 = common dso_local global i32 0, align 4
@zH = common dso_local global i32 0, align 4
@zI = common dso_local global i32 0, align 4
@zIM = common dso_local global i32 0, align 4
@zIX = common dso_local global i32 0, align 4
@zIY = common dso_local global i32 0, align 4
@zL = common dso_local global i32 0, align 4
@zR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @z80_unpack(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.z80_state*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.z80_state*
  store %struct.z80_state* %6, %struct.z80_state** %4, align 8
  %7 = load %struct.z80_state*, %struct.z80_state** %4, align 8
  %8 = getelementptr inbounds %struct.z80_state, %struct.z80_state* %7, i32 0, i32 14
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @strcmp(i32 %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @z80_unpack_legacy(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @EL_STATUS, align 4
  %19 = call i32 @elprintf(i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %28

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %20, %16
  %22 = load i32, i32* @EL_STATUS, align 4
  %23 = load i32, i32* @EL_ANOMALY, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @elprintf(i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 (...) @z80_reset()
  %27 = call i32 (...) @z80_int()
  store i32 -1, i32* %2, align 4
  br label %28

28:                                               ; preds = %21, %17
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @z80_unpack_legacy(i8*) #1

declare dso_local i32 @elprintf(i32, i8*) #1

declare dso_local i32 @z80_reset(...) #1

declare dso_local i32 @z80_int(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
