; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_machine_attribute.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_machine_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { i64, i64, i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_23__* }

@KERN_INVALID_ADDRESS = common dso_local global i32 0, align 4
@MATTR_CACHE = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_machine_attribute(%struct.TYPE_24__* %0, i64 %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_22__*, align 8
  %19 = alloca %struct.TYPE_23__*, align 8
  %20 = alloca %struct.TYPE_23__*, align 8
  %21 = alloca %struct.TYPE_23__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %27 = call i64 @vm_map_min(%struct.TYPE_24__* %26)
  %28 = icmp slt i64 %25, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %5
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %32 = call i64 @vm_map_max(%struct.TYPE_24__* %31)
  %33 = icmp sgt i64 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29, %5
  %35 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %35, i32* %6, align 4
  br label %210

36:                                               ; preds = %29
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %8, align 8
  %39 = sub nsw i64 %37, %38
  store i64 %39, i64* %13, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %41 = call i32 @vm_map_lock(%struct.TYPE_24__* %40)
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @MATTR_CACHE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %36
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %8, align 8
  %52 = sub nsw i64 %50, %51
  %53 = load i64, i64* %10, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @pmap_attribute(i32 %48, i64 %49, i64 %52, i64 %53, i32* %54)
  store i32 %55, i32* %12, align 4
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %57 = call i32 @vm_map_unlock(%struct.TYPE_24__* %56)
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %6, align 4
  br label %210

59:                                               ; preds = %36
  %60 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %205, %59
  %62 = load i64, i64* %13, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %206

64:                                               ; preds = %61
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i64 @vm_map_lookup_entry(%struct.TYPE_24__* %65, i64 %66, %struct.TYPE_25__** %14)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %201

69:                                               ; preds = %64
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = sub nsw i64 %72, %73
  %75 = load i64, i64* %13, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i64, i64* %13, align 8
  store i64 %78, i64* %15, align 8
  store i64 0, i64* %13, align 8
  br label %88

79:                                               ; preds = %69
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = sub nsw i64 %82, %83
  store i64 %84, i64* %15, align 8
  %85 = load i64, i64* %15, align 8
  %86 = load i64, i64* %13, align 8
  %87 = sub nsw i64 %86, %85
  store i64 %87, i64* %13, align 8
  br label %88

88:                                               ; preds = %79, %77
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %88
  %94 = load i64, i64* %8, align 8
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %94, %97
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %100 = call i64 @VME_OFFSET(%struct.TYPE_25__* %99)
  %101 = add nsw i64 %98, %100
  store i64 %101, i64* %16, align 8
  %102 = load i64, i64* %16, align 8
  %103 = load i64, i64* %15, align 8
  %104 = add nsw i64 %102, %103
  store i64 %104, i64* %17, align 8
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %106 = call %struct.TYPE_24__* @VME_SUBMAP(%struct.TYPE_25__* %105)
  %107 = load i64, i64* %16, align 8
  %108 = load i64, i64* %17, align 8
  %109 = load i64, i64* %10, align 8
  %110 = load i32*, i32** %11, align 8
  %111 = call i32 @vm_map_machine_attribute(%struct.TYPE_24__* %106, i64 %107, i64 %108, i64 %109, i32* %110)
  br label %197

112:                                              ; preds = %88
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %114 = call %struct.TYPE_23__* @VME_OBJECT(%struct.TYPE_25__* %113)
  %115 = icmp ne %struct.TYPE_23__* %114, null
  br i1 %115, label %116, label %196

116:                                              ; preds = %112
  %117 = load i64, i64* %15, align 8
  store i64 %117, i64* %24, align 8
  %118 = load i64, i64* %8, align 8
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %118, %121
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %124 = call i64 @VME_OFFSET(%struct.TYPE_25__* %123)
  %125 = add nsw i64 %122, %124
  store i64 %125, i64* %22, align 8
  %126 = load i64, i64* %22, align 8
  store i64 %126, i64* %23, align 8
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %128 = call %struct.TYPE_23__* @VME_OBJECT(%struct.TYPE_25__* %127)
  store %struct.TYPE_23__* %128, %struct.TYPE_23__** %19, align 8
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  store %struct.TYPE_23__* %129, %struct.TYPE_23__** %20, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %21, align 8
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %131 = call i32 @vm_object_lock(%struct.TYPE_23__* %130)
  br label %132

132:                                              ; preds = %188, %158, %116
  %133 = load i64, i64* %24, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %193

135:                                              ; preds = %132
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %137 = load i64, i64* %22, align 8
  %138 = call %struct.TYPE_22__* @vm_page_lookup(%struct.TYPE_23__* %136, i64 %137)
  store %struct.TYPE_22__* %138, %struct.TYPE_22__** %18, align 8
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %140 = icmp ne %struct.TYPE_22__* %139, null
  br i1 %140, label %141, label %153

141:                                              ; preds = %135
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %141
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %148 = call i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_22__* %147)
  %149 = load i64, i64* @PAGE_SIZE, align 8
  %150 = load i64, i64* %10, align 8
  %151 = load i32*, i32** %11, align 8
  %152 = call i32 @pmap_attribute_cache_sync(i32 %148, i64 %149, i64 %150, i32* %151)
  store i32 %152, i32* %12, align 4
  br label %175

