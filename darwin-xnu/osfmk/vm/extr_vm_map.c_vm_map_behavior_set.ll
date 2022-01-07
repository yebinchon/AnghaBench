; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_behavior_set.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_behavior_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_6__*, i32, i32, i32 }

@XPR_VM_MAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"vm_map_behavior_set, 0x%X start 0x%X end 0x%X behavior %d\00", align 1
@KERN_NO_SPACE = common dso_local global i32 0, align 4
@KERN_INVALID_ADDRESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@VM_SYNC_DEACTIVATE = common dso_local global i32 0, align 4
@VM_SYNC_CONTIGUOUS = common dso_local global i32 0, align 4
@VM_SYNC_KILLPAGES = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_behavior_set(i32 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @XPR_VM_MAP, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @XPR(i32 %12, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %14, i64 %15, i32 %16, i32 0)
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %31, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @vm_map_min(i32 %23)
  %25 = icmp slt i64 %22, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @vm_map_max(i32 %28)
  %30 = icmp sgt i64 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %21, %4
  %32 = load i32, i32* @KERN_NO_SPACE, align 4
  store i32 %32, i32* %5, align 4
  br label %146

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  switch i32 %34, label %142 [
    i32 138, label %35
    i32 134, label %35
    i32 130, label %35
    i32 131, label %35
    i32 128, label %35
    i32 129, label %102
    i32 137, label %107
    i32 136, label %117
    i32 133, label %127
    i32 132, label %132
    i32 139, label %137
  ]

35:                                               ; preds = %33, %33, %33, %33, %33
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @vm_map_lock(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @vm_map_range_check(i32 %38, i64 %39, i64 %40, %struct.TYPE_6__** %11)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %10, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @vm_map_clip_start(i32 %45, %struct.TYPE_6__* %46, i64 %47)
  br label %53

49:                                               ; preds = %35
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @vm_map_unlock(i32 %50)
  %52 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %52, i32* %5, align 4
  br label %146

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %95, %53
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call %struct.TYPE_6__* @vm_map_to_entry(i32 %56)
  %58 = icmp ne %struct.TYPE_6__* %55, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp slt i64 %62, %63
  br label %65

65:                                               ; preds = %59, %54
  %66 = phi i1 [ false, %54 ], [ %64, %59 ]
  br i1 %66, label %67, label %99

67:                                               ; preds = %65
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @vm_map_clip_end(i32 %68, %struct.TYPE_6__* %69, i64 %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %67
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  br label %84

84:                                               ; preds = %76, %67
  %85 = load i32, i32* %9, align 4
  %86 = icmp eq i32 %85, 128
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, i32* @TRUE, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  br label %95

91:                                               ; preds = %84
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %91, %87
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  store %struct.TYPE_6__* %98, %struct.TYPE_6__** %10, align 8
  br label %54

99:                                               ; preds = %65
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @vm_map_unlock(i32 %100)
  br label %144

102:                                              ; preds = %33
  %103 = load i32, i32* %6, align 4
  %104 = load i64, i64* %7, align 8
  %105 = load i64, i64* %8, align 8
  %106 = call i32 @vm_map_willneed(i32 %103, i64 %104, i64 %105)
  store i32 %106, i32* %5, align 4
  br label %146

107:                                              ; preds = %33
  %108 = load i32, i32* %6, align 4
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load i64, i64* %7, align 8
  %112 = sub nsw i64 %110, %111
  %113 = load i32, i32* @VM_SYNC_DEACTIVATE, align 4
  %114 = load i32, i32* @VM_SYNC_CONTIGUOUS, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @vm_map_msync(i32 %108, i64 %109, i64 %112, i32 %115)
  store i32 %116, i32* %5, align 4
  br label %146

117:                                              ; preds = %33
  %118 = load i32, i32* %6, align 4
  %119 = load i64, i64* %7, align 8
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* %7, align 8
  %122 = sub nsw i64 %120, %121
  %123 = load i32, i32* @VM_SYNC_KILLPAGES, align 4
  %124 = load i32, i32* @VM_SYNC_CONTIGUOUS, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @vm_map_msync(i32 %118, i64 %119, i64 %122, i32 %125)
  store i32 %126, i32* %5, align 4
  br label %146

127:                                              ; preds = %33
  %128 = load i32, i32* %6, align 4
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* %8, align 8
  %131 = call i32 @vm_map_reusable_pages(i32 %128, i64 %129, i64 %130)
  store i32 %131, i32* %5, align 4
  br label %146

132:                                              ; preds = %33
  %133 = load i32, i32* %6, align 4
  %134 = load i64, i64* %7, align 8
  %135 = load i64, i64* %8, align 8
  %136 = call i32 @vm_map_reuse_pages(i32 %133, i64 %134, i64 %135)
  store i32 %136, i32* %5, align 4
  br label %146

137:                                              ; preds = %33
  %138 = load i32, i32* %6, align 4
  %139 = load i64, i64* %7, align 8
  %140 = load i64, i64* %8, align 8
  %141 = call i32 @vm_map_can_reuse(i32 %138, i64 %139, i64 %140)
  store i32 %141, i32* %5, align 4
  br label %146

142:                                              ; preds = %33
  %143 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %143, i32* %5, align 4
  br label %146

144:                                              ; preds = %99
  %145 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %144, %142, %137, %132, %127, %117, %107, %102, %49, %31
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i32 @XPR(i32, i8*, i32, i64, i64, i32, i32) #1

declare dso_local i64 @vm_map_min(i32) #1

declare dso_local i64 @vm_map_max(i32) #1

declare dso_local i32 @vm_map_lock(i32) #1

declare dso_local i32 @vm_map_range_check(i32, i64, i64, %struct.TYPE_6__**) #1

declare dso_local i32 @vm_map_clip_start(i32, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @vm_map_unlock(i32) #1

declare dso_local %struct.TYPE_6__* @vm_map_to_entry(i32) #1

declare dso_local i32 @vm_map_clip_end(i32, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_map_willneed(i32, i64, i64) #1

declare dso_local i32 @vm_map_msync(i32, i64, i64, i32) #1

declare dso_local i32 @vm_map_reusable_pages(i32, i64, i64) #1

declare dso_local i32 @vm_map_reuse_pages(i32, i64, i64) #1

declare dso_local i32 @vm_map_can_reuse(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
