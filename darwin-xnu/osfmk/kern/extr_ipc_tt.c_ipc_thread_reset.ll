; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_ipc_thread_reset.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_ipc_thread_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }

@EXC_TYPES_COUNT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@IP_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"ipc_task_reset\00", align 1
@IKO_NULL = common dso_local global i32 0, align 4
@IKOT_NONE = common dso_local global i32 0, align 4
@IKOT_THREAD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FIRST_EXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_thread_reset(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %11 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i64, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %8, align 8
  %16 = call i64 (...) @ipc_port_alloc_kernel()
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @IP_NULL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 @panic(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = call i32 @thread_mtx_lock(%struct.TYPE_7__* %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @IP_NULL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %22
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FALSE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = call i32 @thread_mtx_unlock(%struct.TYPE_7__* %38)
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @ipc_port_dealloc_kernel(i64 %40)
  store i32 1, i32* %10, align 4
  br label %164

42:                                               ; preds = %31, %22
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %4, align 8
  %50 = call i64 @ipc_port_make_send(i64 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* @IP_NULL, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %42
  %57 = load i64, i64* %3, align 8
  %58 = load i32, i32* @IKO_NULL, align 4
  %59 = load i32, i32* @IKOT_NONE, align 4
  %60 = call i32 @ipc_kobject_set(i64 %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %42
  %62 = load i64, i64* %4, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %64 = ptrtoint %struct.TYPE_7__* %63 to i32
  %65 = load i32, i32* @IKOT_THREAD, align 4
  %66 = call i32 @ipc_kobject_set(i64 %62, i32 %64, i32 %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = icmp ne %struct.TYPE_8__* %69, null
  br i1 %70, label %71, label %118

71:                                               ; preds = %61
  %72 = load i64, i64* @TRUE, align 8
  store i64 %72, i64* %8, align 8
  %73 = load i32, i32* @FIRST_EXCEPTION, align 4
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %114, %71
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %117

78:                                               ; preds = %74
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %78
  %89 = load i64, i64* @IP_NULL, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %14, i64 %91
  store i64 %89, i64* %92, align 8
  br label %113

93:                                               ; preds = %78
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %14, i64 %103
  store i64 %101, i64* %104, align 8
  %105 = load i64, i64* @IP_NULL, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  store i64 %105, i64* %112, align 8
  br label %113

113:                                              ; preds = %93, %88
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %74

117:                                              ; preds = %74
  br label %118

118:                                              ; preds = %117, %61
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %120 = call i32 @thread_mtx_unlock(%struct.TYPE_7__* %119)
  %121 = load i64, i64* %5, align 8
  %122 = call i64 @IP_VALID(i64 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load i64, i64* %5, align 8
  %126 = call i32 @ipc_port_release_send(i64 %125)
  br label %127

127:                                              ; preds = %124, %118
  %128 = load i64, i64* %8, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %127
  %131 = load i32, i32* @FIRST_EXCEPTION, align 4
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %142, %130
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %132
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %14, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @ipc_port_release_send(i64 %140)
  br label %142

142:                                              ; preds = %136
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  br label %132

145:                                              ; preds = %132
  br label %146

146:                                              ; preds = %145, %127
  %147 = load i64, i64* %3, align 8
  %148 = load i64, i64* @IP_NULL, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load i64, i64* %3, align 8
  %152 = call i32 @ipc_port_dealloc_kernel(i64 %151)
  br label %153

153:                                              ; preds = %150, %146
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = call i64 @IP_VALID(i64 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %161 = load i64, i64* @TRUE, align 8
  %162 = call i32 @ipc_port_unbind_special_reply_port(%struct.TYPE_7__* %160, i64 %161)
  br label %163

163:                                              ; preds = %159, %153
  store i32 0, i32* %10, align 4
  br label %164

164:                                              ; preds = %163, %37
  %165 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %165)
  %166 = load i32, i32* %10, align 4
  switch i32 %166, label %168 [
    i32 0, label %167
    i32 1, label %167
  ]

167:                                              ; preds = %164, %164
  ret void

168:                                              ; preds = %164
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ipc_port_alloc_kernel(...) #2

declare dso_local i32 @panic(i8*) #2

declare dso_local i32 @thread_mtx_lock(%struct.TYPE_7__*) #2

declare dso_local i32 @thread_mtx_unlock(%struct.TYPE_7__*) #2

declare dso_local i32 @ipc_port_dealloc_kernel(i64) #2

declare dso_local i64 @ipc_port_make_send(i64) #2

declare dso_local i32 @ipc_kobject_set(i64, i32, i32) #2

declare dso_local i64 @IP_VALID(i64) #2

declare dso_local i32 @ipc_port_release_send(i64) #2

declare dso_local i32 @ipc_port_unbind_special_reply_port(%struct.TYPE_7__*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
