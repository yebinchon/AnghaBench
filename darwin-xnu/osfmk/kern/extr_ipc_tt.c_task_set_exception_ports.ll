; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_task_set_exception_ports.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_task_set_exception_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64* }

@EXC_TYPES_COUNT = common dso_local global i32 0, align 4
@TASK_NULL = common dso_local global %struct.TYPE_10__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@EXC_MASK_VALID = common dso_local global i32 0, align 4
@MACH_EXCEPTION_CODES = common dso_local global i32 0, align 4
@IP_NULL = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4
@FIRST_EXCEPTION = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_set_exception_ports(%struct.TYPE_10__* %0, i32 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %17 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i64, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = call %struct.TYPE_12__* (...) @current_task()
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %14, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** @TASK_NULL, align 8
  %31 = icmp eq %struct.TYPE_10__* %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %33, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %176

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
  br label %176

42:                                               ; preds = %34
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @IP_VALID(i64 %43)
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
  br label %176

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
  br label %176

64:                                               ; preds = %58, %55
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %66 = call i32 @itk_lock(%struct.TYPE_10__* %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @IP_NULL, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %74 = call i32 @itk_unlock(%struct.TYPE_10__* %73)
  %75 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %75, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %176

76:                                               ; preds = %64
  %77 = load i32, i32* @FIRST_EXCEPTION, align 4
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %139, %76
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %142

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %15, align 4
  %85 = shl i32 1, %84
  %86 = and i32 %83, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %133

88:                                               ; preds = %82
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %20, i64 %98
  store i64 %96, i64* %99, align 8
  %100 = load i64, i64* %9, align 8
  %101 = call i64 @ipc_port_copy_send(i64 %100)
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 3
  store i64 %101, i64* %108, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  store i32 %109, i32* %116, align 8
  %117 = load i64, i64* %11, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = load i32, i32* %15, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  store i64 %117, i64* %124, align 8
  %125 = load i32, i32* %14, align 4
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %127, align 8
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  store i32 %125, i32* %132, align 4
  br label %138

133:                                              ; preds = %82
  %134 = load i64, i64* @IP_NULL, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %20, i64 %136
  store i64 %134, i64* %137, align 8
  br label %138

138:                                              ; preds = %133, %88
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %15, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %15, align 4
  br label %78

142:                                              ; preds = %78
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %144 = call i32 @itk_unlock(%struct.TYPE_10__* %143)
  %145 = load i32, i32* @FIRST_EXCEPTION, align 4
  store i32 %145, i32* %15, align 4
  br label %146

146:                                              ; preds = %164, %142
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %167

150:                                              ; preds = %146
  %151 = load i32, i32* %15, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %20, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = call i64 @IP_VALID(i64 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %150
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %20, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @ipc_port_release_send(i64 %161)
  br label %163

163:                                              ; preds = %157, %150
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %15, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %15, align 4
  br label %146

167:                                              ; preds = %146
  %168 = load i64, i64* %9, align 8
  %169 = call i64 @IP_VALID(i64 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = load i64, i64* %9, align 8
  %173 = call i32 @ipc_port_release_send(i64 %172)
  br label %174

174:                                              ; preds = %171, %167
  %175 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %175, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %176

176:                                              ; preds = %174, %72, %62, %52, %40, %32
  %177 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %177)
  %178 = load i32, i32* %6, align 4
  ret i32 %178
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_12__* @current_task(...) #2

declare dso_local i64 @IP_VALID(i64) #2

declare dso_local i32 @VALID_THREAD_STATE_FLAVOR(i64) #2

declare dso_local i32 @itk_lock(%struct.TYPE_10__*) #2

declare dso_local i32 @itk_unlock(%struct.TYPE_10__*) #2

declare dso_local i64 @ipc_port_copy_send(i64) #2

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
