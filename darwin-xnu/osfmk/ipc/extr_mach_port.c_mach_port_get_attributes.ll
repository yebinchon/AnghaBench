; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_get_attributes.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_get_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }

@IS_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_TASK = common dso_local global i32 0, align 4
@MACH_PORT_LIMITS_INFO_COUNT = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@MACH_PORT_RECEIVE_STATUS_COUNT = common dso_local global i32 0, align 4
@KERN_INVALID_RIGHT = common dso_local global i32 0, align 4
@MACH_PORT_DNREQUESTS_SIZE_COUNT = common dso_local global i32 0, align 4
@IPR_NULL = common dso_local global %struct.TYPE_16__* null, align 8
@MACH_PORT_INFO_EXT_COUNT = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mach_port_get_attributes(i64 %0, i32 %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @IS_NULL, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @KERN_INVALID_TASK, align 4
  store i32 %22, i32* %6, align 4
  br label %180

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %176 [
    i32 129, label %25
    i32 128, label %60
    i32 131, label %92
    i32 130, label %138
  ]

25:                                               ; preds = %23
  %26 = load i64, i64* %10, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %14, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MACH_PORT_LIMITS_INFO_COUNT, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %33, i32* %6, align 4
  br label %180

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @MACH_PORT_VALID(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load i32*, i32** %11, align 8
  store i32 0, i32* %39, align 4
  br label %178

40:                                               ; preds = %34
  %41 = load i64, i64* %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @ipc_port_translate_receive(i64 %41, i32 %42, %struct.TYPE_15__** %12)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @KERN_SUCCESS, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %6, align 4
  br label %180

49:                                               ; preds = %40
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @MACH_PORT_LIMITS_INFO_COUNT, align 4
  %57 = load i32*, i32** %11, align 8
  store i32 %56, i32* %57, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %59 = call i32 @ip_unlock(%struct.TYPE_15__* %58)
  br label %178

60:                                               ; preds = %23
  %61 = load i64, i64* %10, align 8
  %62 = inttoptr i64 %61 to i32*
  store i32* %62, i32** %15, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MACH_PORT_RECEIVE_STATUS_COUNT, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %68, i32* %6, align 4
  br label %180

69:                                               ; preds = %60
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @MACH_PORT_VALID(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* @KERN_INVALID_RIGHT, align 4
  store i32 %74, i32* %6, align 4
  br label %180

75:                                               ; preds = %69
  %76 = load i64, i64* %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @ipc_port_translate_receive(i64 %76, i32 %77, %struct.TYPE_15__** %12)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @KERN_SUCCESS, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %6, align 4
  br label %180

84:                                               ; preds = %75
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %86 = load i32*, i32** %15, align 8
  %87 = call i32 @mach_port_get_status_helper(%struct.TYPE_15__* %85, i32* %86)
  %88 = load i32, i32* @MACH_PORT_RECEIVE_STATUS_COUNT, align 4
  %89 = load i32*, i32** %11, align 8
  store i32 %88, i32* %89, align 4
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %91 = call i32 @ip_unlock(%struct.TYPE_15__* %90)
  br label %178

92:                                               ; preds = %23
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @MACH_PORT_DNREQUESTS_SIZE_COUNT, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %98, i32* %6, align 4
  br label %180

99:                                               ; preds = %92
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @MACH_PORT_VALID(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = load i64, i64* %10, align 8
  %105 = inttoptr i64 %104 to i32*
  store i32 0, i32* %105, align 4
  br label %178

106:                                              ; preds = %99
  %107 = load i64, i64* %7, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @ipc_port_translate_receive(i64 %107, i32 %108, %struct.TYPE_15__** %12)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* @KERN_SUCCESS, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = load i32, i32* %13, align 4
  store i32 %114, i32* %6, align 4
  br label %180

115:                                              ; preds = %106
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  store %struct.TYPE_16__* %118, %struct.TYPE_16__** %16, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** @IPR_NULL, align 8
  %121 = icmp eq %struct.TYPE_16__* %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load i64, i64* %10, align 8
  %124 = inttoptr i64 %123 to i32*
  store i32 0, i32* %124, align 4
  br label %133

125:                                              ; preds = %115
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i64, i64* %10, align 8
  %132 = inttoptr i64 %131 to i32*
  store i32 %130, i32* %132, align 4
  br label %133

133:                                              ; preds = %125, %122
  %134 = load i32, i32* @MACH_PORT_DNREQUESTS_SIZE_COUNT, align 4
  %135 = load i32*, i32** %11, align 8
  store i32 %134, i32* %135, align 4
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %137 = call i32 @ip_unlock(%struct.TYPE_15__* %136)
  br label %178

138:                                              ; preds = %23
  %139 = load i64, i64* %10, align 8
  %140 = inttoptr i64 %139 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %140, %struct.TYPE_14__** %17, align 8
  %141 = load i32*, i32** %11, align 8
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @MACH_PORT_INFO_EXT_COUNT, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %138
  %146 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %146, i32* %6, align 4
  br label %180

147:                                              ; preds = %138
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @MACH_PORT_VALID(i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %147
  %152 = load i32, i32* @KERN_INVALID_RIGHT, align 4
  store i32 %152, i32* %6, align 4
  br label %180

153:                                              ; preds = %147
  %154 = load i64, i64* %7, align 8
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @ipc_port_translate_receive(i64 %154, i32 %155, %struct.TYPE_15__** %12)
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* @KERN_SUCCESS, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %153
  %161 = load i32, i32* %13, align 4
  store i32 %161, i32* %6, align 4
  br label %180

162:                                              ; preds = %153
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 1
  %166 = call i32 @mach_port_get_status_helper(%struct.TYPE_15__* %163, i32* %165)
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* @MACH_PORT_INFO_EXT_COUNT, align 4
  %173 = load i32*, i32** %11, align 8
  store i32 %172, i32* %173, align 4
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %175 = call i32 @ip_unlock(%struct.TYPE_15__* %174)
  br label %178

176:                                              ; preds = %23
  %177 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %177, i32* %6, align 4
  br label %180

178:                                              ; preds = %162, %133, %103, %84, %49, %38
  %179 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %179, i32* %6, align 4
  br label %180

180:                                              ; preds = %178, %176, %160, %151, %145, %113, %97, %82, %73, %67, %47, %32, %21
  %181 = load i32, i32* %6, align 4
  ret i32 %181
}

declare dso_local i32 @MACH_PORT_VALID(i32) #1

declare dso_local i32 @ipc_port_translate_receive(i64, i32, %struct.TYPE_15__**) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_15__*) #1

declare dso_local i32 @mach_port_get_status_helper(%struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
