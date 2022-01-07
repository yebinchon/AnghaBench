; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_reusable_pages.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_reusable_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i64, %struct.TYPE_22__*, %struct.TYPE_22__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_24__ = type { i64, i32, i32, i32, i64, i32, i32, %struct.TYPE_24__* }

@kernel_pmap = common dso_local global i64 0, align 8
@vm_page_stats_reusable = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@KERN_INVALID_ADDRESS = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@KERN_PROTECTION_FAILURE = common dso_local global i32 0, align 4
@VM_OBJECT_NULL = common dso_local global %struct.TYPE_22__* null, align 8
@MEMORY_OBJECT_COPY_SYMMETRIC = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@VM_MEMORY_MALLOC_LARGE = common dso_local global i64 0, align 8
@VM_MEMORY_MALLOC_LARGE_REUSED = common dso_local global i64 0, align 8
@VM_MEMORY_MALLOC_LARGE_REUSABLE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, i64, i64)* @vm_map_reusable_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_map_reusable_pages(%struct.TYPE_23__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %15 = call i32 @vm_map_lock_read(%struct.TYPE_23__* %14)
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @kernel_pmap, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @vm_map_range_check(%struct.TYPE_23__* %23, i64 %24, i64 %25, %struct.TYPE_24__** %8)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %3
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %30 = call i32 @vm_map_unlock_read(%struct.TYPE_23__* %29)
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @vm_page_stats_reusable, i32 0, i32 3), align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @vm_page_stats_reusable, i32 0, i32 3), align 4
  %33 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %33, i32* %4, align 4
  br label %222

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %212, %34
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %38 = call %struct.TYPE_24__* @vm_map_to_entry(%struct.TYPE_23__* %37)
  %39 = icmp ne %struct.TYPE_24__* %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp slt i64 %43, %44
  br label %46

46:                                               ; preds = %40, %35
  %47 = phi i1 [ false, %35 ], [ %45, %40 ]
  br i1 %47, label %48, label %216

48:                                               ; preds = %46
  store i32 0, i32* %13, align 4
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %50 = call i32 @vm_map_entry_is_reusable(%struct.TYPE_24__* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %48
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %54 = call i32 @vm_map_unlock_read(%struct.TYPE_23__* %53)
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @vm_page_stats_reusable, i32 0, i32 3), align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @vm_page_stats_reusable, i32 0, i32 3), align 4
  %57 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %57, i32* %4, align 4
  br label %222

58:                                               ; preds = %48
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @VM_PROT_WRITE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %58
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %65
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %72 = call i32 @vm_map_unlock_read(%struct.TYPE_23__* %71)
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @vm_page_stats_reusable, i32 0, i32 4), align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @vm_page_stats_reusable, i32 0, i32 4), align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @vm_page_stats_reusable, i32 0, i32 3), align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @vm_page_stats_reusable, i32 0, i32 3), align 4
  %77 = load i32, i32* @KERN_PROTECTION_FAILURE, align 4
  store i32 %77, i32* %4, align 4
  br label %222

78:                                               ; preds = %65, %58
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %6, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load i64, i64* %6, align 8
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %85, %88
  store i64 %89, i64* %10, align 8
  %90 = load i64, i64* %6, align 8
  store i64 %90, i64* %12, align 8
  br label %95

91:                                               ; preds = %78
  store i64 0, i64* %10, align 8
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %12, align 8
  br label %95

95:                                               ; preds = %91, %84
  %96 = load i64, i64* %7, align 8
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @MIN(i64 %96, i32 %99)
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %100, %103
  store i64 %104, i64* %11, align 8
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %106 = call i64 @VME_OFFSET(%struct.TYPE_24__* %105)
  %107 = load i64, i64* %10, align 8
  %108 = add nsw i64 %107, %106
  store i64 %108, i64* %10, align 8
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %110 = call i64 @VME_OFFSET(%struct.TYPE_24__* %109)
  %111 = load i64, i64* %11, align 8
  %112 = add nsw i64 %111, %110
  store i64 %112, i64* %11, align 8
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %121 = call %struct.TYPE_22__* @VME_OBJECT(%struct.TYPE_24__* %120)
  store %struct.TYPE_22__* %121, %struct.TYPE_22__** %9, align 8
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** @VM_OBJECT_NULL, align 8
  %124 = icmp eq %struct.TYPE_22__* %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %95
  br label %212

