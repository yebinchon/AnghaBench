; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_submap_pmap_clean.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_submap_pmap_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i64 }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_16__*, i64 }

@PMAP_NULL = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i32 0, align 4
@PMAP_OPTIONS_REMOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_map_submap_pmap_clean(%struct.TYPE_15__* %0, i64 %1, i64 %2, %struct.TYPE_15__* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %7, align 8
  %18 = sub nsw i64 %16, %17
  %19 = add nsw i64 %15, %18
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %10, align 8
  store i64 %20, i64* %11, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %22 = call i32 @vm_map_lock_read(%struct.TYPE_15__* %21)
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i64 @vm_map_lookup_entry(%struct.TYPE_15__* %23, i64 %24, %struct.TYPE_16__** %14)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %123

27:                                               ; preds = %5
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  store i64 %34, i64* %13, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %27
  %41 = load i64, i64* %10, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  %46 = load i64, i64* %13, align 8
  %47 = sub nsw i64 %46, %45
  store i64 %47, i64* %13, align 8
  br label %48

48:                                               ; preds = %40, %27
  %49 = load i64, i64* %12, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %12, align 8
  %59 = sub nsw i64 %57, %58
  %60 = load i64, i64* %13, align 8
  %61 = sub nsw i64 %60, %59
  store i64 %61, i64* %13, align 8
  br label %62

62:                                               ; preds = %54, %48
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %13, align 8
  %72 = add nsw i64 %70, %71
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %74 = call %struct.TYPE_15__* @VME_SUBMAP(%struct.TYPE_16__* %73)
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %76 = call i64 @VME_OFFSET(%struct.TYPE_16__* %75)
  call void @vm_map_submap_pmap_clean(%struct.TYPE_15__* %68, i64 %69, i64 %72, %struct.TYPE_15__* %74, i64 %76)
  br label %122

77:                                               ; preds = %62
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %110

82:                                               ; preds = %77
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %110

87:                                               ; preds = %82
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %89 = call i32* @VME_OBJECT(%struct.TYPE_16__* %88)
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %110

91:                                               ; preds = %87
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %93 = call i32* @VME_OBJECT(%struct.TYPE_16__* %92)
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %95 = call i64 @VME_OFFSET(%struct.TYPE_16__* %94)
  %96 = load i64, i64* %10, align 8
  %97 = add nsw i64 %95, %96
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %97, %100
  %102 = load i64, i64* %13, align 8
  %103 = load i32, i32* @PMAP_NULL, align 4
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* @VM_PROT_NONE, align 4
  %108 = load i32, i32* @PMAP_OPTIONS_REMOVE, align 4
  %109 = call i32 @vm_object_pmap_protect_options(i32* %93, i64 %101, i64 %102, i32 %103, i64 %106, i32 %107, i32 %108)
  br label %121

110:                                              ; preds = %87, %82, %77
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i64, i64* %7, align 8
  %115 = trunc i64 %114 to i32
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* %13, align 8
  %118 = add nsw i64 %116, %117
  %119 = trunc i64 %118 to i32
  %120 = call i32 @pmap_remove(i32 %113, i32 %115, i32 %119)
  br label %121

121:                                              ; preds = %110, %91
  br label %122

122:                                              ; preds = %121, %67
  br label %123

123:                                              ; preds = %122, %5
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %125, align 8
  store %struct.TYPE_16__* %126, %struct.TYPE_16__** %14, align 8
  br label %127

127:                                              ; preds = %239, %123
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %130 = call %struct.TYPE_16__* @vm_map_to_entry(%struct.TYPE_15__* %129)
  %131 = icmp ne %struct.TYPE_16__* %128, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %12, align 8
  %137 = icmp slt i64 %135, %136
  br label %138

138:                                              ; preds = %132, %127
  %139 = phi i1 [ false, %127 ], [ %137, %132 ]
  br i1 %139, label %140, label %243

140:                                              ; preds = %138
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = sub nsw i64 %143, %146
  store i64 %147, i64* %13, align 8
  %148 = load i64, i64* %12, align 8
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp slt i64 %148, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %140
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* %12, align 8
  %158 = sub nsw i64 %156, %157
  %159 = load i64, i64* %13, align 8
  %160 = sub nsw i64 %159, %158
  store i64 %160, i64* %13, align 8
  br label %161

161:                                              ; preds = %153, %140
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %188

166:                                              ; preds = %161
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %168 = load i64, i64* %7, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %168, %171
  %173 = load i64, i64* %10, align 8
  %174 = sub nsw i64 %172, %173
  %175 = load i64, i64* %7, align 8
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %175, %178
  %180 = load i64, i64* %10, align 8
  %181 = sub nsw i64 %179, %180
  %182 = load i64, i64* %13, align 8
  %183 = add nsw i64 %181, %182
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %185 = call %struct.TYPE_15__* @VME_SUBMAP(%struct.TYPE_16__* %184)
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %187 = call i64 @VME_OFFSET(%struct.TYPE_16__* %186)
  call void @vm_map_submap_pmap_clean(%struct.TYPE_15__* %167, i64 %174, i64 %183, %struct.TYPE_15__* %185, i64 %187)
  br label %239

188:                                              ; preds = %161
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %215

193:                                              ; preds = %188
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %215

198:                                              ; preds = %193
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %200 = call i32* @VME_OBJECT(%struct.TYPE_16__* %199)
  %201 = icmp ne i32* %200, null
  br i1 %201, label %202, label %215

202:                                              ; preds = %198
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %204 = call i32* @VME_OBJECT(%struct.TYPE_16__* %203)
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %206 = call i64 @VME_OFFSET(%struct.TYPE_16__* %205)
  %207 = load i64, i64* %13, align 8
  %208 = load i32, i32* @PMAP_NULL, align 4
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load i32, i32* @VM_PROT_NONE, align 4
  %213 = load i32, i32* @PMAP_OPTIONS_REMOVE, align 4
  %214 = call i32 @vm_object_pmap_protect_options(i32* %204, i64 %206, i64 %207, i32 %208, i64 %211, i32 %212, i32 %213)
  br label %238

215:                                              ; preds = %198, %193, %188
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i64, i64* %7, align 8
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %219, %222
  %224 = load i64, i64* %10, align 8
  %225 = sub nsw i64 %223, %224
  %226 = trunc i64 %225 to i32
  %227 = load i64, i64* %7, align 8
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = add nsw i64 %227, %230
  %232 = load i64, i64* %10, align 8
  %233 = sub nsw i64 %231, %232
  %234 = load i64, i64* %13, align 8
  %235 = add nsw i64 %233, %234
  %236 = trunc i64 %235 to i32
  %237 = call i32 @pmap_remove(i32 %218, i32 %226, i32 %236)
  br label %238

238:                                              ; preds = %215, %202
  br label %239

239:                                              ; preds = %238, %166
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 2
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %241, align 8
  store %struct.TYPE_16__* %242, %struct.TYPE_16__** %14, align 8
  br label %127

243:                                              ; preds = %138
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %245 = call i32 @vm_map_unlock_read(%struct.TYPE_15__* %244)
  ret void
}

declare dso_local i32 @vm_map_lock_read(%struct.TYPE_15__*) #1

declare dso_local i64 @vm_map_lookup_entry(%struct.TYPE_15__*, i64, %struct.TYPE_16__**) #1

declare dso_local %struct.TYPE_15__* @VME_SUBMAP(%struct.TYPE_16__*) #1

declare dso_local i64 @VME_OFFSET(%struct.TYPE_16__*) #1

declare dso_local i32* @VME_OBJECT(%struct.TYPE_16__*) #1

declare dso_local i32 @vm_object_pmap_protect_options(i32*, i64, i64, i32, i64, i32, i32) #1

declare dso_local i32 @pmap_remove(i32, i32, i32) #1

declare dso_local %struct.TYPE_16__* @vm_map_to_entry(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_map_unlock_read(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
