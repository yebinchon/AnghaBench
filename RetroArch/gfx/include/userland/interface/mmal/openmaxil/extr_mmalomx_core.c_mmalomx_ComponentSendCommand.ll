; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_core.c_mmalomx_ComponentSendCommand.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_core.c_mmalomx_ComponentSendCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@OMX_ErrorNone = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"hComponent %p, Cmd %i (%s), nParam1 %i (%s), pCmdData %p\00", align 1
@OMX_CommandStateSet = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@OMX_ErrorInvalidComponent = common dso_local global i32 0, align 4
@OMX_StateInvalid = common dso_local global i64 0, align 8
@OMX_ErrorInvalidState = common dso_local global i32 0, align 4
@OMX_CommandFlush = common dso_local global i32 0, align 4
@OMX_CommandMarkBuffer = common dso_local global i32 0, align 4
@OMX_CommandPortEnable = common dso_local global i32 0, align 4
@OMX_CommandPortDisable = common dso_local global i32 0, align 4
@OMX_ALL = common dso_local global i64 0, align 8
@OMX_ErrorBadPortIndex = common dso_local global i32 0, align 4
@OMX_ErrorNotImplemented = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64, i32)* @mmalomx_ComponentSendCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmalomx_ComponentSendCommand(i64 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %6, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %10, align 8
  %14 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i64, i64* %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @mmalomx_cmd_to_string(i32 %17)
  %19 = load i64, i64* %8, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @OMX_CommandStateSet, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i64, i64* %8, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i8* @mmalomx_state_to_string(i32 %26)
  br label %29

28:                                               ; preds = %4
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i8* [ %27, %24 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %28 ]
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %15, i32 %16, i32 %18, i32 %20, i8* %30, i32 %31)
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @OMX_ErrorInvalidComponent, align 4
  store i32 %36, i32* %5, align 4
  br label %109

37:                                               ; preds = %29
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @OMX_StateInvalid, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @OMX_ErrorInvalidState, align 4
  store i32 %44, i32* %5, align 4
  br label %109

45:                                               ; preds = %37
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @OMX_CommandFlush, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @OMX_CommandMarkBuffer, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @OMX_CommandPortEnable, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @OMX_CommandPortDisable, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %57, %53, %49, %45
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* @OMX_ALL, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp sge i64 %66, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @OMX_ErrorBadPortIndex, align 4
  store i32 %72, i32* %5, align 4
  br label %109

73:                                               ; preds = %65, %61
  br label %74

74:                                               ; preds = %73, %57
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @OMX_CommandStateSet, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %90, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @OMX_CommandFlush, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %90, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @OMX_CommandPortEnable, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @OMX_CommandPortDisable, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86, %82, %78, %74
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i64, i64* %8, align 8
  %94 = call i32 @mmalomx_command_queue(%struct.TYPE_3__* %91, i32 %92, i64 %93)
  store i32 %94, i32* %11, align 4
  br label %107

95:                                               ; preds = %86
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @OMX_CommandMarkBuffer, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i64, i64* %6, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @mmalomx_command_port_mark(i64 %100, i64 %101, i32 %102)
  store i32 %103, i32* %11, align 4
  br label %106

104:                                              ; preds = %95
  %105 = load i32, i32* @OMX_ErrorNotImplemented, align 4
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %104, %99
  br label %107

107:                                              ; preds = %106, %90
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %107, %71, %43, %35
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @LOG_TRACE(i8*, i64, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @mmalomx_cmd_to_string(i32) #1

declare dso_local i8* @mmalomx_state_to_string(i32) #1

declare dso_local i32 @mmalomx_command_queue(%struct.TYPE_3__*, i32, i64) #1

declare dso_local i32 @mmalomx_command_port_mark(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
