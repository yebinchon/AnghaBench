; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_ScspInit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_ScspInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32*, i64, %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i64 (...)*, i32, i32 (i32, i32, i32)*, i32 (i32*)*, i32 (i32*)*, i32 (i32*)*, i32 (i32*)* }

@SoundRam = common dso_local global i32* null, align 8
@ScspInternalVars = common dso_local global %struct.TYPE_6__* null, align 8
@M68K = common dso_local global %struct.TYPE_7__* null, align 8
@c68k_byte_read = common dso_local global i64 0, align 8
@c68k_word_read = common dso_local global i64 0, align 8
@c68k_byte_write = common dso_local global i64 0, align 8
@c68k_word_write = common dso_local global i64 0, align 8
@IsM68KRunning = common dso_local global i64 0, align 8
@c68k_interrupt_handler = common dso_local global i32 0, align 4
@scu_interrupt_handler = common dso_local global i32 0, align 4
@MAX_BREAKPOINTS = common dso_local global i32 0, align 4
@m68kexecptr = common dso_local global i32 0, align 4
@scspsoundlen = common dso_local global i32 0, align 4
@scsplines = common dso_local global i32 0, align 4
@scspsoundbufs = common dso_local global i32 0, align 4
@scspsoundbufsize = common dso_local global i32 0, align 4
@scspsoundgenpos = common dso_local global i64 0, align 8
@scspsoundoutleft = common dso_local global i64 0, align 8
@scspframeaccurate = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ScspInit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i32* @T2MemoryInit(i32 524288)
  store i32* %5, i32** @SoundRam, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %109

8:                                                ; preds = %1
  %9 = call i64 @calloc(i32 1, i32 48)
  %10 = inttoptr i64 %9 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** @ScspInternalVars, align 8
  %11 = icmp eq %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 -1, i32* %2, align 4
  br label %109

13:                                               ; preds = %8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** @M68K, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64 (...)*, i64 (...)** %15, align 8
  %17 = call i64 (...) %16()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 -1, i32* %2, align 4
  br label %109

20:                                               ; preds = %13
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** @M68K, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 6
  %23 = load i32 (i32*)*, i32 (i32*)** %22, align 8
  %24 = load i64, i64* @c68k_byte_read, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = call i32 %23(i32* %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @M68K, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 5
  %29 = load i32 (i32*)*, i32 (i32*)** %28, align 8
  %30 = load i64, i64* @c68k_word_read, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = call i32 %29(i32* %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @M68K, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 4
  %35 = load i32 (i32*)*, i32 (i32*)** %34, align 8
  %36 = load i64, i64* @c68k_byte_write, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = call i32 %35(i32* %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** @M68K, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  %41 = load i32 (i32*)*, i32 (i32*)** %40, align 8
  %42 = load i64, i64* @c68k_word_write, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = call i32 %41(i32* %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** @M68K, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %46, align 8
  %48 = load i32*, i32** @SoundRam, align 8
  %49 = ptrtoint i32* %48 to i32
  %50 = call i32 %47(i32 0, i32 262144, i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** @M68K, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %52, align 8
  %54 = load i32*, i32** @SoundRam, align 8
  %55 = ptrtoint i32* %54 to i32
  %56 = call i32 %53(i32 262144, i32 524288, i32 %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** @M68K, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %58, align 8
  %60 = load i32*, i32** @SoundRam, align 8
  %61 = ptrtoint i32* %60 to i32
  %62 = call i32 %59(i32 524288, i32 786432, i32 %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** @M68K, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %64, align 8
  %66 = load i32*, i32** @SoundRam, align 8
  %67 = ptrtoint i32* %66 to i32
  %68 = call i32 %65(i32 786432, i32 1048576, i32 %67)
  store i64 0, i64* @IsM68KRunning, align 8
  %69 = load i32*, i32** @SoundRam, align 8
  %70 = call i32 @scsp_init(i32* %69, i32* @c68k_interrupt_handler, i32* @scu_interrupt_handler)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ScspInternalVars, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ScspInternalVars, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 4
  store i64 0, i64* %74, align 8
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %87, %20
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @MAX_BREAKPOINTS, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ScspInternalVars, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  store i32 -1, i32* %86, align 4
  br label %87

87:                                               ; preds = %79
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %75

90:                                               ; preds = %75
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ScspInternalVars, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  store i64 0, i64* %92, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ScspInternalVars, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  store i32* null, i32** %94, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ScspInternalVars, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** @M68K, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* @m68kexecptr, align 4
  store i32 735, i32* @scspsoundlen, align 4
  store i32 263, i32* @scsplines, align 4
  store i32 10, i32* @scspsoundbufs, align 4
  %100 = load i32, i32* @scspsoundlen, align 4
  %101 = load i32, i32* @scspsoundbufs, align 4
  %102 = mul nsw i32 %100, %101
  store i32 %102, i32* @scspsoundbufsize, align 4
  %103 = call i64 (...) @scsp_alloc_bufs()
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %90
  store i32 -1, i32* %2, align 4
  br label %109

106:                                              ; preds = %90
  store i64 0, i64* @scspsoundgenpos, align 8
  store i64 0, i64* @scspsoundoutleft, align 8
  store i64 0, i64* @scspframeaccurate, align 8
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @ScspChangeSoundCore(i32 %107)
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %106, %105, %19, %12, %7
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32* @T2MemoryInit(i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @scsp_init(i32*, i32*, i32*) #1

declare dso_local i64 @scsp_alloc_bufs(...) #1

declare dso_local i32 @ScspChangeSoundCore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
