; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_construct.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64 }

@IS_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_TASK = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@MPO_CONTEXT_AS_GUARD = common dso_local global i32 0, align 4
@MPO_STRICT = common dso_local global i32 0, align 4
@MPO_QLIMIT = common dso_local global i32 0, align 4
@MACH_PORT_LIMITS_INFO = common dso_local global i32 0, align 4
@MPO_TEMPOWNER = common dso_local global i32 0, align 4
@MACH_PORT_TEMPOWNER = common dso_local global i32 0, align 4
@MPO_IMPORTANCE_RECEIVER = common dso_local global i32 0, align 4
@MACH_PORT_IMPORTANCE_RECEIVER = common dso_local global i32 0, align 4
@MPO_DENAP_RECEIVER = common dso_local global i32 0, align 4
@MACH_PORT_DENAP_RECEIVER = common dso_local global i32 0, align 4
@MPO_INSERT_SEND_RIGHT = common dso_local global i32 0, align 4
@MACH_MSG_TYPE_MAKE_SEND = common dso_local global i32 0, align 4
@MACH_MSG_TYPE_PORT_SEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_port_construct(i64 %0, %struct.TYPE_8__* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store i64 %0, i64* %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @IS_NULL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i64, i64* @KERN_INVALID_TASK, align 8
  store i64 %16, i64* %5, align 8
  br label %166

17:                                               ; preds = %4
  %18 = load i64, i64* %6, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i64 @ipc_port_alloc(i64 %18, i32* %19, %struct.TYPE_9__** %11)
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @KERN_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i64, i64* %10, align 8
  store i64 %25, i64* %5, align 8
  br label %166

26:                                               ; preds = %17
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MPO_CONTEXT_AS_GUARD, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MPO_STRICT, align 4
  %40 = and i32 %38, %39
  %41 = call i64 @mach_port_guard_locked(%struct.TYPE_9__* %34, i64 %35, i32 %40)
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @KERN_SUCCESS, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  br label %51

47:                                               ; preds = %26
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %33
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %53 = call i32 @ip_unlock(%struct.TYPE_9__* %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MPO_QLIMIT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %51
  %61 = load i64, i64* %6, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MACH_PORT_LIMITS_INFO, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = call i64 @mach_port_set_attributes(i64 %61, i32 %63, i32 %64, i32* %66, i32 1)
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @KERN_SUCCESS, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %159

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72, %51
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MPO_TEMPOWNER, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %73
  %81 = load i64, i64* %6, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @MACH_PORT_TEMPOWNER, align 4
  %85 = call i64 @mach_port_set_attributes(i64 %81, i32 %83, i32 %84, i32* null, i32 0)
  store i64 %85, i64* %10, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* @KERN_SUCCESS, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %159

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %73
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @MPO_IMPORTANCE_RECEIVER, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %91
  %99 = load i64, i64* %6, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @MACH_PORT_IMPORTANCE_RECEIVER, align 4
  %103 = call i64 @mach_port_set_attributes(i64 %99, i32 %101, i32 %102, i32* null, i32 0)
  store i64 %103, i64* %10, align 8
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* @KERN_SUCCESS, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %159

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108, %91
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @MPO_DENAP_RECEIVER, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %109
  %117 = load i64, i64* %6, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @MACH_PORT_DENAP_RECEIVER, align 4
  %121 = call i64 @mach_port_set_attributes(i64 %117, i32 %119, i32 %120, i32* null, i32 0)
  store i64 %121, i64* %10, align 8
  %122 = load i64, i64* %10, align 8
  %123 = load i64, i64* @KERN_SUCCESS, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %116
  br label %159

126:                                              ; preds = %116
  br label %127

127:                                              ; preds = %126, %109
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @MPO_INSERT_SEND_RIGHT, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %157

134:                                              ; preds = %127
  %135 = load i64, i64* %6, align 8
  %136 = load i32*, i32** %9, align 8
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @MACH_MSG_TYPE_MAKE_SEND, align 4
  %139 = bitcast %struct.TYPE_9__** %11 to i32*
  %140 = call i64 @ipc_object_copyin(i64 %135, i32 %137, i32 %138, i32* %139)
  store i64 %140, i64* %10, align 8
  %141 = load i64, i64* %10, align 8
  %142 = load i64, i64* @KERN_SUCCESS, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %134
  br label %159

145:                                              ; preds = %134
  %146 = load i64, i64* %6, align 8
  %147 = load i32*, i32** %9, align 8
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %150 = load i32, i32* @MACH_MSG_TYPE_PORT_SEND, align 4
  %151 = call i64 @mach_port_insert_right(i64 %146, i32 %148, %struct.TYPE_9__* %149, i32 %150)
  store i64 %151, i64* %10, align 8
  %152 = load i64, i64* %10, align 8
  %153 = load i64, i64* @KERN_SUCCESS, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %145
  br label %159

156:                                              ; preds = %145
  br label %157

157:                                              ; preds = %156, %127
  %158 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %158, i64* %5, align 8
  br label %166

159:                                              ; preds = %155, %144, %125, %107, %89, %71
  %160 = load i64, i64* %6, align 8
  %161 = load i32*, i32** %9, align 8
  %162 = load i32, i32* %161, align 4
  %163 = load i64, i64* %8, align 8
  %164 = call i32 @mach_port_destruct(i64 %160, i32 %162, i32 0, i64 %163)
  %165 = load i64, i64* %10, align 8
  store i64 %165, i64* %5, align 8
  br label %166

166:                                              ; preds = %159, %157, %24, %15
  %167 = load i64, i64* %5, align 8
  ret i64 %167
}

declare dso_local i64 @ipc_port_alloc(i64, i32*, %struct.TYPE_9__**) #1

declare dso_local i64 @mach_port_guard_locked(%struct.TYPE_9__*, i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_9__*) #1

declare dso_local i64 @mach_port_set_attributes(i64, i32, i32, i32*, i32) #1

declare dso_local i64 @ipc_object_copyin(i64, i32, i32, i32*) #1

declare dso_local i64 @mach_port_insert_right(i64, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @mach_port_destruct(i64, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
