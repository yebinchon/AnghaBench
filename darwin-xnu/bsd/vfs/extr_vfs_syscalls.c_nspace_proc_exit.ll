; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_nspace_proc_exit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_nspace_proc_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.proc*, i64 }
%struct.proc = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_5__ = type { i32 }

@NSPACE_HANDLER_COUNT = common dso_local global i32 0, align 4
@nspace_handlers = common dso_local global %struct.TYPE_7__* null, align 8
@nspace_handler_lock = common dso_local global i32 0, align 4
@NSPACE_ITEM_SNAPSHOT_EVENT = common dso_local global i32 0, align 4
@snapshot_timestamp = common dso_local global i64 0, align 8
@MAX_NSPACE_ITEMS = common dso_local global i32 0, align 4
@nspace_items = common dso_local global %struct.TYPE_6__* null, align 8
@NSPACE_ITEM_NEW = common dso_local global i32 0, align 4
@NSPACE_ITEM_PROCESSING = common dso_local global i32 0, align 4
@VNEEDSSNAPSHOT = common dso_local global i32 0, align 4
@NSPACE_ITEM_DONE = common dso_local global i32 0, align 4
@nspace_item_idx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nspace_proc_exit(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %34, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @NSPACE_HANDLER_COUNT, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %37

9:                                                ; preds = %5
  %10 = load %struct.proc*, %struct.proc** %2, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @nspace_handlers, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.proc*, %struct.proc** %15, align 8
  %17 = icmp eq %struct.proc* %10, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %9
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @nspace_item_flags_for_type(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @nspace_handlers, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @nspace_handlers, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store %struct.proc* null, %struct.proc** %32, align 8
  br label %33

33:                                               ; preds = %18, %9
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %5

37:                                               ; preds = %5
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %158

41:                                               ; preds = %37
  %42 = call i32 @lck_mtx_lock(i32* @nspace_handler_lock)
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @NSPACE_ITEM_SNAPSHOT_EVENT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i64 0, i64* @snapshot_timestamp, align 8
  br label %48

48:                                               ; preds = %47, %41
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %152, %48
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @MAX_NSPACE_ITEMS, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %155

53:                                               ; preds = %49
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nspace_items, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @NSPACE_ITEM_NEW, align 4
  %61 = load i32, i32* @NSPACE_ITEM_PROCESSING, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %151

65:                                               ; preds = %53
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nspace_items, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %150

75:                                               ; preds = %65
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nspace_items, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = icmp ne %struct.TYPE_5__* %81, null
  br i1 %82, label %83, label %121

83:                                               ; preds = %75
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nspace_items, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @VNEEDSSNAPSHOT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %121

95:                                               ; preds = %83
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nspace_items, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = call i32 @vnode_lock_spin(%struct.TYPE_5__* %101)
  %103 = load i32, i32* @VNEEDSSNAPSHOT, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nspace_items, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, %104
  store i32 %113, i32* %111, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nspace_items, align 8
  %115 = load i32, i32* %3, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = call i32 @vnode_unlock(%struct.TYPE_5__* %119)
  br label %121

121:                                              ; preds = %95, %83, %75
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nspace_items, align 8
  %123 = load i32, i32* %3, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %126, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nspace_items, align 8
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 3
  store i64 0, i64* %131, align 8
  %132 = load i32, i32* @NSPACE_ITEM_DONE, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nspace_items, align 8
  %134 = load i32, i32* %3, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  store i32 %132, i32* %137, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nspace_items, align 8
  %139 = load i32, i32* %3, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  store i64 0, i64* %142, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nspace_items, align 8
  %144 = load i32, i32* %3, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = ptrtoint %struct.TYPE_5__** %147 to i32
  %149 = call i32 @wakeup(i32 %148)
  br label %150

150:                                              ; preds = %121, %65
  br label %151

151:                                              ; preds = %150, %53
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %3, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %3, align 4
  br label %49

155:                                              ; preds = %49
  %156 = call i32 @wakeup(i32 ptrtoint (i32* @nspace_item_idx to i32))
  %157 = call i32 @lck_mtx_unlock(i32* @nspace_handler_lock)
  br label %158

158:                                              ; preds = %155, %40
  ret void
}

declare dso_local i32 @nspace_item_flags_for_type(i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @vnode_lock_spin(%struct.TYPE_5__*) #1

declare dso_local i32 @vnode_unlock(%struct.TYPE_5__*) #1

declare dso_local i32 @wakeup(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
