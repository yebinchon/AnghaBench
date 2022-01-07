; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_object.c_vm_object_purge.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_object.c_vm_object_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i64, i64, i64, i64, i32* }

@FALSE = common dso_local global i32 0, align 4
@VM_PURGABLE_DENY = common dso_local global i64 0, align 8
@VM_OBJECT_NULL = common dso_local global i64 0, align 8
@MEMORY_OBJECT_COPY_NONE = common dso_local global i64 0, align 8
@VM_PURGABLE_VOLATILE = common dso_local global i64 0, align 8
@vm_page_purgeable_count = common dso_local global i32 0, align 4
@vm_page_purgeable_wired_count = common dso_local global i64 0, align 8
@VM_PURGABLE_EMPTY = common dso_local global i64 0, align 8
@REAP_PURGEABLE = common dso_local global i32 0, align 4
@VM_CONFIG_COMPRESSOR_IS_PRESENT = common dso_local global i32 0, align 4
@C_DONT_BLOCK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@KDEBUG_TRACE = common dso_local global i32 0, align 4
@DBG_MACH_VM = common dso_local global i32 0, align 4
@OBJECT_PURGE_ONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_object_purge(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = call i32 @vm_object_lock_assert_exclusive(%struct.TYPE_8__* %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VM_PURGABLE_DENY, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %198

20:                                               ; preds = %2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VM_OBJECT_NULL, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MEMORY_OBJECT_COPY_NONE, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VM_PURGABLE_VOLATILE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %92

40:                                               ; preds = %20
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %43, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %40
  %61 = load i32, i32* @vm_page_purgeable_count, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp uge i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = sub i32 0, %66
  %68 = call i32 @OSAddAtomic(i32 %67, i32* @vm_page_purgeable_count)
  br label %69

69:                                               ; preds = %60, %40
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  %75 = load i64, i64* @vm_page_purgeable_wired_count, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %75, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 0, %84
  %86 = trunc i64 %85 to i32
  %87 = call i32 @OSAddAtomic(i32 %86, i32* bitcast (i64* @vm_page_purgeable_wired_count to i32*))
  br label %88

88:                                               ; preds = %74, %69
  %89 = load i64, i64* @VM_PURGABLE_EMPTY, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %88, %20
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @VM_PURGABLE_EMPTY, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %6, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %105 = load i32, i32* @REAP_PURGEABLE, align 4
  %106 = call i32 @vm_object_reap_pages(%struct.TYPE_8__* %104, i32 %105)
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = zext i32 %110 to i64
  %112 = icmp sge i64 %109, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %92
  store i32 0, i32* %8, align 4
  br label %122

114:                                              ; preds = %92
  %115 = load i32, i32* %6, align 4
  %116 = zext i32 %115 to i64
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %116, %119
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %114, %113
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 7
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %181

127:                                              ; preds = %122
  %128 = load i32, i32* @VM_CONFIG_COMPRESSOR_IS_PRESENT, align 4
  %129 = call i32 @assert(i32 %128)
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %178

134:                                              ; preds = %127
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 6
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %178

139:                                              ; preds = %134
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 7
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @vm_compressor_pager_get_count(i32* %142)
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %164

146:                                              ; preds = %139
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 7
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = call i32 @vm_compressor_pager_reap_pages(i32* %149, i32 %150)
  store i32 %151, i32* %7, align 4
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 7
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sub i32 0, %155
  %157 = load i32, i32* @FALSE, align 4
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %159 = call i32 @vm_compressor_pager_count(i32* %154, i32 %156, i32 %157, %struct.TYPE_8__* %158)
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sub i32 0, %161
  %163 = call i32 @vm_object_owner_compressed_update(%struct.TYPE_8__* %160, i32 %162)
  br label %164

164:                                              ; preds = %146, %139
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* @C_DONT_BLOCK, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %177, label %169

169:                                              ; preds = %164
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 7
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @vm_compressor_pager_get_count(i32* %172)
  %174 = icmp eq i32 %173, 0
  %175 = zext i1 %174 to i32
  %176 = call i32 @assert(i32 %175)
  br label %177

177:                                              ; preds = %169, %164
  br label %180

178:                                              ; preds = %134, %127
  %179 = load i32, i32* @TRUE, align 4
  store i32 %179, i32* %9, align 4
  br label %180

180:                                              ; preds = %178, %177
  br label %181

181:                                              ; preds = %180, %122
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %183 = call i32 @vm_object_lock_assert_exclusive(%struct.TYPE_8__* %182)
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* %8, align 4
  %186 = add i32 %185, %184
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* @KDEBUG_TRACE, align 4
  %188 = load i32, i32* @DBG_MACH_VM, align 4
  %189 = load i32, i32* @OBJECT_PURGE_ONE, align 4
  %190 = call i32 @MACHDBG_CODE(i32 %188, i32 %189)
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %192 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.TYPE_8__* %191)
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %187, i32 %190, i32 %192, i32 %193, i32 %194, i32 %195, i32 0)
  %197 = load i32, i32* %8, align 4
  store i32 %197, i32* %3, align 4
  br label %198

198:                                              ; preds = %181, %19
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32 @vm_object_lock_assert_exclusive(%struct.TYPE_8__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

declare dso_local i32 @vm_object_reap_pages(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @vm_compressor_pager_get_count(i32*) #1

declare dso_local i32 @vm_compressor_pager_reap_pages(i32*, i32) #1

declare dso_local i32 @vm_compressor_pager_count(i32*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @vm_object_owner_compressed_update(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MACHDBG_CODE(i32, i32) #1

declare dso_local i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
