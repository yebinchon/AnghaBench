; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_zone_replenish_thread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_zone_replenish_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i32 }
%struct.TYPE_10__ = type { i32 }

@TH_OPT_VMPRIV = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@KMA_KOBJECT = common dso_local global i32 0, align 4
@KMA_NOPAGEWAIT = common dso_local global i32 0, align 4
@KMA_NOENCRYPT = common dso_local global i32 0, align 4
@vm_pageout_garbage_collect = common dso_local global i32 0, align 4
@zone_map = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_ZONE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@KERN_RESOURCE_SHORTAGE = common dso_local global i64 0, align 8
@KERN_NO_SPACE = common dso_local global i64 0, align 8
@kernel_map = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@zone_replenish_loops = common dso_local global i32 0, align 4
@zone_replenish_wakeups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @zone_replenish_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @zone_replenish_thread(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %8 = load i32, i32* @TH_OPT_VMPRIV, align 4
  %9 = call %struct.TYPE_10__* (...) @current_thread()
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 4
  br label %13

13:                                               ; preds = %160, %1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = call i32 @lock_zone(%struct.TYPE_9__* %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @assert(i32 %18)
  %20 = load i64, i64* @TRUE, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 9
  store i64 %20, i64* %22, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  br label %29

29:                                               ; preds = %151, %13
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %35, %38
  %40 = sub nsw i32 %32, %39
  store i32 %40, i32* %3, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %43, %46
  %48 = icmp slt i32 %40, %47
  br i1 %48, label %49, label %160

49:                                               ; preds = %29
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @FALSE, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @FALSE, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @TRUE, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %72 = call i32 @unlock_zone(%struct.TYPE_9__* %71)
  %73 = load i32, i32* @KMA_KOBJECT, align 4
  %74 = load i32, i32* @KMA_NOPAGEWAIT, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %4, align 4
  %76 = call i64 (...) @vm_pool_low()
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %49
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @round_page(i32 %81)
  store i32 %82, i32* %6, align 4
  br label %87

83:                                               ; preds = %49
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 11
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %83, %78
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 10
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i32, i32* @KMA_NOENCRYPT, align 4
  %94 = load i32, i32* %4, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %92, %87
  %97 = call i64 (...) @is_zone_map_nearing_exhaustion()
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = call i32 @thread_wakeup(%struct.TYPE_9__* bitcast (i32* @vm_pageout_garbage_collect to %struct.TYPE_9__*))
  br label %101

101:                                              ; preds = %99, %96
  %102 = load i32, i32* @zone_map, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @VM_KERN_MEMORY_ZONE, align 4
  %106 = call i64 @kernel_memory_allocate(i32 %102, i32* %5, i32 %103, i32 0, i32 %104, i32 %105)
  store i64 %106, i64* %7, align 8
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* @KERN_SUCCESS, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %101
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @zcram(%struct.TYPE_9__* %111, i32 %112, i32 %113)
  br label %151

115:                                              ; preds = %101
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* @KERN_RESOURCE_SHORTAGE, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = call i32 (...) @VM_PAGE_WAIT()
  br label %150

121:                                              ; preds = %115
  %122 = load i64, i64* %7, align 8
  %123 = load i64, i64* @KERN_NO_SPACE, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %149

125:                                              ; preds = %121
  %126 = load i32, i32* @kernel_map, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @VM_KERN_MEMORY_ZONE, align 4
  %130 = call i64 @kernel_memory_allocate(i32 %126, i32* %5, i32 %127, i32 0, i32 %128, i32 %129)
  store i64 %130, i64* %7, align 8
  %131 = load i64, i64* %7, align 8
  %132 = load i64, i64* @KERN_SUCCESS, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %125
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @zcram(%struct.TYPE_9__* %135, i32 %136, i32 %137)
  br label %148

139:                                              ; preds = %125
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 8
  %142 = load i32, i32* @THREAD_UNINT, align 4
  %143 = load i32, i32* @NSEC_PER_USEC, align 4
  %144 = mul nsw i32 100, %143
  %145 = call i32 @assert_wait_timeout(i32* %141, i32 %142, i32 1, i32 %144)
  %146 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %147 = call i32 @thread_block(i32 %146)
  br label %148

148:                                              ; preds = %139, %134
  br label %149

149:                                              ; preds = %148, %121
  br label %150

150:                                              ; preds = %149, %119
  br label %151

151:                                              ; preds = %150, %110
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %153 = call i32 @lock_zone(%struct.TYPE_9__* %152)
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @assert(i32 %156)
  %158 = load i32, i32* @zone_replenish_loops, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* @zone_replenish_loops, align 4
  br label %29

160:                                              ; preds = %29
  %161 = load i64, i64* @FALSE, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 9
  store i64 %161, i64* %163, align 8
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %165 = call i32 @thread_wakeup(%struct.TYPE_9__* %164)
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 8
  %168 = load i32, i32* @THREAD_UNINT, align 4
  %169 = call i32 @assert_wait(i32* %167, i32 %168)
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %171 = call i32 @unlock_zone(%struct.TYPE_9__* %170)
  %172 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %173 = call i32 @thread_block(i32 %172)
  %174 = load i32, i32* @zone_replenish_wakeups, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* @zone_replenish_wakeups, align 4
  br label %13
}

declare dso_local %struct.TYPE_10__* @current_thread(...) #1

declare dso_local i32 @lock_zone(%struct.TYPE_9__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @unlock_zone(%struct.TYPE_9__*) #1

declare dso_local i64 @vm_pool_low(...) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i64 @is_zone_map_nearing_exhaustion(...) #1

declare dso_local i32 @thread_wakeup(%struct.TYPE_9__*) #1

declare dso_local i64 @kernel_memory_allocate(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @zcram(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @VM_PAGE_WAIT(...) #1

declare dso_local i32 @assert_wait_timeout(i32*, i32, i32, i32) #1

declare dso_local i32 @thread_block(i32) #1

declare dso_local i32 @assert_wait(i32*, i32) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
