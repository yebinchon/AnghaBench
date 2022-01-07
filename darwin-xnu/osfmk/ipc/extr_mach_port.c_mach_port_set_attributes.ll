; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_set_attributes.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_set_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@IS_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_TASK = common dso_local global i32 0, align 4
@MACH_PORT_LIMITS_INFO_COUNT = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4
@MACH_PORT_QLIMIT_MAX = common dso_local global i32 0, align 4
@KERN_INVALID_VALUE = common dso_local global i32 0, align 4
@KERN_INVALID_RIGHT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@MACH_PORT_DNREQUESTS_SIZE_COUNT = common dso_local global i32 0, align 4
@IIT_NULL = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mach_port_set_attributes(i64 %0, i32 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @IS_NULL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @KERN_INVALID_TASK, align 4
  store i32 %21, i32* %6, align 4
  br label %171

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  switch i32 %23, label %167 [
    i32 129, label %24
    i32 131, label %64
    i32 128, label %97
  ]

24:                                               ; preds = %22
  %25 = load i64, i64* %10, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %14, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @MACH_PORT_LIMITS_INFO_COUNT, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %31, i32* %6, align 4
  br label %171

32:                                               ; preds = %24
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MACH_PORT_QLIMIT_MAX, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @KERN_INVALID_VALUE, align 4
  store i32 %39, i32* %6, align 4
  br label %171

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @MACH_PORT_VALID(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @KERN_INVALID_RIGHT, align 4
  store i32 %45, i32* %6, align 4
  br label %171

46:                                               ; preds = %40
  %47 = load i64, i64* %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @ipc_port_translate_receive(i64 %47, i32 %48, %struct.TYPE_9__** %12)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @KERN_SUCCESS, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %6, align 4
  br label %171

55:                                               ; preds = %46
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 5
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ipc_mqueue_set_qlimit(i32* %57, i32 %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %63 = call i32 @ip_unlock(%struct.TYPE_9__* %62)
  br label %169

64:                                               ; preds = %22
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @MACH_PORT_DNREQUESTS_SIZE_COUNT, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %69, i32* %6, align 4
  br label %171

70:                                               ; preds = %64
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @MACH_PORT_VALID(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* @KERN_INVALID_RIGHT, align 4
  store i32 %75, i32* %6, align 4
  br label %171

76:                                               ; preds = %70
  %77 = load i64, i64* %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @ipc_port_translate_receive(i64 %77, i32 %78, %struct.TYPE_9__** %12)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @KERN_SUCCESS, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %6, align 4
  br label %171

85:                                               ; preds = %76
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %87 = load i64, i64* %10, align 8
  %88 = inttoptr i64 %87 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ipc_port_request_grow(%struct.TYPE_9__* %86, i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* @KERN_SUCCESS, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %6, align 4
  br label %171

96:                                               ; preds = %85
  br label %169

97:                                               ; preds = %22
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @MACH_PORT_VALID(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* @KERN_INVALID_RIGHT, align 4
  store i32 %102, i32* %6, align 4
  br label %171

103:                                              ; preds = %97
  %104 = load i32, i32* @IIT_NULL, align 4
  store i32 %104, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %105 = load i64, i64* %7, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @ipc_port_translate_receive(i64 %105, i32 %106, %struct.TYPE_9__** %12)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @KERN_SUCCESS, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %6, align 4
  br label %171

113:                                              ; preds = %103
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %115 = call i32 @ip_kotype(%struct.TYPE_9__* %114)
  %116 = call i32 @is_ipc_kobject(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118, %113
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %125 = call i32 @ip_unlock(%struct.TYPE_9__* %124)
  %126 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %126, i32* %6, align 4
  br label %171

127:                                              ; preds = %118
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %149

132:                                              ; preds = %127
  %133 = load i32, i32* @IIT_NULL, align 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %133, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %132
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %15, align 4
  %142 = load i32, i32* @IIT_NULL, align 4
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %16, align 4
  br label %148

148:                                              ; preds = %138, %132
  br label %153

149:                                              ; preds = %127
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %16, align 4
  br label %153

153:                                              ; preds = %149, %148
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  store i32 1, i32* %155, align 4
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  store i32 1, i32* %157, align 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %159 = call i32 @ip_unlock(%struct.TYPE_9__* %158)
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* @IIT_NULL, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %153
  %164 = load i32, i32* %15, align 4
  %165 = call i32 @ipc_importance_task_release(i32 %164)
  br label %166

166:                                              ; preds = %163, %153
  br label %169

167:                                              ; preds = %22
  %168 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %168, i32* %6, align 4
  br label %171

169:                                              ; preds = %166, %96, %55
  %170 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %169, %167, %123, %111, %101, %94, %83, %74, %68, %53, %44, %38, %30, %20
  %172 = load i32, i32* %6, align 4
  ret i32 %172
}

declare dso_local i32 @MACH_PORT_VALID(i32) #1

declare dso_local i32 @ipc_port_translate_receive(i64, i32, %struct.TYPE_9__**) #1

declare dso_local i32 @ipc_mqueue_set_qlimit(i32*, i32) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_9__*) #1

declare dso_local i32 @ipc_port_request_grow(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @is_ipc_kobject(i32) #1

declare dso_local i32 @ip_kotype(%struct.TYPE_9__*) #1

declare dso_local i32 @ipc_importance_task_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