126:                                              ; preds = %95
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %128 = call i32 @vm_object_lock(%struct.TYPE_22__* %127)
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %145, label %133

133:                                              ; preds = %126
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @MEMORY_OBJECT_COPY_SYMMETRIC, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %175

139:                                              ; preds = %133
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 3
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %141, align 8
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** @VM_OBJECT_NULL, align 8
  %144 = icmp eq %struct.TYPE_22__* %142, %143
  br i1 %144, label %145, label %175

145:                                              ; preds = %139, %126
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %147, align 8
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** @VM_OBJECT_NULL, align 8
  %150 = icmp eq %struct.TYPE_22__* %148, %149
  br i1 %150, label %151, label %175

151:                                              ; preds = %145
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %175, label %156

156:                                              ; preds = %151
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %156
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %161, %156
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 1
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @vm_page_stats_reusable, i32 0, i32 2), align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @vm_page_stats_reusable, i32 0, i32 2), align 4
  br label %174

174:                                              ; preds = %171, %166
  store i32 1, i32* %13, align 4
  br label %176

175:                                              ; preds = %161, %151, %145, %139, %133
  store i32 -1, i32* %13, align 4
  br label %176

176:                                              ; preds = %175, %174
  %177 = load i32, i32* %13, align 4
  %178 = icmp ne i32 %177, -1
  br i1 %178, label %179, label %192

179:                                              ; preds = %176
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %181 = load i64, i64* %10, align 8
  %182 = load i64, i64* %11, align 8
  %183 = load i64, i64* %10, align 8
  %184 = sub nsw i64 %182, %183
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* @TRUE, align 4
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* %12, align 8
  %191 = call i32 @vm_object_deactivate_pages(%struct.TYPE_22__* %180, i64 %181, i64 %184, i32 %185, i32 %186, i64 %189, i64 %190)
  br label %195

192:                                              ; preds = %176
  %193 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @vm_page_stats_reusable, i32 0, i32 1), align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @vm_page_stats_reusable, i32 0, i32 1), align 4
  br label %195

195:                                              ; preds = %192, %179
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %197 = call i32 @vm_object_unlock(%struct.TYPE_22__* %196)
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %199 = call i64 @VME_ALIAS(%struct.TYPE_24__* %198)
  %200 = load i64, i64* @VM_MEMORY_MALLOC_LARGE, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %207, label %202

202:                                              ; preds = %195
  %203 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %204 = call i64 @VME_ALIAS(%struct.TYPE_24__* %203)
  %205 = load i64, i64* @VM_MEMORY_MALLOC_LARGE_REUSED, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %202, %195
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %209 = load i32, i32* @VM_MEMORY_MALLOC_LARGE_REUSABLE, align 4
  %210 = call i32 @VME_ALIAS_SET(%struct.TYPE_24__* %208, i32 %209)
  br label %211

211:                                              ; preds = %207, %202
  br label %212

212:                                              ; preds = %211, %125
  %213 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i32 0, i32 7
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %214, align 8
  store %struct.TYPE_24__* %215, %struct.TYPE_24__** %8, align 8
  br label %35

216:                                              ; preds = %46
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %218 = call i32 @vm_map_unlock_read(%struct.TYPE_23__* %217)
  %219 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @vm_page_stats_reusable, i32 0, i32 0), align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @vm_page_stats_reusable, i32 0, i32 0), align 4
  %221 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %221, i32* %4, align 4
  br label %222

222:                                              ; preds = %216, %70, %52, %28
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local i32 @vm_map_lock_read(%struct.TYPE_23__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_map_range_check(%struct.TYPE_23__*, i64, i64, %struct.TYPE_24__**) #1

declare dso_local i32 @vm_map_unlock_read(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_24__* @vm_map_to_entry(%struct.TYPE_23__*) #1

declare dso_local i32 @vm_map_entry_is_reusable(%struct.TYPE_24__*) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i64 @VME_OFFSET(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_22__* @VME_OBJECT(%struct.TYPE_24__*) #1

declare dso_local i32 @vm_object_lock(%struct.TYPE_22__*) #1

declare dso_local i32 @vm_object_deactivate_pages(%struct.TYPE_22__*, i64, i64, i32, i32, i64, i64) #1

declare dso_local i32 @vm_object_unlock(%struct.TYPE_22__*) #1

declare dso_local i64 @VME_ALIAS(%struct.TYPE_24__*) #1

declare dso_local i32 @VME_ALIAS_SET(%struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
