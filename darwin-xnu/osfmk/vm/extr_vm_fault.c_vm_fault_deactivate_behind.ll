; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_fault.c_vm_fault_deactivate_behind.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_fault.c_vm_fault_deactivate_behind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, i32 }

@VM_DEFAULT_DEACTIVATE_BEHIND_CLUSTER = common dso_local global i32 0, align 4
@kernel_object = common dso_local global %struct.TYPE_10__* null, align 8
@vm_page_deactivate_behind = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE_64 = common dso_local global i32 0, align 4
@vm_default_behind = common dso_local global i32 0, align 4
@VM_PAGE_ON_THROTTLED_Q = common dso_local global i64 0, align 8
@VM_MEM_REFERENCED = common dso_local global i32 0, align 4
@PMAP_OPTIONS_NOFLUSH = common dso_local global i32 0, align 4
@vm_page_deactivate_behind_count = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i32, i32)* @vm_fault_deactivate_behind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vm_fault_deactivate_behind(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 128, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* @VM_DEFAULT_DEACTIVATE_BEHIND_CLUSTER, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %16, align 8
  %23 = alloca %struct.TYPE_9__*, i64 %21, align 16
  store i64 %21, i64* %17, align 8
  store i32 0, i32* %9, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kernel_object, align 8
  %26 = icmp eq %struct.TYPE_10__* %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %3
  %28 = load i64, i64* @vm_page_deactivate_behind, align 8
  %29 = load i64, i64* @FALSE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %3
  %32 = load i64, i64* @FALSE, align 8
  store i64 %32, i64* %4, align 8
  store i32 1, i32* %18, align 4
  br label %195

33:                                               ; preds = %27
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  store i32 129, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %11, align 4
  br label %45

44:                                               ; preds = %38
  store i32 128, i32* %12, align 4
  br label %45

45:                                               ; preds = %44, %41
  br label %46

46:                                               ; preds = %45, %33
  %47 = load i32, i32* %7, align 4
  switch i32 %47, label %65 [
    i32 130, label %48
    i32 128, label %49
    i32 129, label %57
    i32 131, label %64
  ]

48:                                               ; preds = %46
  br label %105

49:                                               ; preds = %46
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @PAGE_SIZE_64, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %13, align 4
  store i32 1, i32* %10, align 4
  br label %56

56:                                               ; preds = %53, %49
  br label %105

57:                                               ; preds = %46
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @PAGE_SIZE_64, align 4
  store i32 %62, i32* %13, align 4
  store i32 1, i32* %10, align 4
  br label %63

63:                                               ; preds = %61, %57
  br label %105

64:                                               ; preds = %46
  br label %65

65:                                               ; preds = %46, %64
  %66 = load i32, i32* @vm_default_behind, align 4
  %67 = load i32, i32* @PAGE_SIZE_64, align 4
  %68 = mul nsw i32 %66, %67
  store i32 %68, i32* %19, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %19, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %104

72:                                               ; preds = %65
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @VM_DEFAULT_DEACTIVATE_BEHIND_CLUSTER, align 4
  %75 = load i32, i32* @PAGE_SIZE, align 4
  %76 = mul nsw i32 %74, %75
  %77 = srem i32 %73, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %104

79:                                               ; preds = %72
  %80 = load i32, i32* %12, align 4
  %81 = icmp eq i32 %80, 128
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %19, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i32, i32* %19, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* @PAGE_SIZE_64, align 4
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* @VM_DEFAULT_DEACTIVATE_BEHIND_CLUSTER, align 4
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %86, %82
  br label %103

92:                                               ; preds = %79
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %19, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load i32, i32* %19, align 4
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* @PAGE_SIZE_64, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* @VM_DEFAULT_DEACTIVATE_BEHIND_CLUSTER, align 4
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %97, %92
  br label %103

103:                                              ; preds = %102, %91
  br label %104

104:                                              ; preds = %103, %72, %65
  br label %105

105:                                              ; preds = %104, %63, %56, %48
  store i32 0, i32* %8, align 4
  br label %106

106:                                              ; preds = %165, %105
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %168

110:                                              ; preds = %106
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %14, align 4
  %117 = mul nsw i32 %115, %116
  %118 = add nsw i32 %114, %117
  %119 = call %struct.TYPE_9__* @vm_page_lookup(%struct.TYPE_10__* %111, i32 %118)
  store %struct.TYPE_9__* %119, %struct.TYPE_9__** %15, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %121 = icmp ne %struct.TYPE_9__* %120, null
  br i1 %121, label %122, label %164

122:                                              ; preds = %110
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %164, label %127

127:                                              ; preds = %122
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %164, label %132

132:                                              ; preds = %127
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %164, label %137

137:                                              ; preds = %132
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @VM_PAGE_ON_THROTTLED_Q, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %164

143:                                              ; preds = %137
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %164, label %148

148:                                              ; preds = %143
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %164, label %153

153:                                              ; preds = %148
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %9, align 4
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %23, i64 %157
  store %struct.TYPE_9__* %154, %struct.TYPE_9__** %158, align 8
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %160 = call i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_9__* %159)
  %161 = load i32, i32* @VM_MEM_REFERENCED, align 4
  %162 = load i32, i32* @PMAP_OPTIONS_NOFLUSH, align 4
  %163 = call i32 @pmap_clear_refmod_options(i32 %160, i32 %161, i32 %162, i8* null)
  br label %164

164:                                              ; preds = %153, %148, %143, %137, %132, %127, %122, %110
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %8, align 4
  br label %106

168:                                              ; preds = %106
  %169 = load i32, i32* %9, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %193

171:                                              ; preds = %168
  %172 = call i32 (...) @vm_page_lockspin_queues()
  store i32 0, i32* %8, align 4
  br label %173

173:                                              ; preds = %187, %171
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* %9, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %190

177:                                              ; preds = %173
  %178 = load i32, i32* %8, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %23, i64 %179
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %180, align 8
  store %struct.TYPE_9__* %181, %struct.TYPE_9__** %15, align 8
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %183 = load i64, i64* @FALSE, align 8
  %184 = call i32 @vm_page_deactivate_internal(%struct.TYPE_9__* %182, i64 %183)
  %185 = load i32, i32* @vm_page_deactivate_behind_count, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* @vm_page_deactivate_behind_count, align 4
  br label %187

187:                                              ; preds = %177
  %188 = load i32, i32* %8, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %8, align 4
  br label %173

190:                                              ; preds = %173
  %191 = call i32 (...) @vm_page_unlock_queues()
  %192 = load i64, i64* @TRUE, align 8
  store i64 %192, i64* %4, align 8
  store i32 1, i32* %18, align 4
  br label %195

193:                                              ; preds = %168
  %194 = load i64, i64* @FALSE, align 8
  store i64 %194, i64* %4, align 8
  store i32 1, i32* %18, align 4
  br label %195

195:                                              ; preds = %193, %190, %31
  %196 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %196)
  %197 = load i64, i64* %4, align 8
  ret i64 %197
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_9__* @vm_page_lookup(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @pmap_clear_refmod_options(i32, i32, i32, i8*) #2

declare dso_local i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_9__*) #2

declare dso_local i32 @vm_page_lockspin_queues(...) #2

declare dso_local i32 @vm_page_deactivate_internal(%struct.TYPE_9__*, i64) #2

declare dso_local i32 @vm_page_unlock_queues(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