153:                                              ; preds = %141, %135
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %155, align 8
  %157 = icmp ne %struct.TYPE_23__* %156, null
  br i1 %157, label %158, label %174

158:                                              ; preds = %153
  %159 = load i64, i64* %22, align 8
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %159, %162
  store i64 %163, i64* %22, align 8
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  store %struct.TYPE_23__* %164, %struct.TYPE_23__** %21, align 8
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %166, align 8
  store %struct.TYPE_23__* %167, %struct.TYPE_23__** %19, align 8
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %169, align 8
  %171 = call i32 @vm_object_lock(%struct.TYPE_23__* %170)
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %173 = call i32 @vm_object_unlock(%struct.TYPE_23__* %172)
  br label %132

174:                                              ; preds = %153
  br label %175

175:                                              ; preds = %174, %146
  %176 = load i64, i64* @PAGE_SIZE, align 8
  %177 = load i64, i64* %24, align 8
  %178 = sub nsw i64 %177, %176
  store i64 %178, i64* %24, align 8
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %181 = icmp ne %struct.TYPE_23__* %179, %180
  br i1 %181, label %182, label %188

182:                                              ; preds = %175
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %184 = call i32 @vm_object_unlock(%struct.TYPE_23__* %183)
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %186 = call i32 @vm_object_lock(%struct.TYPE_23__* %185)
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  store %struct.TYPE_23__* %187, %struct.TYPE_23__** %19, align 8
  br label %188

188:                                              ; preds = %182, %175
  %189 = load i64, i64* @PAGE_SIZE, align 8
  %190 = load i64, i64* %23, align 8
  %191 = add nsw i64 %190, %189
  store i64 %191, i64* %23, align 8
  %192 = load i64, i64* %23, align 8
  store i64 %192, i64* %22, align 8
  br label %132

193:                                              ; preds = %132
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %195 = call i32 @vm_object_unlock(%struct.TYPE_23__* %194)
  br label %196

196:                                              ; preds = %193, %112
  br label %197

197:                                              ; preds = %196, %93
  %198 = load i64, i64* %15, align 8
  %199 = load i64, i64* %8, align 8
  %200 = add nsw i64 %199, %198
  store i64 %200, i64* %8, align 8
  br label %205

201:                                              ; preds = %64
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %203 = call i32 @vm_map_unlock(%struct.TYPE_24__* %202)
  %204 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %204, i32* %6, align 4
  br label %210

205:                                              ; preds = %197
  br label %61

206:                                              ; preds = %61
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %208 = call i32 @vm_map_unlock(%struct.TYPE_24__* %207)
  %209 = load i32, i32* %12, align 4
  store i32 %209, i32* %6, align 4
  br label %210

210:                                              ; preds = %206, %201, %45, %34
  %211 = load i32, i32* %6, align 4
  ret i32 %211
}

declare dso_local i64 @vm_map_min(%struct.TYPE_24__*) #1

declare dso_local i64 @vm_map_max(%struct.TYPE_24__*) #1

declare dso_local i32 @vm_map_lock(%struct.TYPE_24__*) #1

declare dso_local i32 @pmap_attribute(i32, i64, i64, i64, i32*) #1

declare dso_local i32 @vm_map_unlock(%struct.TYPE_24__*) #1

declare dso_local i64 @vm_map_lookup_entry(%struct.TYPE_24__*, i64, %struct.TYPE_25__**) #1

declare dso_local i64 @VME_OFFSET(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_24__* @VME_SUBMAP(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_23__* @VME_OBJECT(%struct.TYPE_25__*) #1

declare dso_local i32 @vm_object_lock(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_22__* @vm_page_lookup(%struct.TYPE_23__*, i64) #1

declare dso_local i32 @pmap_attribute_cache_sync(i32, i64, i64, i32*) #1

declare dso_local i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_22__*) #1

declare dso_local i32 @vm_object_unlock(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
