; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_thread_set_exception_ports.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_thread_set_exception_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32, i32, i64, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64* }

@EXC_TYPES_COUNT = common dso_local global i32 0, align 4
@THREAD_NULL = common dso_local global %struct.TYPE_11__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@EXC_MASK_VALID = common dso_local global i32 0, align 4
@MACH_EXCEPTION_CODES = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4
@FIRST_EXCEPTION = common dso_local global i32 0, align 4
@IP_NULL = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_set_exception_ports(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %17 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = call %struct.TYPE_13__* (...) @current_task()
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %14, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** @THREAD_NULL, align 8
  %31 = icmp eq %struct.TYPE_11__* %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %33, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %183

34:                                               ; preds = %5
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @EXC_MASK_VALID, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %41, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %183

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @IP_VALID(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @MACH_EXCEPTION_CODES, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  switch i32 %50, label %52 [
    i32 130, label %51
    i32 129, label %51
    i32 128, label %51
  ]

51:                                               ; preds = %46, %46, %46
  br label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %53, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %183

54:                                               ; preds = %51
  br label %55

55:                                               ; preds = %54, %42
  %56 = load i64, i64* %11, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @VALID_THREAD_STATE_FLAVOR(i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %63, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %183

64:                                               ; preds = %58, %55
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %66 = call i32 @thread_mtx_lock(%struct.TYPE_11__* %65)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %64
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %73 = call i32 @thread_mtx_unlock(%struct.TYPE_11__* %72)
  %74 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %74, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %183

75:                                               ; preds = %64
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = icmp eq %struct.TYPE_12__* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %82 = call i32 @ipc_thread_init_exc_actions(%struct.TYPE_11__* %81)
  br label %83

83:                                               ; preds = %80, %75
  %84 = load i32, i32* @FIRST_EXCEPTION, align 4
  store i32 %84, i32* %15, align 4
  br label %85

85:                                               ; preds = %146, %83
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %149

89:                                               ; preds = %85
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %15, align 4
  %92 = shl i32 1, %91
  %93 = and i32 %90, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %140

95:                                               ; preds = %89
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %20, i64 %105
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @ipc_port_copy_send(i32 %107)
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 3
  store i32 %108, i32* %115, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  store i32 %116, i32* %123, align 8
  %124 = load i64, i64* %11, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 2
  store i64 %124, i64* %131, align 8
  %132 = load i32, i32* %14, align 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = load i32, i32* %15, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  store i32 %132, i32* %139, align 4
  br label %145

140:                                              ; preds = %89
  %141 = load i32, i32* @IP_NULL, align 4
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %20, i64 %143
  store i32 %141, i32* %144, align 4
  br label %145

145:                                              ; preds = %140, %95
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %15, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %15, align 4
  br label %85

149:                                              ; preds = %85
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %151 = call i32 @thread_mtx_unlock(%struct.TYPE_11__* %150)
  %152 = load i32, i32* @FIRST_EXCEPTION, align 4
  store i32 %152, i32* %15, align 4
  br label %153

153:                                              ; preds = %171, %149
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %174

157:                                              ; preds = %153
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %20, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @IP_VALID(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %157
  %165 = load i32, i32* %15, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %20, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @ipc_port_release_send(i32 %168)
  br label %170

170:                                              ; preds = %164, %157
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %15, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %15, align 4
  br label %153

174:                                              ; preds = %153
  %175 = load i32, i32* %9, align 4
  %176 = call i64 @IP_VALID(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %174
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @ipc_port_release_send(i32 %179)
  br label %181

181:                                              ; preds = %178, %174
  %182 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %182, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %183

183:                                              ; preds = %181, %71, %62, %52, %40, %32
  %184 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %184)
  %185 = load i32, i32* %6, align 4
  ret i32 %185
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_13__* @current_task(...) #2

declare dso_local i64 @IP_VALID(i32) #2

declare dso_local i32 @VALID_THREAD_STATE_FLAVOR(i64) #2

declare dso_local i32 @thread_mtx_lock(%struct.TYPE_11__*) #2

declare dso_local i32 @thread_mtx_unlock(%struct.TYPE_11__*) #2

declare dso_local i32 @ipc_thread_init_exc_actions(%struct.TYPE_11__*) #2

declare dso_local i32 @ipc_port_copy_send(i32) #2

declare dso_local i32 @ipc_port_release_send(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
