; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c__SendPacket.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c__SendPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64 }

@_SYSVIEW_Globals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CHANNEL_ID_UP = common dso_local global i32 0, align 4
@CHANNEL_ID_DOWN = common dso_local global i32 0, align 4
@SEGGER_SYSVIEW_SYNC_PERIOD_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @_SendPacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_SendPacket(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = call i32 (...) @SEGGER_SYSVIEW_LOCK()
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_SYSVIEW_Globals, i32 0, i32 0), align 8
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %29

15:                                               ; preds = %3
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_SYSVIEW_Globals, i32 0, i32 0), align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %115

19:                                               ; preds = %15
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_SYSVIEW_Globals, i32 0, i32 0), align 8
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = call i32 (...) @_TrySendOverflowPacket()
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_SYSVIEW_Globals, i32 0, i32 0), align 8
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %115

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %19
  br label %29

29:                                               ; preds = %28, %14
  %30 = load i32, i32* %6, align 4
  %31 = icmp ult i32 %30, 32
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_SYSVIEW_Globals, i32 0, i32 1), align 4
  %34 = load i32, i32* %6, align 4
  %35 = shl i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %115

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %29
  %41 = load i32, i32* %6, align 4
  %42 = icmp ult i32 %41, 24
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 -1
  store i32* %46, i32** %4, align 8
  store i32 %44, i32* %46, align 4
  br label %87

47:                                               ; preds = %40
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = ptrtoint i32* %48 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ugt i32 %55, 127
  br i1 %56, label %57, label %66

57:                                               ; preds = %47
  %58 = load i32, i32* %7, align 4
  %59 = lshr i32 %58, 7
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 -1
  store i32* %61, i32** %4, align 8
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, 128
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 -1
  store i32* %65, i32** %4, align 8
  store i32 %63, i32* %65, align 4
  br label %70

66:                                               ; preds = %47
  %67 = load i32, i32* %7, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 -1
  store i32* %69, i32** %4, align 8
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %57
  %71 = load i32, i32* %6, align 4
  %72 = icmp ugt i32 %71, 127
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load i32, i32* %6, align 4
  %75 = lshr i32 %74, 7
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 -1
  store i32* %77, i32** %4, align 8
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %6, align 4
  %79 = or i32 %78, 128
  %80 = load i32*, i32** %4, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 -1
  store i32* %81, i32** %4, align 8
  store i32 %79, i32* %81, align 4
  br label %86

82:                                               ; preds = %70
  %83 = load i32, i32* %6, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 -1
  store i32* %85, i32** %4, align 8
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %82, %73
  br label %87

87:                                               ; preds = %86, %43
  %88 = call i32 (...) @SEGGER_SYSVIEW_GET_TIMESTAMP()
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_SYSVIEW_Globals, i32 0, i32 2), align 8
  %91 = sub i32 %89, %90
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @MAKE_DELTA_32BIT(i32 %92)
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @ENCODE_U32(i32* %94, i32 %95)
  %97 = load i32, i32* @CHANNEL_ID_UP, align 4
  %98 = load i32*, i32** %4, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = load i32*, i32** %4, align 8
  %101 = ptrtoint i32* %99 to i64
  %102 = ptrtoint i32* %100 to i64
  %103 = sub i64 %101, %102
  %104 = sdiv exact i64 %103, 4
  %105 = trunc i64 %104 to i32
  %106 = call i32 @SEGGER_RTT_WriteSkipNoLock(i32 %97, i32* %98, i32 %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %87
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_SYSVIEW_Globals, i32 0, i32 2), align 8
  br label %114

111:                                              ; preds = %87
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_SYSVIEW_Globals, i32 0, i32 0), align 8
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_SYSVIEW_Globals, i32 0, i32 0), align 8
  br label %114

114:                                              ; preds = %111, %109
  br label %115

115:                                              ; preds = %114, %38, %26, %18
  %116 = load i32, i32* @CHANNEL_ID_DOWN, align 4
  %117 = call i64 @SEGGER_RTT_HASDATA(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_SYSVIEW_Globals, i32 0, i32 3), align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_SYSVIEW_Globals, i32 0, i32 3), align 4
  %123 = call i32 (...) @_HandleIncomingPacket()
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_SYSVIEW_Globals, i32 0, i32 3), align 4
  br label %124

124:                                              ; preds = %122, %119
  br label %125

125:                                              ; preds = %124, %115
  %126 = call i32 (...) @SEGGER_SYSVIEW_UNLOCK()
  ret void
}

declare dso_local i32 @SEGGER_SYSVIEW_LOCK(...) #1

declare dso_local i32 @_TrySendOverflowPacket(...) #1

declare dso_local i32 @SEGGER_SYSVIEW_GET_TIMESTAMP(...) #1

declare dso_local i32 @MAKE_DELTA_32BIT(i32) #1

declare dso_local i32 @ENCODE_U32(i32*, i32) #1

declare dso_local i32 @SEGGER_RTT_WriteSkipNoLock(i32, i32*, i32) #1

declare dso_local i64 @SEGGER_RTT_HASDATA(i32) #1

declare dso_local i32 @_HandleIncomingPacket(...) #1

declare dso_local i32 @SEGGER_SYSVIEW_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
