; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_z80if.c_z80_pack.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_z80if.c_z80_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_20__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8*, i8* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8*, i8* }
%struct.TYPE_20__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i8*, i8* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32 }
%struct.z80_state = type { i32, i32, i32, i32, i32*, i32, i64, i64, i8*, i8*, i32, i8*, %struct.TYPE_19__, %struct.TYPE_18__, i32 }
%struct.TYPE_19__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, i8* }
%struct.TYPE_18__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, i8* }

@Z80_STATE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"Z80\00", align 1
@A = common dso_local global i32 0, align 4
@A2 = common dso_local global i32 0, align 4
@BC = common dso_local global i32 0, align 4
@BC2 = common dso_local global i32 0, align 4
@CZ80 = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@CZ80_HALT = common dso_local global i32 0, align 4
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
@zA = common dso_local global i8* null, align 8
@zA2 = common dso_local global i8* null, align 8
@zB = common dso_local global i8* null, align 8
@zC = common dso_local global i8* null, align 8
@zD = common dso_local global i8* null, align 8
@zE = common dso_local global i8* null, align 8
@zF = common dso_local global i32 0, align 4
@zF2 = common dso_local global i32 0, align 4
@zH = common dso_local global i8* null, align 8
@zI = common dso_local global i8* null, align 8
@zIFF1 = common dso_local global i32 0, align 4
@zIFF2 = common dso_local global i32 0, align 4
@zIM = common dso_local global i32 0, align 4
@zIX = common dso_local global i8* null, align 8
@zIY = common dso_local global i8* null, align 8
@zL = common dso_local global i8* null, align 8
@zR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @z80_pack(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.z80_state*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.z80_state*
  store %struct.z80_state* %5, %struct.z80_state** %3, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = load i32, i32* @Z80_STATE_SIZE, align 4
  %8 = call i32 @memset(i8* %6, i32 0, i32 %7)
  %9 = load %struct.z80_state*, %struct.z80_state** %3, align 8
  %10 = getelementptr inbounds %struct.z80_state, %struct.z80_state* %9, i32 0, i32 14
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @strcpy(i32 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
