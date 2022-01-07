; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_free_prepare_queues.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_free_prepare_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_20__ = type { i64, i64, i32, i32, i64, i64, i32 }
%struct.TYPE_21__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_22__ = type { i32 }

@VM_PAGE_ON_FREE_Q = common dso_local global i64 0, align 8
@vm_page_queue_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@c_laundry_pages_freed = common dso_local global i32 0, align 4
@VM_PURGABLE_VOLATILE = common dso_local global i64 0, align 8
@vm_page_purgeable_count = common dso_local global i64 0, align 8
@vm_page_purgeable_wired_count = common dso_local global i64 0, align 8
@VM_PURGABLE_EMPTY = common dso_local global i64 0, align 8
@TASK_NULL = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@task_ledgers = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@vm_page_wire_count = common dso_local global i32 0, align 4
@VM_PAGE_NOT_ON_Q = common dso_local global i64 0, align 8
@vm_page_gobble_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_page_free_prepare_queues(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %11 = call i32 @VM_PAGE_CHECK(%struct.TYPE_20__* %10)
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @VM_PAGE_ON_FREE_Q, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %27 = call %struct.TYPE_21__* @VM_PAGE_OBJECT(%struct.TYPE_20__* %26)
  store %struct.TYPE_21__* %27, %struct.TYPE_21__** %3, align 8
  %28 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %29 = call i32 @LCK_MTX_ASSERT(i32* @vm_page_queue_lock, i32 %28)
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %31 = icmp ne %struct.TYPE_21__* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %34 = call i32 @vm_object_lock_assert_exclusive(%struct.TYPE_21__* %33)
  br label %35

35:                                               ; preds = %32, %1
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %42 = load i32, i32* @TRUE, align 4
  %43 = call i32 @vm_pageout_steal_laundry(%struct.TYPE_20__* %41, i32 %42)
  %44 = load i32, i32* @c_laundry_pages_freed, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @c_laundry_pages_freed, align 4
  %46 = call i32 @counter(i32 %45)
  br label %47

47:                                               ; preds = %40, %35
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %49 = load i32, i32* @TRUE, align 4
  %50 = call i32 @vm_page_queues_remove(%struct.TYPE_20__* %48, i32 %49)
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %52 = call i64 @VM_PAGE_WIRED(%struct.TYPE_20__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %167

54:                                               ; preds = %47
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %62 = icmp ne %struct.TYPE_21__* %61, null
  br i1 %62, label %63, label %141

63:                                               ; preds = %54
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %65 = call i32 @VM_OBJECT_WIRED_PAGE_UPDATE_START(%struct.TYPE_21__* %64)
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %68 = call i32 @VM_OBJECT_WIRED_PAGE_REMOVE(%struct.TYPE_21__* %66, %struct.TYPE_20__* %67)
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @VM_OBJECT_WIRED_PAGE_UPDATE_END(%struct.TYPE_21__* %69, i32 %72)
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp sge i64 %76, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @VM_PURGABLE_VOLATILE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %63
  %89 = call i32 @OSAddAtomic(i32 1, i64* @vm_page_purgeable_count)
  %90 = load i64, i64* @vm_page_purgeable_wired_count, align 8
  %91 = icmp sgt i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = call i32 @OSAddAtomic(i32 -1, i64* @vm_page_purgeable_wired_count)
  br label %95

95:                                               ; preds = %88, %63
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @VM_PURGABLE_VOLATILE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @VM_PURGABLE_EMPTY, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %140

107:                                              ; preds = %101, %95
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @TASK_NULL, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %140

113:                                              ; preds = %107
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %115 = call %struct.TYPE_22__* @VM_OBJECT_OWNER(%struct.TYPE_21__* %114)
  store %struct.TYPE_22__* %115, %struct.TYPE_22__** %4, align 8
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %117 = call i32 @vm_object_ledger_tag_ledgers(%struct.TYPE_21__* %116, i32* %5, i32* %6, i32* %7, i32* %8, i64* %9)
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @PAGE_SIZE, align 4
  %123 = call i32 @ledger_debit(i32 %120, i32 %121, i32 %122)
  %124 = load i64, i64* %9, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %113
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @task_ledgers, i32 0, i32 0), align 4
  %131 = load i32, i32* @PAGE_SIZE, align 4
  %132 = call i32 @ledger_debit(i32 %129, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %126, %113
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @PAGE_SIZE, align 4
  %139 = call i32 @ledger_credit(i32 %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %133, %107, %101
  br label %141

141:                                              ; preds = %140, %54
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %141
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %146
  %152 = load i32, i32* @vm_page_wire_count, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* @vm_page_wire_count, align 4
  br label %154

154:                                              ; preds = %151, %146, %141
  %155 = load i64, i64* @VM_PAGE_NOT_ON_Q, align 8
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 1
  store i64 0, i64* %159, align 8
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = call i32 @assert(i32 %165)
  br label %189

167:                                              ; preds = %47
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %188

172:                                              ; preds = %167
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %185, label %177

177:                                              ; preds = %172
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %177
  %183 = load i32, i32* @vm_page_wire_count, align 4
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* @vm_page_wire_count, align 4
  br label %185

185:                                              ; preds = %182, %177, %172
  %186 = load i32, i32* @vm_page_gobble_count, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* @vm_page_gobble_count, align 4
  br label %188

188:                                              ; preds = %185, %167
  br label %189

189:                                              ; preds = %188, %154
  ret void
}

declare dso_local i32 @VM_PAGE_CHECK(%struct.TYPE_20__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_21__* @VM_PAGE_OBJECT(%struct.TYPE_20__*) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @vm_object_lock_assert_exclusive(%struct.TYPE_21__*) #1

declare dso_local i32 @vm_pageout_steal_laundry(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @counter(i32) #1

declare dso_local i32 @vm_page_queues_remove(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @VM_PAGE_WIRED(%struct.TYPE_20__*) #1

declare dso_local i32 @VM_OBJECT_WIRED_PAGE_UPDATE_START(%struct.TYPE_21__*) #1

declare dso_local i32 @VM_OBJECT_WIRED_PAGE_REMOVE(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @VM_OBJECT_WIRED_PAGE_UPDATE_END(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @OSAddAtomic(i32, i64*) #1

declare dso_local %struct.TYPE_22__* @VM_OBJECT_OWNER(%struct.TYPE_21__*) #1

declare dso_local i32 @vm_object_ledger_tag_ledgers(%struct.TYPE_21__*, i32*, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @ledger_debit(i32, i32, i32) #1

declare dso_local i32 @ledger_credit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
