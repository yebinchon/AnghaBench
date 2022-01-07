; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_thread_update_waiting_turnstile_priority_chain.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_thread_update_waiting_turnstile_priority_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@TURNSTILE_NULL = common dso_local global %struct.turnstile* null, align 8
@THREAD_NULL = common dso_local global i32 0, align 4
@turnstile_max_hop = common dso_local global i32 0, align 4
@KDEBUG_TRACE = common dso_local global i32 0, align 4
@TURNSTILE_HEAP_OPERATIONS = common dso_local global i32 0, align 4
@TURNSTILE_UPDATE_STOPPED_BY_LIMIT = common dso_local global i32 0, align 4
@THREAD_NOT_WAITING_ON_TURNSTILE = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@TSU_NO_TURNSTILE = common dso_local global i32 0, align 4
@TSU_THREAD_ARG = common dso_local global i32 0, align 4
@TSU_NO_PRI_CHANGE_NEEDED = common dso_local global i32 0, align 4
@TSU_NO_INHERITOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.turnstile**, i32, i32, i32)* @thread_update_waiting_turnstile_priority_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_update_waiting_turnstile_priority_chain(i32* %0, %struct.turnstile** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.turnstile**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.turnstile*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.turnstile** %1, %struct.turnstile*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  %19 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  store %struct.turnstile* %19, %struct.turnstile** %13, align 8
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* @THREAD_NULL, align 4
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call %struct.turnstile* @thread_get_waiting_turnstile(i32 %26)
  store %struct.turnstile* %27, %struct.turnstile** %13, align 8
  %28 = load %struct.turnstile*, %struct.turnstile** %13, align 8
  %29 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  %30 = icmp eq %struct.turnstile* %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @turnstile_max_hop, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %67

35:                                               ; preds = %31, %5
  %36 = load i32, i32* @KDEBUG_TRACE, align 4
  %37 = load i32, i32* @TURNSTILE_HEAP_OPERATIONS, align 4
  %38 = load %struct.turnstile*, %struct.turnstile** %13, align 8
  %39 = icmp ne %struct.turnstile* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @TURNSTILE_UPDATE_STOPPED_BY_LIMIT, align 4
  br label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @THREAD_NOT_WAITING_ON_TURNSTILE, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = call i32 @TURNSTILE_CODE(i32 %37, i32 %45)
  %47 = load i32, i32* @DBG_FUNC_NONE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @thread_tid(i32 %49)
  %51 = load i32, i32* @turnstile_max_hop, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.turnstile*, %struct.turnstile** %13, align 8
  %54 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.turnstile* %53)
  %55 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %36, i32 %48, i32 %50, i32 %51, i32 %52, i32 %54, i32 0)
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* @TSU_NO_TURNSTILE, align 4
  %59 = load i32, i32* @TSU_THREAD_ARG, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %10, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @turnstile_stats_update(i32 %57, i32 %62, i32 %63)
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @thread_unlock(i32 %65)
  br label %172

