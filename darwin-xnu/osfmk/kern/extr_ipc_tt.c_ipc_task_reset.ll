; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_ipc_task_reset.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_ipc_task_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32 }

@EXC_TYPES_COUNT = common dso_local global i32 0, align 4
@IP_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"ipc_task_reset\00", align 1
@IKO_NULL = common dso_local global i32 0, align 4
@IKOT_NONE = common dso_local global i32 0, align 4
@IKOT_TASK = common dso_local global i32 0, align 4
@FIRST_EXCEPTION = common dso_local global i32 0, align 4
@EXC_CORPSE_NOTIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_task_reset(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %10 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i64, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = call i64 (...) @ipc_port_alloc_kernel()
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @IP_NULL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @panic(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = call i32 @itk_lock(%struct.TYPE_7__* %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @IP_NULL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = call i32 @itk_unlock(%struct.TYPE_7__* %30)
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @ipc_port_dealloc_kernel(i64 %32)
  store i32 1, i32* %9, align 4
  br label %163

34:                                               ; preds = %20
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i64 @ipc_port_make_send(i64 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @ip_lock(i64 %45)
  %47 = load i64, i64* %3, align 8
  %48 = load i32, i32* @IKO_NULL, align 4
  %49 = load i32, i32* @IKOT_NONE, align 4
  %50 = call i32 @ipc_kobject_set_atomically(i64 %47, i32 %48, i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = load i64, i64* %3, align 8
  %56 = call i32 @ip_unlock(i64 %55)
  %57 = load i64, i64* %4, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %59 = ptrtoint %struct.TYPE_7__* %58 to i32
  %60 = load i32, i32* @IKOT_TASK, align 4
  %61 = call i32 @ipc_kobject_set(i64 %57, i32 %59, i32 %60)
  %62 = load i32, i32* @FIRST_EXCEPTION, align 4
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %111, %34
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %114

67:                                               ; preds = %63
  %68 = load i64, i64* @IP_NULL, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %13, i64 %70
  store i64 %68, i64* %71, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @EXC_CORPSE_NOTIFY, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %67
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %77 = call i64 @task_corpse_pending_report(%struct.TYPE_7__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %111

80:                                               ; preds = %75, %67
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %110, label %90

90:                                               ; preds = %80
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %13, i64 %100
  store i64 %98, i64* %101, align 8
  %102 = load i64, i64* @IP_NULL, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  store i64 %102, i64* %109, align 8
  br label %110

110:                                              ; preds = %90, %80
  br label %111

111:                                              ; preds = %110, %79
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %63

114:                                              ; preds = %63
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @IP_VALID(i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %114
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @ipc_port_release_send(i64 %123)
  br label %125

125:                                              ; preds = %120, %114
  %126 = load i64, i64* @IP_NULL, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 3
  store i64 %126, i64* %128, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %130 = call i32 @itk_unlock(%struct.TYPE_7__* %129)
  %131 = load i64, i64* %5, align 8
  %132 = call i64 @IP_VALID(i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %125
  %135 = load i64, i64* %5, align 8
  %136 = call i32 @ipc_port_release_send(i64 %135)
  br label %137

137:                                              ; preds = %134, %125
  %138 = load i32, i32* @FIRST_EXCEPTION, align 4
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %157, %137
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %160

143:                                              ; preds = %139
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %13, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = call i64 @IP_VALID(i64 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %143
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %13, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @ipc_port_release_send(i64 %154)
  br label %156

156:                                              ; preds = %150, %143
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %8, align 4
  br label %139

160:                                              ; preds = %139
  %161 = load i64, i64* %3, align 8
  %162 = call i32 @ipc_port_dealloc_kernel(i64 %161)
  store i32 0, i32* %9, align 4
  br label %163

163:                                              ; preds = %160, %29
  %164 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %164)
  %165 = load i32, i32* %9, align 4
  switch i32 %165, label %167 [
    i32 0, label %166
    i32 1, label %166
  ]

166:                                              ; preds = %163, %163
  ret void

167:                                              ; preds = %163
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ipc_port_alloc_kernel(...) #2

declare dso_local i32 @panic(i8*) #2

declare dso_local i32 @itk_lock(%struct.TYPE_7__*) #2

declare dso_local i32 @itk_unlock(%struct.TYPE_7__*) #2

declare dso_local i32 @ipc_port_dealloc_kernel(i64) #2

declare dso_local i64 @ipc_port_make_send(i64) #2

declare dso_local i32 @ip_lock(i64) #2

declare dso_local i32 @ipc_kobject_set_atomically(i64, i32, i32) #2

declare dso_local i32 @ip_unlock(i64) #2

declare dso_local i32 @ipc_kobject_set(i64, i32, i32) #2

declare dso_local i64 @task_corpse_pending_report(%struct.TYPE_7__*) #2

declare dso_local i64 @IP_VALID(i64) #2

declare dso_local i32 @ipc_port_release_send(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
