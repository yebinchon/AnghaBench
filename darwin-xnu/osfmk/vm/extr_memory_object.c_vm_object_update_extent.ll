; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_memory_object.c_vm_object_update_extent.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_memory_object.c_vm_object_update_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, i64 }
%struct.vm_page_delayed_work = type { i64 }

@DEFAULT_DELAYED_WORK_LIMIT = common dso_local global i32 0, align 4
@MAX_UPL_TRANSFER_BYTES = common dso_local global i64 0, align 8
@VM_KERN_MEMORY_NONE = common dso_local global i32 0, align 4
@VM_PAGE_NULL = common dso_local global %struct.TYPE_14__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@DW_vm_page_free = common dso_local global i64 0, align 8
@THREAD_UNINT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE_64 = common dso_local global i64 0, align 8
@TASK_WRITE_INVALIDATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i64, i64, i64*, i32*, i32, i32, i32, i32)* @vm_object_update_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_object_update_extent(%struct.TYPE_15__* %0, i64 %1, i64 %2, i64* %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_14__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.vm_page_delayed_work*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64* %3, i64** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %20, align 4
  store i64 0, i64* %21, align 8
  %31 = load i64, i64* %11, align 8
  store i64 %31, i64* %22, align 8
  store i64 0, i64* %24, align 8
  %32 = load i32, i32* @DEFAULT_DELAYED_WORK_LIMIT, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %25, align 8
  %35 = alloca %struct.vm_page_delayed_work, i64 %33, align 16
  store i64 %33, i64* %26, align 8
  %36 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %35, i64 0
  store %struct.vm_page_delayed_work* %36, %struct.vm_page_delayed_work** %27, align 8
  store i32 0, i32* %28, align 4
  %37 = load i32, i32* @DEFAULT_DELAYED_WORK_LIMIT, align 4
  %38 = call i32 @DELAYED_WORK_LIMIT(i32 %37)
  store i32 %38, i32* %29, align 4
  store i32 0, i32* %30, align 4
  br label %39

39:                                               ; preds = %189, %9
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %43, %39
  %49 = phi i1 [ false, %39 ], [ %47, %43 ]
  br i1 %49, label %50, label %193

50:                                               ; preds = %48
  %51 = load i64, i64* %24, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %50
  %54 = load i64, i64* %24, align 8
  %55 = load i64, i64* @MAX_UPL_TRANSFER_BYTES, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %22, align 8
  %59 = load i64, i64* %11, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %57, %53
  %62 = load i32, i32* %28, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %66 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %67 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %35, i64 0
  %68 = load i32, i32* %28, align 4
  %69 = call i32 @vm_page_do_delayed_work(%struct.TYPE_15__* %65, i32 %66, %struct.vm_page_delayed_work* %67, i32 %68)
  %70 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %35, i64 0
  store %struct.vm_page_delayed_work* %70, %struct.vm_page_delayed_work** %27, align 8
  store i32 0, i32* %28, align 4
  br label %71

71:                                               ; preds = %64, %61
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %73 = load i64, i64* %24, align 8
  %74 = load i64, i64* %21, align 8
  %75 = load i64*, i64** %13, align 8
  %76 = load i32*, i32** %14, align 8
  %77 = load i32, i32* %17, align 4
  %78 = call i32 @LIST_REQ_PAGEOUT_PAGES(%struct.TYPE_15__* %72, i64 %73, i64 %74, i64* %75, i32* %76, i32 %77)
  store i64 0, i64* %24, align 8
  br label %79

79:                                               ; preds = %71, %57
  br label %80

80:                                               ; preds = %79, %50
  br label %81

81:                                               ; preds = %136, %110, %80
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %83 = load i64, i64* %11, align 8
  %84 = call %struct.TYPE_14__* @vm_page_lookup(%struct.TYPE_15__* %82, i64 %83)
  store %struct.TYPE_14__* %84, %struct.TYPE_14__** %19, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** @VM_PAGE_NULL, align 8
  %86 = icmp ne %struct.TYPE_14__* %84, %85
  br i1 %86, label %87, label %188

87:                                               ; preds = %81
  %88 = load %struct.vm_page_delayed_work*, %struct.vm_page_delayed_work** %27, align 8
  %89 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %18, align 4
  %94 = call i32 @memory_object_lock_page(%struct.TYPE_14__* %90, i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %23, align 4
  %95 = load i64, i64* %24, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %118

97:                                               ; preds = %87
  %98 = load i32, i32* %23, align 4
  %99 = icmp ne i32 %98, 128
  br i1 %99, label %100, label %118

100:                                              ; preds = %97
  %101 = load i32, i32* %28, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %105 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %106 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %35, i64 0
  %107 = load i32, i32* %28, align 4
  %108 = call i32 @vm_page_do_delayed_work(%struct.TYPE_15__* %104, i32 %105, %struct.vm_page_delayed_work* %106, i32 %107)
  %109 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %35, i64 0
  store %struct.vm_page_delayed_work* %109, %struct.vm_page_delayed_work** %27, align 8
  store i32 0, i32* %28, align 4
  br label %110

110:                                              ; preds = %103, %100
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %112 = load i64, i64* %24, align 8
  %113 = load i64, i64* %21, align 8
  %114 = load i64*, i64** %13, align 8
  %115 = load i32*, i32** %14, align 8
  %116 = load i32, i32* %17, align 4
  %117 = call i32 @LIST_REQ_PAGEOUT_PAGES(%struct.TYPE_15__* %111, i64 %112, i64 %113, i64* %114, i32* %115, i32 %116)
  store i64 0, i64* %24, align 8
  br label %81

118:                                              ; preds = %97, %87
  %119 = load i32, i32* %23, align 4
  switch i32 %119, label %166 [
    i32 131, label %120
    i32 129, label %121
    i32 130, label %136
    i32 128, label %141
  ]

120:                                              ; preds = %118
  br label %166

121:                                              ; preds = %118
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @TRUE, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load i32, i32* %30, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %30, align 4
  br label %130

130:                                              ; preds = %127, %121
  %131 = load i64, i64* @DW_vm_page_free, align 8
  %132 = load %struct.vm_page_delayed_work*, %struct.vm_page_delayed_work** %27, align 8
  %133 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = or i64 %134, %131
  store i64 %135, i64* %133, align 8
  br label %166

136:                                              ; preds = %118
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %139 = load i32, i32* @THREAD_UNINT, align 4
  %140 = call i32 @PAGE_SLEEP(%struct.TYPE_15__* %137, %struct.TYPE_14__* %138, i32 %139)
  br label %81

141:                                              ; preds = %118
  %142 = load i64, i64* %24, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = load i64, i64* %11, align 8
  store i64 %145, i64* %21, align 8
  br label %146

146:                                              ; preds = %144, %141
  %147 = load i32, i32* @PAGE_SIZE, align 4
  %148 = sext i32 %147 to i64
  %149 = load i64, i64* %24, align 8
  %150 = add nsw i64 %149, %148
  store i64 %150, i64* %24, align 8
  %151 = load i64, i64* %11, align 8
  %152 = load i64, i64* @PAGE_SIZE_64, align 8
  %153 = add nsw i64 %151, %152
  store i64 %153, i64* %22, align 8
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %155 = call i32 @VM_PAGE_WIRED(%struct.TYPE_14__* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %165, label %157

157:                                              ; preds = %146
  %158 = load i32, i32* %15, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = load i32, i32* @TRUE, align 4
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %160, %157
  br label %165

165:                                              ; preds = %164, %146
  store i32 1, i32* %20, align 4
  br label %166

166:                                              ; preds = %118, %165, %130, %120
  %167 = load %struct.vm_page_delayed_work*, %struct.vm_page_delayed_work** %27, align 8
  %168 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %187

171:                                              ; preds = %166
  %172 = load %struct.vm_page_delayed_work*, %struct.vm_page_delayed_work** %27, align 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %174 = load i32, i32* %28, align 4
  %175 = call i32 @VM_PAGE_ADD_DELAYED_WORK(%struct.vm_page_delayed_work* %172, %struct.TYPE_14__* %173, i32 %174)
  %176 = load i32, i32* %28, align 4
  %177 = load i32, i32* %29, align 4
  %178 = icmp sge i32 %176, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %171
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %181 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %182 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %35, i64 0
  %183 = load i32, i32* %28, align 4
  %184 = call i32 @vm_page_do_delayed_work(%struct.TYPE_15__* %180, i32 %181, %struct.vm_page_delayed_work* %182, i32 %183)
  %185 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %35, i64 0
  store %struct.vm_page_delayed_work* %185, %struct.vm_page_delayed_work** %27, align 8
  store i32 0, i32* %28, align 4
  br label %186

186:                                              ; preds = %179, %171
  br label %187

187:                                              ; preds = %186, %166
  br label %188

188:                                              ; preds = %187, %81
  br label %189

189:                                              ; preds = %188
  %190 = load i64, i64* @PAGE_SIZE_64, align 8
  %191 = load i64, i64* %11, align 8
  %192 = add nsw i64 %191, %190
  store i64 %192, i64* %11, align 8
  br label %39

193:                                              ; preds = %48
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %209

198:                                              ; preds = %193
  %199 = call i32 (...) @current_task()
  %200 = load i32, i32* %30, align 4
  %201 = load i32, i32* @PAGE_SIZE, align 4
  %202 = mul nsw i32 %200, %201
  %203 = load i32, i32* @TASK_WRITE_INVALIDATED, align 4
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @vnode_pager_lookup_vnode(i64 %206)
  %208 = call i32 @task_update_logical_writes(i32 %199, i32 %202, i32 %203, i32 %207)
  br label %209

209:                                              ; preds = %198, %193
  %210 = load i32, i32* %28, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %209
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %214 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %215 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %35, i64 0
  %216 = load i32, i32* %28, align 4
  %217 = call i32 @vm_page_do_delayed_work(%struct.TYPE_15__* %213, i32 %214, %struct.vm_page_delayed_work* %215, i32 %216)
  br label %218

218:                                              ; preds = %212, %209
  %219 = load i64, i64* %24, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %229

221:                                              ; preds = %218
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %223 = load i64, i64* %24, align 8
  %224 = load i64, i64* %21, align 8
  %225 = load i64*, i64** %13, align 8
  %226 = load i32*, i32** %14, align 8
  %227 = load i32, i32* %17, align 4
  %228 = call i32 @LIST_REQ_PAGEOUT_PAGES(%struct.TYPE_15__* %222, i64 %223, i64 %224, i64* %225, i32* %226, i32 %227)
  br label %229

229:                                              ; preds = %221, %218
  %230 = load i32, i32* %20, align 4
  %231 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %231)
  ret i32 %230
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DELAYED_WORK_LIMIT(i32) #2

declare dso_local i32 @vm_page_do_delayed_work(%struct.TYPE_15__*, i32, %struct.vm_page_delayed_work*, i32) #2

declare dso_local i32 @LIST_REQ_PAGEOUT_PAGES(%struct.TYPE_15__*, i64, i64, i64*, i32*, i32) #2

declare dso_local %struct.TYPE_14__* @vm_page_lookup(%struct.TYPE_15__*, i64) #2

declare dso_local i32 @memory_object_lock_page(%struct.TYPE_14__*, i32, i32, i32) #2

declare dso_local i32 @PAGE_SLEEP(%struct.TYPE_15__*, %struct.TYPE_14__*, i32) #2

declare dso_local i32 @VM_PAGE_WIRED(%struct.TYPE_14__*) #2

declare dso_local i32 @VM_PAGE_ADD_DELAYED_WORK(%struct.vm_page_delayed_work*, %struct.TYPE_14__*, i32) #2

declare dso_local i32 @task_update_logical_writes(i32, i32, i32, i32) #2

declare dso_local i32 @current_task(...) #2

declare dso_local i32 @vnode_pager_lookup_vnode(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
