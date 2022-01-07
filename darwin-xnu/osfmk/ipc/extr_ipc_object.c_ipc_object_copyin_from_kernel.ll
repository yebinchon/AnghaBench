; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_object.c_ipc_object_copyin_from_kernel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_object.c_ipc_object_copyin_from_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_9__*, i32, i32 }

@IP_NULL = common dso_local global i32 0, align 4
@ipc_space_kernel = common dso_local global %struct.TYPE_9__* null, align 8
@MACH_PORT_NULL = common dso_local global i32 0, align 4
@HOST_LOCAL_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"ipc_object_copyin_from_kernel: strange rights\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_object_copyin_from_kernel(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @IO_VALID(i32 %9)
  %11 = call i32 @assert(i32 %10)
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %164 [
    i32 130, label %13
    i32 133, label %52
    i32 132, label %77
    i32 129, label %124
    i32 131, label %131
    i32 128, label %157
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %5, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = call i32 @ip_lock(%struct.TYPE_8__* %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 5
  %21 = call i32 @imq_lock(i32* %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = call i32 @ip_active(%struct.TYPE_8__* %22)
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IP_NULL, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %13
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ipc_space_kernel, align 8
  %35 = icmp eq %struct.TYPE_9__* %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = call i32 @ipc_port_set_mscount(%struct.TYPE_8__* %38, i32 0)
  %40 = load i32, i32* @MACH_PORT_NULL, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @IP_NULL, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %30, %13
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 5
  %49 = call i32 @imq_unlock(i32* %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = call i32 @ip_unlock(%struct.TYPE_8__* %50)
  br label %166

52:                                               ; preds = %2
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %6, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = call i32 @ip_lock(%struct.TYPE_8__* %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = call i32 @ip_active(%struct.TYPE_8__* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %52
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %61, %52
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %74 = call i32 @ip_reference(%struct.TYPE_8__* %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %76 = call i32 @ip_unlock(%struct.TYPE_8__* %75)
  br label %166

77:                                               ; preds = %2
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %80, %struct.TYPE_8__** %7, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %82 = call i32 @ip_lock(%struct.TYPE_8__* %81)
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %84 = call i32 @ip_active(%struct.TYPE_8__* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %115

86:                                               ; preds = %77
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @MACH_PORT_NULL, align 4
  %91 = icmp ne i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ipc_space_kernel, align 8
  %98 = icmp eq %struct.TYPE_9__* %96, %97
  br i1 %98, label %107, label %99

99:                                               ; preds = %86
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @HOST_LOCAL_NODE, align 4
  %106 = icmp ne i32 %104, %105
  br label %107

107:                                              ; preds = %99, %86
  %108 = phi i1 [ true, %86 ], [ %106, %99 ]
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %107, %77
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %121 = call i32 @ip_reference(%struct.TYPE_8__* %120)
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %123 = call i32 @ip_unlock(%struct.TYPE_8__* %122)
  br label %166

124:                                              ; preds = %2
  %125 = load i32, i32* %3, align 4
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to %struct.TYPE_8__*
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @assert(i32 %129)
  br label %166

131:                                              ; preds = %2
  %132 = load i32, i32* %3, align 4
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %134, %struct.TYPE_8__** %8, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %136 = call i32 @ip_lock(%struct.TYPE_8__* %135)
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %138 = call i32 @ip_active(%struct.TYPE_8__* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %131
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @MACH_PORT_NULL, align 4
  %145 = icmp ne i32 %143, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  br label %148

148:                                              ; preds = %140, %131
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %154 = call i32 @ip_reference(%struct.TYPE_8__* %153)
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %156 = call i32 @ip_unlock(%struct.TYPE_8__* %155)
  br label %166

157:                                              ; preds = %2
  %158 = load i32, i32* %3, align 4
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to %struct.TYPE_8__*
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @assert(i32 %162)
  br label %166

164:                                              ; preds = %2
  %165 = call i32 @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %166

166:                                              ; preds = %164, %157, %148, %124, %115, %72, %46
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IO_VALID(i32) #1

declare dso_local i32 @ip_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @imq_lock(i32*) #1

declare dso_local i32 @ip_active(%struct.TYPE_8__*) #1

declare dso_local i32 @ipc_port_set_mscount(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @imq_unlock(i32*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @ip_reference(%struct.TYPE_8__*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
