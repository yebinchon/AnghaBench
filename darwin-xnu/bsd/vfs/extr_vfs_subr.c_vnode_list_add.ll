; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_list_add.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i32, i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@VL_TERMINATE = common dso_local global i32 0, align 4
@VL_DEAD = common dso_local global i32 0, align 4
@BUF_INVALIDATE_LOCKED = common dso_local global i32 0, align 4
@VRAGE = common dso_local global i32 0, align 4
@VAGE = common dso_local global i32 0, align 4
@vnode_rage_list = common dso_local global i32 0, align 4
@v_freelist = common dso_local global i32 0, align 4
@VLIST_RAGE = common dso_local global i32 0, align 4
@ragevnodes = common dso_local global i32 0, align 4
@rage_tv = common dso_local global i32 0, align 4
@vnode_dead_list = common dso_local global i32 0, align 4
@VLIST_DEAD = common dso_local global i32 0, align 4
@deadvnodes = common dso_local global i32 0, align 4
@dead_vnode_wanted = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@vnode_free_list = common dso_local global i32 0, align 4
@freevnodes = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @vnode_list_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnode_list_add(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %4 = load i64, i64* @FALSE, align 8
  store i64 %4, i64* %3, align 8
  br label %5

5:                                                ; preds = %44, %1
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = call i64 @VONLIST(%struct.TYPE_11__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %9
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @VL_TERMINATE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %14, %9, %5
  br label %156

27:                                               ; preds = %19
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @VL_DEAD, align 4
  %32 = call i64 @ISSET(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %27
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 6
  %37 = call i32 @LIST_EMPTY(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 5
  %42 = call i32 @LIST_EMPTY(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %50 = call i32 @vnode_unlock(%struct.TYPE_11__* %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = load i32, i32* @BUF_INVALIDATE_LOCKED, align 4
  %53 = call i32 @buf_invalidateblks(%struct.TYPE_11__* %51, i32 %52, i32 0, i32 0)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %55 = call i32 @vnode_lock(%struct.TYPE_11__* %54)
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %57 = call i32 @vnode_dropiocount(%struct.TYPE_11__* %56)
  br label %5

58:                                               ; preds = %39, %27
  %59 = call i32 (...) @vnode_list_lock()
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @VRAGE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %97

66:                                               ; preds = %58
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @VL_DEAD, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %97, label %73

73:                                               ; preds = %66
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @VAGE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %82 = load i32, i32* @v_freelist, align 4
  %83 = call i32 @TAILQ_INSERT_HEAD(i32* @vnode_rage_list, %struct.TYPE_11__* %81, i32 %82)
  br label %88

84:                                               ; preds = %73
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %86 = load i32, i32* @v_freelist, align 4
  %87 = call i32 @TAILQ_INSERT_TAIL(i32* @vnode_rage_list, %struct.TYPE_11__* %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %80
  %89 = load i32, i32* @VLIST_RAGE, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load i32, i32* @ragevnodes, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* @ragevnodes, align 4
  %96 = call i32 @microuptime(i32* @rage_tv)
  br label %149

97:                                               ; preds = %66, %58
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @VL_DEAD, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %97
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %106 = load i32, i32* @v_freelist, align 4
  %107 = call i32 @TAILQ_INSERT_HEAD(i32* @vnode_dead_list, %struct.TYPE_11__* %105, i32 %106)
  %108 = load i32, i32* @VLIST_DEAD, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load i32, i32* @deadvnodes, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* @deadvnodes, align 4
  %115 = load i64, i64* @dead_vnode_wanted, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %104
  %118 = load i64, i64* @dead_vnode_wanted, align 8
  %119 = add nsw i64 %118, -1
  store i64 %119, i64* @dead_vnode_wanted, align 8
  %120 = load i64, i64* @TRUE, align 8
  store i64 %120, i64* %3, align 8
  br label %121

121:                                              ; preds = %117, %104
  br label %148

122:                                              ; preds = %97
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @VAGE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %122
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %131 = load i32, i32* @v_freelist, align 4
  %132 = call i32 @TAILQ_INSERT_HEAD(i32* @vnode_free_list, %struct.TYPE_11__* %130, i32 %131)
  %133 = load i32, i32* @VAGE, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 4
  %139 = load i32, i32* @freevnodes, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* @freevnodes, align 4
  br label %147

141:                                              ; preds = %122
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %143 = load i32, i32* @v_freelist, align 4
  %144 = call i32 @TAILQ_INSERT_TAIL(i32* @vnode_free_list, %struct.TYPE_11__* %142, i32 %143)
  %145 = load i32, i32* @freevnodes, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* @freevnodes, align 4
  br label %147

147:                                              ; preds = %141, %129
  br label %148

148:                                              ; preds = %147, %121
  br label %149

149:                                              ; preds = %148, %88
  %150 = call i32 (...) @vnode_list_unlock()
  %151 = load i64, i64* %3, align 8
  %152 = load i64, i64* @TRUE, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = call i32 @wakeup_one(i32 ptrtoint (i64* @dead_vnode_wanted to i32))
  br label %156

156:                                              ; preds = %26, %154, %149
  ret void
}

declare dso_local i64 @VONLIST(%struct.TYPE_11__*) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @vnode_unlock(%struct.TYPE_11__*) #1

declare dso_local i32 @buf_invalidateblks(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @vnode_lock(%struct.TYPE_11__*) #1

declare dso_local i32 @vnode_dropiocount(%struct.TYPE_11__*) #1

declare dso_local i32 @vnode_list_lock(...) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @microuptime(i32*) #1

declare dso_local i32 @vnode_list_unlock(...) #1

declare dso_local i32 @wakeup_one(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
