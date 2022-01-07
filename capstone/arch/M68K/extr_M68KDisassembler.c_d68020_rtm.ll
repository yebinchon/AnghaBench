; ModuleID = '/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KDisassembler.c_d68020_rtm.c'
source_filename = "/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KDisassembler.c_d68020_rtm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32, i32 }

@M68K_GRP_RET = common dso_local global i32 0, align 4
@M68020_ONLY = common dso_local global i32 0, align 4
@M68K_INS_RTM = common dso_local global i32 0, align 4
@M68K_AM_NONE = common dso_local global i32 0, align 4
@M68K_OP_REG = common dso_local global i32 0, align 4
@M68K_REG_A0 = common dso_local global i64 0, align 8
@M68K_REG_D0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @d68020_rtm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d68020_rtm(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = load i32, i32* @M68K_GRP_RET, align 4
  %7 = call i32 @set_insn_group(%struct.TYPE_8__* %5, i32 %6)
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = load i32, i32* @M68020_ONLY, align 4
  %10 = call i32 @LIMIT_CPU_TYPES(%struct.TYPE_8__* %8, i32 %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = load i32, i32* @M68K_INS_RTM, align 4
  %13 = call i32 @build_absolute_jump_with_immediate(%struct.TYPE_8__* %11, i32 %12, i32 0, i32 0)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %3, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i64 0
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %4, align 8
  %20 = load i32, i32* @M68K_AM_NONE, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @M68K_OP_REG, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @BIT_3(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %1
  %32 = load i64, i64* @M68K_REG_A0, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 7
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %32, %37
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %51

41:                                               ; preds = %1
  %42 = load i64, i64* @M68K_REG_D0, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, 7
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %42, %47
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %41, %31
  ret void
}

declare dso_local i32 @set_insn_group(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @LIMIT_CPU_TYPES(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @build_absolute_jump_with_immediate(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i64 @BIT_3(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
