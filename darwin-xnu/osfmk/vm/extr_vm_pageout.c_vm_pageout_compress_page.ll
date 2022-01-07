; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_pageout_compress_page.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_pageout_compress_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i64, i64, i32, i32 }
%struct.TYPE_21__ = type { i64, i64, i64, i32*, i64, i64, i64 }

@MEMORY_OBJECT_NULL = common dso_local global i64 0, align 8
@DBG_FUNC_START = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@vm_pageout_dirty_no_pager = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i64 0, align 8
@DBG_FUNC_END = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@VM_PURGABLE_DENY = common dso_local global i64 0, align 8
@compressions = common dso_local global i32 0, align 4
@vm_pageout_vminfo = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vm_pageout_compress_page(i8** %0, i8* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %13 = call %struct.TYPE_21__* @VM_PAGE_OBJECT(%struct.TYPE_20__* %12)
  store %struct.TYPE_21__* %13, %struct.TYPE_21__** %8, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %3
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @MEMORY_OBJECT_NULL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %97

39:                                               ; preds = %35, %3
  %40 = load i32, i32* @DBG_FUNC_START, align 4
  %41 = or i32 -532676592, %40
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @KERNEL_DEBUG(i32 %41, %struct.TYPE_21__* %42, i64 %43, i32 0, i32 0, i32 0)
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %46 = call i32 @vm_object_lock(%struct.TYPE_21__* %45)
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %39
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %53 = load i32, i32* @TRUE, align 4
  %54 = call i32 @vm_object_collapse(%struct.TYPE_21__* %52, i32 0, i32 %53)
  br label %55

55:                                               ; preds = %51, %39
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %62 = call i32 @vm_object_compressor_pager_create(%struct.TYPE_21__* %61)
  br label %63

63:                                               ; preds = %60, %55
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %9, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* @MEMORY_OBJECT_NULL, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %71, %63
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %77 = call i32 @PAGE_WAKEUP_DONE(%struct.TYPE_20__* %76)
  %78 = call i32 (...) @vm_page_lockspin_queues()
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %80 = call i32 @vm_page_activate(%struct.TYPE_20__* %79)
  %81 = load i32, i32* @vm_pageout_dirty_no_pager, align 4
  %82 = call i32 @VM_PAGEOUT_DEBUG(i32 %81, i32 1)
  %83 = call i32 (...) @vm_page_unlock_queues()
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %85 = call i32 @vm_object_activity_end(%struct.TYPE_21__* %84)
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %87 = call i32 @vm_object_unlock(%struct.TYPE_21__* %86)
  %88 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %88, i64* %4, align 8
  br label %203

89:                                               ; preds = %71
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %91 = call i32 @vm_object_unlock(%struct.TYPE_21__* %90)
  %92 = load i32, i32* @DBG_FUNC_END, align 4
  %93 = or i32 -532676592, %92
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %95 = load i64, i64* %9, align 8
  %96 = call i32 @KERNEL_DEBUG(i32 %93, %struct.TYPE_21__* %94, i64 %95, i32 0, i32 0, i32 0)
  br label %97

97:                                               ; preds = %89, %35
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i64, i64* %9, align 8
  %104 = load i64, i64* @MEMORY_OBJECT_NULL, align 8
  %105 = icmp ne i64 %103, %104
  br label %106

106:                                              ; preds = %102, %97
  %107 = phi i1 [ false, %97 ], [ %105, %102 ]
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp sgt i64 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %119, %122
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %125 = call i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_20__* %124)
  %126 = load i8**, i8*** %5, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = call i64 @vm_compressor_pager_put(i64 %116, i64 %123, i32 %125, i8** %126, i8* %127, i32* %10)
  store i64 %128, i64* %11, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %130 = call i32 @vm_object_lock(%struct.TYPE_21__* %129)
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp sgt i64 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %138 = call %struct.TYPE_21__* @VM_PAGE_OBJECT(%struct.TYPE_20__* %137)
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %140 = icmp eq %struct.TYPE_21__* %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %144 = call i32 @VM_PAGE_WIRED(%struct.TYPE_20__* %143)
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert(i32 %147)
  %149 = load i64, i64* %9, align 8
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* @FALSE, align 4
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %153 = call i32 @vm_compressor_pager_count(i64 %149, i32 %150, i32 %151, %struct.TYPE_21__* %152)
  %154 = load i64, i64* %11, align 8
  %155 = load i64, i64* @KERN_SUCCESS, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %188

157:                                              ; preds = %106
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @VM_PURGABLE_DENY, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %168, label %163

163:                                              ; preds = %157
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %163, %157
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 3
  %171 = load i32*, i32** %170, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %175 = call i32 @vm_object_owner_compressed_update(%struct.TYPE_21__* %174, i32 1)
  br label %176

176:                                              ; preds = %173, %168, %163
  %177 = load i32, i32* @compressions, align 4
  %178 = call i32 @VM_STAT_INCR(i32 %177)
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %176
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %185 = load i32, i32* @TRUE, align 4
  %186 = call i32 @vm_page_remove(%struct.TYPE_20__* %184, i32 %185)
  br label %187

187:                                              ; preds = %183, %176
  br label %197

188:                                              ; preds = %106
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %190 = call i32 @PAGE_WAKEUP_DONE(%struct.TYPE_20__* %189)
  %191 = call i32 (...) @vm_page_lockspin_queues()
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %193 = call i32 @vm_page_activate(%struct.TYPE_20__* %192)
  %194 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @vm_pageout_vminfo, i32 0, i32 0), align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @vm_pageout_vminfo, i32 0, i32 0), align 4
  %196 = call i32 (...) @vm_page_unlock_queues()
  br label %197

197:                                              ; preds = %188, %187
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %199 = call i32 @vm_object_activity_end(%struct.TYPE_21__* %198)
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %201 = call i32 @vm_object_unlock(%struct.TYPE_21__* %200)
  %202 = load i64, i64* %11, align 8
  store i64 %202, i64* %4, align 8
  br label %203

203:                                              ; preds = %197, %75
  %204 = load i64, i64* %4, align 8
  ret i64 %204
}

declare dso_local %struct.TYPE_21__* @VM_PAGE_OBJECT(%struct.TYPE_20__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @KERNEL_DEBUG(i32, %struct.TYPE_21__*, i64, i32, i32, i32) #1

declare dso_local i32 @vm_object_lock(%struct.TYPE_21__*) #1

declare dso_local i32 @vm_object_collapse(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @vm_object_compressor_pager_create(%struct.TYPE_21__*) #1

declare dso_local i32 @PAGE_WAKEUP_DONE(%struct.TYPE_20__*) #1

declare dso_local i32 @vm_page_lockspin_queues(...) #1

declare dso_local i32 @vm_page_activate(%struct.TYPE_20__*) #1

declare dso_local i32 @VM_PAGEOUT_DEBUG(i32, i32) #1

declare dso_local i32 @vm_page_unlock_queues(...) #1

declare dso_local i32 @vm_object_activity_end(%struct.TYPE_21__*) #1

declare dso_local i32 @vm_object_unlock(%struct.TYPE_21__*) #1

declare dso_local i64 @vm_compressor_pager_put(i64, i64, i32, i8**, i8*, i32*) #1

declare dso_local i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_20__*) #1

declare dso_local i32 @VM_PAGE_WIRED(%struct.TYPE_20__*) #1

declare dso_local i32 @vm_compressor_pager_count(i64, i32, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @vm_object_owner_compressed_update(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @VM_STAT_INCR(i32) #1

declare dso_local i32 @vm_page_remove(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
