; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_wire.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_wire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i64, i64, i64, i32, i32, i64, i64, i64 }
%struct.TYPE_24__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_25__ = type { i32 }

@vm_page_queue_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@VM_PAGE_IS_WIRED = common dso_local global i64 0, align 8
@VM_PURGABLE_VOLATILE = common dso_local global i64 0, align 8
@vm_page_purgeable_count = common dso_local global i64 0, align 8
@vm_page_purgeable_wired_count = common dso_local global i64 0, align 8
@VM_PURGABLE_EMPTY = common dso_local global i64 0, align 8
@TASK_NULL = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@task_ledgers = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@PAGE_SIZE_64 = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@vm_page_wire_count = common dso_local global i32 0, align 4
@vm_page_gobble_count = common dso_local global i32 0, align 4
@VM_CHECK_MEMORYSTATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"vm_page_wire(%p): wire_count overflow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_page_wire(%struct.TYPE_23__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %15 = call %struct.TYPE_24__* @VM_PAGE_OBJECT(%struct.TYPE_23__* %14)
  store %struct.TYPE_24__* %15, %struct.TYPE_24__** %7, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %17 = call i32 @VM_PAGE_CHECK(%struct.TYPE_23__* %16)
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %19 = icmp ne %struct.TYPE_24__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %22 = call i32 @vm_object_lock_assert_exclusive(%struct.TYPE_24__* %21)
  br label %24

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %26 = call i32 @LCK_MTX_ASSERT(i32* @vm_page_queue_lock, i32 %25)
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %28 = call i32 @VM_PAGE_WIRED(%struct.TYPE_23__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %197, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %37 = load i64, i64* @TRUE, align 8
  %38 = call i32 @vm_pageout_steal_laundry(%struct.TYPE_23__* %36, i64 %37)
  br label %39

39:                                               ; preds = %35, %30
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %41 = load i64, i64* @TRUE, align 8
  %42 = call i32 @vm_page_queues_remove(%struct.TYPE_23__* %40, i64 %41)
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i64, i64* @VM_PAGE_IS_WIRED, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %53 = icmp ne %struct.TYPE_24__* %52, null
  br i1 %53, label %54, label %154

54:                                               ; preds = %39
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %56 = call i32 @VM_OBJECT_WIRED_PAGE_UPDATE_START(%struct.TYPE_24__* %55)
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %59 = call i32 @VM_OBJECT_WIRED_PAGE_ADD(%struct.TYPE_24__* %57, %struct.TYPE_23__* %58)
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @VM_OBJECT_WIRED_PAGE_UPDATE_END(%struct.TYPE_24__* %60, i32 %61)
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %65, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @VM_PURGABLE_VOLATILE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %54
  %78 = load i64, i64* @vm_page_purgeable_count, align 8
  %79 = icmp sgt i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = call i32 @OSAddAtomic(i32 -1, i64* @vm_page_purgeable_count)
  %83 = call i32 @OSAddAtomic(i32 1, i64* @vm_page_purgeable_wired_count)
  br label %84

84:                                               ; preds = %77, %54
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @VM_PURGABLE_VOLATILE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @VM_PURGABLE_EMPTY, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %129

96:                                               ; preds = %90, %84
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @TASK_NULL, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %129

102:                                              ; preds = %96
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %104 = call %struct.TYPE_25__* @VM_OBJECT_OWNER(%struct.TYPE_24__* %103)
  store %struct.TYPE_25__* %104, %struct.TYPE_25__** %8, align 8
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %106 = call i32 @vm_object_ledger_tag_ledgers(%struct.TYPE_24__* %105, i32* %9, i32* %10, i32* %11, i32* %12, i64* %13)
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @PAGE_SIZE, align 4
  %112 = call i32 @ledger_debit(i32 %109, i32 %110, i32 %111)
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @PAGE_SIZE, align 4
  %118 = call i32 @ledger_credit(i32 %115, i32 %116, i32 %117)
  %119 = load i64, i64* %13, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %102
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @task_ledgers, i32 0, i32 0), align 4
  %126 = load i32, i32* @PAGE_SIZE, align 4
  %127 = call i32 @ledger_credit(i32 %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %121, %102
  br label %129

129:                                              ; preds = %128, %96, %90
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %153

135:                                              ; preds = %129
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %135
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 6
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 6
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @PAGE_SIZE_64, align 8
  %149 = add nsw i64 %147, %148
  %150 = load i64, i64* @FALSE, align 8
  %151 = call i32 @vm_object_reuse_pages(%struct.TYPE_24__* %141, i64 %144, i64 %149, i64 %150)
  br label %152

152:                                              ; preds = %140, %135
  br label %153

153:                                              ; preds = %152, %134
  br label %154

154:                                              ; preds = %153, %39
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %179, label %166

166:                                              ; preds = %154
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %179, label %171

171:                                              ; preds = %166
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %171
  %177 = load i32, i32* @vm_page_wire_count, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* @vm_page_wire_count, align 4
  br label %179

179:                                              ; preds = %176, %171, %166, %154
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load i32, i32* @vm_page_gobble_count, align 4
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* @vm_page_gobble_count, align 4
  br label %187

187:                                              ; preds = %184, %179
  %188 = load i64, i64* @FALSE, align 8
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 2
  store i64 %188, i64* %190, align 8
  %191 = load i64, i64* %6, align 8
  %192 = load i64, i64* @TRUE, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %187
  %195 = load i32, i32* @VM_CHECK_MEMORYSTATUS, align 4
  br label %196

196:                                              ; preds = %194, %187
  br label %197

197:                                              ; preds = %196, %24
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  %202 = xor i1 %201, true
  %203 = zext i1 %202 to i32
  %204 = call i32 @assert(i32 %203)
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @VM_PAGE_IS_WIRED, align 8
  %209 = icmp eq i64 %207, %208
  %210 = zext i1 %209 to i32
  %211 = call i32 @assert(i32 %210)
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = add nsw i64 %214, 1
  store i64 %215, i64* %213, align 8
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp eq i64 %218, 0
  %220 = zext i1 %219 to i32
  %221 = call i64 @__improbable(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %197
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %225 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.TYPE_23__* %224)
  br label %226

226:                                              ; preds = %223, %197
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %228 = call i32 @VM_PAGE_CHECK(%struct.TYPE_23__* %227)
  ret void
}

