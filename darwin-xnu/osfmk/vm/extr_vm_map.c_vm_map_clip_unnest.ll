; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_clip_unnest.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_clip_unnest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i64, i32*, i64, i32 }
%struct.TYPE_17__ = type { i32, i32, i64, i64 }
%struct.TYPE_18__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [78 x i8] c"vm_map_clip_unnest(0x%llx,0x%llx): bad nested entry: start=0x%llx end=0x%llx\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i64 0, align 8
@VM_MEMORY_SHARED_PMAP = common dso_local global i64 0, align 8
@VM_MEMORY_UNSHARED_PMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_17__*, i64, i64)* @vm_map_clip_unnest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_map_clip_unnest(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %7, align 8
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* %8, align 8
  store i64 %12, i64* %10, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %18 = call %struct.TYPE_18__* @VME_SUBMAP(%struct.TYPE_17__* %17)
  %19 = icmp ne %struct.TYPE_18__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @pmap_adjust_unnest_parameters(i64 %28, i64* %7, i64* %8)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %64

31:                                               ; preds = %4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %33 = call %struct.TYPE_18__* @VME_SUBMAP(%struct.TYPE_17__* %32)
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %38 = call %struct.TYPE_18__* @VME_SUBMAP(%struct.TYPE_17__* %37)
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %49 = call %struct.TYPE_18__* @VME_SUBMAP(%struct.TYPE_17__* %48)
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %56 = call %struct.TYPE_18__* @VME_SUBMAP(%struct.TYPE_17__* %55)
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %54, %58
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %61 = call i64 @VME_OFFSET(%struct.TYPE_17__* %60)
  %62 = sub nsw i64 %59, %61
  %63 = call i32 @log_unnest_badness(%struct.TYPE_16__* %45, i64 %46, i64 %47, i32 %51, i64 %62)
  br label %64

64:                                               ; preds = %31, %4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %70, %64
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @panic(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i64 %77, i64 %78, i64 %81, i64 %84)
  br label %86

86:                                               ; preds = %76, %70
  %87 = load i64, i64* %7, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %87, %90
  br i1 %91, label %92, label %114

92:                                               ; preds = %86
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 5
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @_vm_map_clip_start(i32* %94, %struct.TYPE_17__* %95, i64 %96)
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %92
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %104 = load i32, i32* @FALSE, align 4
  %105 = call i32 @vm_map_store_update_first_free(%struct.TYPE_16__* %103, i32* null, i32 %104)
  br label %113

106:                                              ; preds = %92
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* @FALSE, align 4
  %112 = call i32 @vm_map_store_update_first_free(%struct.TYPE_16__* %107, i32* %110, i32 %111)
  br label %113

113:                                              ; preds = %106, %102
  br label %114

114:                                              ; preds = %113, %86
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %8, align 8
  %119 = icmp sgt i64 %117, %118
  br i1 %119, label %120, label %142

120:                                              ; preds = %114
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 5
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %124 = load i64, i64* %8, align 8
  %125 = call i32 @_vm_map_clip_end(i32* %122, %struct.TYPE_17__* %123, i64 %124)
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %120
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %132 = load i32, i32* @FALSE, align 4
  %133 = call i32 @vm_map_store_update_first_free(%struct.TYPE_16__* %131, i32* null, i32 %132)
  br label %141

134:                                              ; preds = %120
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* @FALSE, align 4
  %140 = call i32 @vm_map_store_update_first_free(%struct.TYPE_16__* %135, i32* %138, i32 %139)
  br label %141

141:                                              ; preds = %134, %130
  br label %142

142:                                              ; preds = %141, %114
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = sub nsw i64 %151, %154
  %156 = call i32 @pmap_unnest(i64 %145, i64 %148, i64 %155)
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %179

161:                                              ; preds = %142
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %161
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %175 = call %struct.TYPE_18__* @VME_SUBMAP(%struct.TYPE_17__* %174)
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %177 = call i64 @VME_OFFSET(%struct.TYPE_17__* %176)
  %178 = call i32 @vm_map_submap_pmap_clean(%struct.TYPE_16__* %167, i64 %170, i64 %173, %struct.TYPE_18__* %175, i64 %177)
  br label %179

179:                                              ; preds = %166, %161, %142
  %180 = load i32, i32* @FALSE, align 4
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @kernel_pmap, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %197

188:                                              ; preds = %179
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %190 = call i64 @VME_ALIAS(%struct.TYPE_17__* %189)
  %191 = load i64, i64* @VM_MEMORY_SHARED_PMAP, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %188
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %195 = load i32, i32* @VM_MEMORY_UNSHARED_PMAP, align 4
  %196 = call i32 @VME_ALIAS_SET(%struct.TYPE_17__* %194, i32 %195)
  br label %197

197:                                              ; preds = %193, %188, %179
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_18__* @VME_SUBMAP(%struct.TYPE_17__*) #1

declare dso_local i64 @pmap_adjust_unnest_parameters(i64, i64*, i64*) #1

declare dso_local i32 @log_unnest_badness(%struct.TYPE_16__*, i64, i64, i32, i64) #1

declare dso_local i64 @VME_OFFSET(%struct.TYPE_17__*) #1

declare dso_local i32 @panic(i8*, i64, i64, i64, i64) #1

declare dso_local i32 @_vm_map_clip_start(i32*, %struct.TYPE_17__*, i64) #1

declare dso_local i32 @vm_map_store_update_first_free(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @_vm_map_clip_end(i32*, %struct.TYPE_17__*, i64) #1

declare dso_local i32 @pmap_unnest(i64, i64, i64) #1

declare dso_local i32 @vm_map_submap_pmap_clean(%struct.TYPE_16__*, i64, i64, %struct.TYPE_18__*, i64) #1

declare dso_local i64 @VME_ALIAS(%struct.TYPE_17__*) #1

declare dso_local i32 @VME_ALIAS_SET(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