67:                                               ; preds = %31
  %68 = load %struct.turnstile*, %struct.turnstile** %13, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @turnstile_need_thread_promotion_update(%struct.turnstile* %68, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %88, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  %79 = load i32, i32* @TSU_NO_PRI_CHANGE_NEEDED, align 4
  %80 = load i32, i32* @TSU_THREAD_ARG, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %10, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @turnstile_stats_update(i32 %78, i32 %83, i32 %84)
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @thread_unlock(i32 %86)
  br label %172

88:                                               ; preds = %73, %67
  %89 = load %struct.turnstile*, %struct.turnstile** %13, align 8
  %90 = call i64 @turnstile_get_gencount(%struct.turnstile* %89)
  store i64 %90, i64* %14, align 8
  %91 = load %struct.turnstile*, %struct.turnstile** %13, align 8
  %92 = call i32 @turnstile_reference(%struct.turnstile* %91)
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @thread_reference(i32 %93)
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @thread_unlock(i32 %95)
  %97 = load %struct.turnstile*, %struct.turnstile** %13, align 8
  %98 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %97, i32 0, i32 0
  %99 = call i32 @waitq_lock(i32* %98)
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @thread_lock(i32 %100)
  %102 = load i64, i64* %14, align 8
  %103 = load %struct.turnstile*, %struct.turnstile** %13, align 8
  %104 = call i64 @turnstile_get_gencount(%struct.turnstile* %103)
  %105 = icmp ne i64 %102, %104
  br i1 %105, label %111, label %106

106:                                              ; preds = %88
  %107 = load %struct.turnstile*, %struct.turnstile** %13, align 8
  %108 = load i32, i32* %12, align 4
  %109 = call %struct.turnstile* @thread_get_waiting_turnstile(i32 %108)
  %110 = icmp ne %struct.turnstile* %107, %109
  br i1 %110, label %111, label %130

111:                                              ; preds = %106, %88
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  %114 = load i32, i32* @TSU_NO_PRI_CHANGE_NEEDED, align 4
  %115 = load i32, i32* @TSU_THREAD_ARG, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* %10, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @turnstile_stats_update(i32 %113, i32 %118, i32 %119)
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @thread_unlock(i32 %121)
  %123 = load %struct.turnstile*, %struct.turnstile** %13, align 8
  %124 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %123, i32 0, i32 0
  %125 = call i32 @waitq_unlock(i32* %124)
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @thread_deallocate_safe(i32 %126)
  %128 = load %struct.turnstile*, %struct.turnstile** %13, align 8
  %129 = call i32 @turnstile_deallocate_safe(%struct.turnstile* %128)
  br label %172

130:                                              ; preds = %106
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @thread_deallocate_safe(i32 %131)
  %133 = load %struct.turnstile*, %struct.turnstile** %13, align 8
  %134 = call i32 @turnstile_deallocate_safe(%struct.turnstile* %133)
  %135 = load %struct.turnstile*, %struct.turnstile** %13, align 8
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @turnstile_update_thread_promotion_locked(%struct.turnstile* %135, i32 %136)
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %167, label %140

140:                                              ; preds = %130
  %141 = load i32, i32* %15, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %167, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 1
  %146 = load %struct.turnstile*, %struct.turnstile** %13, align 8
  %147 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %143
  %151 = load i32, i32* @TSU_NO_PRI_CHANGE_NEEDED, align 4
  br label %154

152:                                              ; preds = %143
  %153 = load i32, i32* @TSU_NO_INHERITOR, align 4
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i32 [ %151, %150 ], [ %153, %152 ]
  %156 = load i32, i32* @TSU_THREAD_ARG, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* %10, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* %12, align 4
  %161 = call i32 @turnstile_stats_update(i32 %145, i32 %159, i32 %160)
  %162 = load i32, i32* %12, align 4
  %163 = call i32 @thread_unlock(i32 %162)
  %164 = load %struct.turnstile*, %struct.turnstile** %13, align 8
  %165 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %164, i32 0, i32 0
  %166 = call i32 @waitq_unlock(i32* %165)
  br label %172

167:                                              ; preds = %140, %130
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @thread_unlock(i32 %168)
  %170 = load %struct.turnstile*, %struct.turnstile** %13, align 8
  %171 = load %struct.turnstile**, %struct.turnstile*** %7, align 8
  store %struct.turnstile* %170, %struct.turnstile** %171, align 8
  br label %172

172:                                              ; preds = %167, %154, %111, %76, %44
  ret void
}

declare dso_local %struct.turnstile* @thread_get_waiting_turnstile(i32) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @TURNSTILE_CODE(i32, i32) #1

declare dso_local i32 @thread_tid(i32) #1

declare dso_local i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.turnstile*) #1

declare dso_local i32 @turnstile_stats_update(i32, i32, i32) #1

declare dso_local i32 @thread_unlock(i32) #1

declare dso_local i32 @turnstile_need_thread_promotion_update(%struct.turnstile*, i32) #1

declare dso_local i64 @turnstile_get_gencount(%struct.turnstile*) #1

declare dso_local i32 @turnstile_reference(%struct.turnstile*) #1

declare dso_local i32 @thread_reference(i32) #1

declare dso_local i32 @waitq_lock(i32*) #1

declare dso_local i32 @thread_lock(i32) #1

declare dso_local i32 @waitq_unlock(i32*) #1

declare dso_local i32 @thread_deallocate_safe(i32) #1

declare dso_local i32 @turnstile_deallocate_safe(%struct.turnstile*) #1

declare dso_local i32 @turnstile_update_thread_promotion_locked(%struct.turnstile*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