declare dso_local %struct.TYPE_24__* @VM_PAGE_OBJECT(%struct.TYPE_23__*) #1

declare dso_local i32 @VM_PAGE_CHECK(%struct.TYPE_23__*) #1

declare dso_local i32 @vm_object_lock_assert_exclusive(%struct.TYPE_24__*) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @VM_PAGE_WIRED(%struct.TYPE_23__*) #1

declare dso_local i32 @vm_pageout_steal_laundry(%struct.TYPE_23__*, i64) #1

declare dso_local i32 @vm_page_queues_remove(%struct.TYPE_23__*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VM_OBJECT_WIRED_PAGE_UPDATE_START(%struct.TYPE_24__*) #1

declare dso_local i32 @VM_OBJECT_WIRED_PAGE_ADD(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @VM_OBJECT_WIRED_PAGE_UPDATE_END(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @OSAddAtomic(i32, i64*) #1

declare dso_local %struct.TYPE_25__* @VM_OBJECT_OWNER(%struct.TYPE_24__*) #1

declare dso_local i32 @vm_object_ledger_tag_ledgers(%struct.TYPE_24__*, i32*, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @ledger_debit(i32, i32, i32) #1

declare dso_local i32 @ledger_credit(i32, i32, i32) #1

declare dso_local i32 @vm_object_reuse_pages(%struct.TYPE_24__*, i64, i64, i64) #1

declare dso_local i64 @__improbable(i32) #1

declare dso_local i32 @panic(i8*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
