; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_enter_mem_object_control.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_enter_mem_object_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i64, i32, i64, i32 }
%struct.TYPE_22__ = type { i32 }

@VM_MAP_NULL = common dso_local global i64 0, align 8
@VM_PROT_ALL = common dso_local global i32 0, align 4
@VM_INHERIT_LAST_VALID = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@VM_OBJECT_NULL = common dso_local global %struct.TYPE_21__* null, align 8
@KERN_INVALID_OBJECT = common dso_local global i64 0, align 8
@kernel_object = common dso_local global %struct.TYPE_21__* null, align 8
@.str = private unnamed_addr constant [70 x i8] c"Warning: Attempt to map kernel object by a non-private kernel entity\0A\00", align 1
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@MEMORY_OBJECT_NULL = common dso_local global i64 0, align 8
@MEMORY_OBJECT_COPY_NONE = common dso_local global i64 0, align 8
@THREAD_UNINT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@KERN_MEMORY_RESTART_COPY = common dso_local global i64 0, align 8
@FOURK_PAGE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vm_map_enter_mem_object_control(i64 %0, i64* %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_22__, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca %struct.TYPE_21__*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca i64, align 8
  %36 = alloca %struct.TYPE_21__*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  store i32 %5, i32* %40, align 4
  store i64 %0, i64* %16, align 8
  store i64* %1, i64** %17, align 8
  store i64 %2, i64* %18, align 8
  store i64 %3, i64* %19, align 8
  store i32 %4, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  %41 = load i64, i64* %16, align 8
  %42 = load i64, i64* @VM_MAP_NULL, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %63, label %44

44:                                               ; preds = %13
  %45 = load i32, i32* %25, align 4
  %46 = load i32, i32* @VM_PROT_ALL, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %26, align 4
  %52 = load i32, i32* @VM_PROT_ALL, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %27, align 4
  %58 = load i32, i32* @VM_INHERIT_LAST_VALID, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %18, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60, %56, %50, %44, %13
  %64 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %64, i64* %14, align 8
  br label %208

65:                                               ; preds = %60
  %66 = load i64*, i64** %17, align 8
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %16, align 8
  %69 = call i32 @VM_MAP_PAGE_MASK(i64 %68)
  %70 = call i64 @vm_map_trunc_page(i64 %67, i32 %69)
  store i64 %70, i64* %28, align 8
  %71 = load i64, i64* %18, align 8
  %72 = load i64, i64* %16, align 8
  %73 = call i32 @VM_MAP_PAGE_MASK(i64 %72)
  %74 = call i64 @vm_map_round_page(i64 %71, i32 %73)
  store i64 %74, i64* %29, align 8
  %75 = load i64, i64* %18, align 8
  %76 = call i32 @vm_object_round_page(i64 %75)
  store i32 %76, i32* %31, align 4
  %77 = load i32, i32* %22, align 4
  %78 = call %struct.TYPE_21__* @memory_object_control_to_vm_object(i32 %77)
  store %struct.TYPE_21__* %78, %struct.TYPE_21__** %30, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** @VM_OBJECT_NULL, align 8
  %81 = icmp eq %struct.TYPE_21__* %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %65
  %83 = load i64, i64* @KERN_INVALID_OBJECT, align 8
  store i64 %83, i64* %14, align 8
  br label %208

84:                                               ; preds = %65
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** @kernel_object, align 8
  %87 = icmp eq %struct.TYPE_21__* %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = call i32 @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %90 = load i64, i64* @KERN_INVALID_OBJECT, align 8
  store i64 %90, i64* %14, align 8
  br label %208

91:                                               ; preds = %84
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %93 = call i32 @vm_object_lock(%struct.TYPE_21__* %92)
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %99 = call i32 @vm_object_res_reference(%struct.TYPE_21__* %98)
  %100 = load i32, i32* %26, align 4
  store i32 %100, i32* %34, align 4
  %101 = load i32, i32* %24, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %91
  %104 = load i32, i32* @VM_PROT_WRITE, align 4
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %34, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %34, align 4
  br label %108

108:                                              ; preds = %103, %91
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %33, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %150

116:                                              ; preds = %108
  %117 = load i64, i64* %33, align 8
  %118 = load i64, i64* @MEMORY_OBJECT_NULL, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %150

120:                                              ; preds = %116
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @MEMORY_OBJECT_COPY_NONE, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %150

126:                                              ; preds = %120
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @assert(i32 %129)
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %132 = load i32, i32* @THREAD_UNINT, align 4
  %133 = call i32 @vm_object_mapping_wait(%struct.TYPE_21__* %131, i32 %132)
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %135 = call i32 @vm_object_mapping_begin(%struct.TYPE_21__* %134)
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %137 = call i32 @vm_object_unlock(%struct.TYPE_21__* %136)
  %138 = load i64, i64* %33, align 8
  %139 = load i32, i32* %34, align 4
  %140 = call i64 @memory_object_map(i64 %138, i32 %139)
  store i64 %140, i64* %35, align 8
  %141 = load i64, i64* %35, align 8
  %142 = load i64, i64* @KERN_SUCCESS, align 8
  %143 = icmp eq i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %147 = call i32 @vm_object_lock(%struct.TYPE_21__* %146)
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %149 = call i32 @vm_object_mapping_end(%struct.TYPE_21__* %148)
  br label %150

150:                                              ; preds = %126, %120, %116, %108
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %152 = call i32 @vm_object_unlock(%struct.TYPE_21__* %151)
  %153 = load i32, i32* %24, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %183

155:                                              ; preds = %150
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %157 = load i32, i32* %23, align 4
  %158 = load i32, i32* %31, align 4
  %159 = call i64 @vm_object_copy_strategically(%struct.TYPE_21__* %156, i32 %157, i32 %158, %struct.TYPE_21__** %36, i32* %37, i32* %24)
  store i64 %159, i64* %32, align 8
  %160 = load i64, i64* %32, align 8
  %161 = load i64, i64* @KERN_MEMORY_RESTART_COPY, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %172

163:                                              ; preds = %155
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  store %struct.TYPE_21__* %164, %struct.TYPE_21__** %36, align 8
  %165 = load i32, i32* %23, align 4
  store i32 %165, i32* %37, align 4
  %166 = load i32, i32* %37, align 4
  %167 = load i32, i32* %31, align 4
  %168 = call i32 @vm_object_copy_quickly(%struct.TYPE_21__** %36, i32 %166, i32 %167, i32* %39, i32* %24)
  store i32 %168, i32* %38, align 4
  %169 = load i32, i32* %38, align 4
  %170 = call i32 @assert(i32 %169)
  %171 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %171, i64* %32, align 8
  br label %172

172:                                              ; preds = %163, %155
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %174 = call i32 @vm_object_deallocate(%struct.TYPE_21__* %173)
  %175 = load i64, i64* %32, align 8
  %176 = load i64, i64* @KERN_SUCCESS, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %172
  %179 = load i64, i64* %32, align 8
  store i64 %179, i64* %14, align 8
  br label %208

180:                                              ; preds = %172
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  store %struct.TYPE_21__* %181, %struct.TYPE_21__** %30, align 8
  %182 = load i32, i32* %37, align 4
  store i32 %182, i32* %23, align 4
  br label %183

183:                                              ; preds = %180, %150
  %184 = load i64, i64* %16, align 8
  %185 = load i64, i64* %29, align 8
  %186 = load i64, i64* %19, align 8
  %187 = load i32, i32* %20, align 4
  %188 = load i32, i32* %21, align 4
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %190 = load i32, i32* %23, align 4
  %191 = load i32, i32* %24, align 4
  %192 = load i32, i32* %25, align 4
  %193 = load i32, i32* %26, align 4
  %194 = load i32, i32* %27, align 4
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i64 @vm_map_enter(i64 %184, i64* %28, i64 %185, i64 %186, i32 %187, i32 %196, i32 %188, %struct.TYPE_21__* %189, i32 %190, i32 %191, i32 %192, i32 %193, i32 %194)
  store i64 %197, i64* %32, align 8
  %198 = load i64, i64* %32, align 8
  %199 = load i64, i64* @KERN_SUCCESS, align 8
  %200 = icmp ne i64 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %183
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %203 = call i32 @vm_object_deallocate(%struct.TYPE_21__* %202)
  br label %204

204:                                              ; preds = %201, %183
  %205 = load i64, i64* %28, align 8
  %206 = load i64*, i64** %17, align 8
  store i64 %205, i64* %206, align 8
  %207 = load i64, i64* %32, align 8
  store i64 %207, i64* %14, align 8
  br label %208

208:                                              ; preds = %204, %178, %88, %82, %63
  %209 = load i64, i64* %14, align 8
  ret i64 %209
}

