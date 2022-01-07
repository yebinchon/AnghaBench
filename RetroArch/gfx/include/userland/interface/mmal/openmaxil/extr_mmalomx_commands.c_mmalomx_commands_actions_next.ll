; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_commands.c_mmalomx_commands_actions_next.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_commands.c_mmalomx_commands_actions_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@OMX_ErrorNone = common dso_local global i64 0, align 8
@OMX_CommandStateSet = common dso_local global i64 0, align 8
@OMX_CommandFlush = common dso_local global i64 0, align 8
@OMX_ALL = common dso_local global i32 0, align 4
@OMX_CommandPortEnable = common dso_local global i64 0, align 8
@OMX_CommandPortDisable = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmalomx_commands_actions_next(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %9 = load i64, i64* @OMX_ErrorNone, align 8
  store i64 %9, i64* %3, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = call i64 @mmalomx_command_dequeue(%struct.TYPE_4__* %10, i32* %5, i32* %6)
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @OMX_ErrorNone, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %122

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %4, align 8
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @OMX_CommandStateSet, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = ptrtoint i32* %25 to i32
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @mmalomx_command_state_set(i32 %26, i32 %27)
  br label %122

29:                                               ; preds = %16
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @OMX_CommandFlush, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %55, %33
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @OMX_ALL, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44, %40
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = ptrtoint i32* %50 to i32
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @mmalomx_command_port_flush(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %48, %44
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %34

58:                                               ; preds = %34
  br label %121

59:                                               ; preds = %29
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* @OMX_CommandPortEnable, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %89

63:                                               ; preds = %59
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %85, %63
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ult i32 %65, %68
  br i1 %69, label %70, label %88

70:                                               ; preds = %64
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @OMX_ALL, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %74, %70
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = ptrtoint i32* %80 to i32
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @mmalomx_command_port_enable(i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %78, %74
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %8, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %64

88:                                               ; preds = %64
  br label %120

89:                                               ; preds = %59
  %90 = load i64, i64* %4, align 8
  %91 = load i64, i64* @OMX_CommandPortDisable, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %119

93:                                               ; preds = %89
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %115, %93
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ult i32 %95, %98
  br i1 %99, label %100, label %118

100:                                              ; preds = %94
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @OMX_ALL, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %104, %100
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = ptrtoint i32* %110 to i32
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @mmalomx_command_port_disable(i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %108, %104
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %8, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %94

118:                                              ; preds = %94
  br label %119

119:                                              ; preds = %118, %89
  br label %120

120:                                              ; preds = %119, %88
  br label %121

121:                                              ; preds = %120, %58
  br label %122

122:                                              ; preds = %15, %121, %23
  ret void
}

declare dso_local i64 @mmalomx_command_dequeue(%struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @mmalomx_command_state_set(i32, i32) #1

declare dso_local i32 @mmalomx_command_port_flush(i32, i32) #1

declare dso_local i32 @mmalomx_command_port_enable(i32, i32) #1

declare dso_local i32 @mmalomx_command_port_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