declare dso_local i64 @vm_map_trunc_page(i64, i32) #1

declare dso_local i32 @VM_MAP_PAGE_MASK(i64) #1

declare dso_local i64 @vm_map_round_page(i64, i32) #1

declare dso_local i32 @vm_object_round_page(i64) #1

declare dso_local %struct.TYPE_21__* @memory_object_control_to_vm_object(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @vm_object_lock(%struct.TYPE_21__*) #1

declare dso_local i32 @vm_object_res_reference(%struct.TYPE_21__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_object_mapping_wait(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @vm_object_mapping_begin(%struct.TYPE_21__*) #1

declare dso_local i32 @vm_object_unlock(%struct.TYPE_21__*) #1

declare dso_local i64 @memory_object_map(i64, i32) #1

declare dso_local i32 @vm_object_mapping_end(%struct.TYPE_21__*) #1

declare dso_local i64 @vm_object_copy_strategically(%struct.TYPE_21__*, i32, i32, %struct.TYPE_21__**, i32*, i32*) #1

declare dso_local i32 @vm_object_copy_quickly(%struct.TYPE_21__**, i32, i32, i32*, i32*) #1

declare dso_local i32 @vm_object_deallocate(%struct.TYPE_21__*) #1

declare dso_local i64 @vm_map_enter(i64, i64*, i64, i64, i32, i32, i32, %struct.TYPE_21__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
