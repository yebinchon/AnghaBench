; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_overwrite_submap_recurse.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_overwrite_submap_recurse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64, i64, i32, i8*, i64, %struct.TYPE_10__*, i64, i32 }

@FALSE = common dso_local global i8* null, align 8
@KERN_INVALID_ADDRESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@THREAD_UNINT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@KERN_PROTECTION_FAILURE = common dso_local global i32 0, align 4
@VM_OBJECT_NULL = common dso_local global %struct.TYPE_11__* null, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64)* @vm_map_overwrite_submap_recurse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_map_overwrite_submap_recurse(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load i8*, i8** @FALSE, align 8
  store i8* %17, i8** %12, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @VM_MAP_PAGE_MASK(i32 %21)
  %23 = call i64 @vm_map_round_page(i64 %20, i32 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @vm_map_lock(i32 %24)
  br label %26

26:                                               ; preds = %160, %71, %3
  %27 = load i32, i32* %5, align 4
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @vm_map_lookup_entry(i32 %27, i64 %28, %struct.TYPE_10__** %9)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @vm_map_unlock(i32 %32)
  %34 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %34, i32* %4, align 4
  br label %221

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @VM_MAP_PAGE_MASK(i32 %39)
  %41 = call i32 @vm_map_trunc_page(i64 %38, i32 %40)
  %42 = call i32 @vm_map_clip_start(i32 %36, %struct.TYPE_10__* %37, i32 %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %35
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  br label %55

55:                                               ; preds = %47, %35
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %10, align 8
  br label %57

57:                                               ; preds = %219, %55
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 5
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %13, align 8
  br label %61

61:                                               ; preds = %139, %57
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %144

66:                                               ; preds = %61
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load i8*, i8** @TRUE, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @THREAD_UNINT, align 4
  %77 = call i32 @vm_map_entry_wait(i32 %75, i32 %76)
  br label %26

78:                                               ; preds = %66
  %79 = load i8*, i8** @TRUE, align 8
  store i8* %79, i8** %12, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %81 = call i64 @VME_OFFSET(%struct.TYPE_10__* %80)
  store i64 %81, i64* %14, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %8, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %78
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %15, align 8
  br label %93

91:                                               ; preds = %78
  %92 = load i64, i64* %8, align 8
  store i64 %92, i64* %15, align 8
  br label %93

93:                                               ; preds = %91, %87
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %15, align 8
  %98 = sub nsw i64 %97, %96
  store i64 %98, i64* %15, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %100 = call i64 @VME_OFFSET(%struct.TYPE_10__* %99)
  %101 = load i64, i64* %15, align 8
  %102 = add nsw i64 %101, %100
  store i64 %102, i64* %15, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %16, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @vm_map_unlock(i32 %106)
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %109 = call i32 @VME_SUBMAP(%struct.TYPE_10__* %108)
  %110 = load i64, i64* %14, align 8
  %111 = load i64, i64* %15, align 8
  %112 = load i64, i64* %14, align 8
  %113 = sub nsw i64 %111, %112
  %114 = call i32 @vm_map_overwrite_submap_recurse(i32 %109, i64 %110, i64 %113)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @KERN_SUCCESS, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %93
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %4, align 4
  br label %221

120:                                              ; preds = %93
  %121 = load i64, i64* %8, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp sle i64 %121, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %127, i32* %4, align 4
  br label %221

128:                                              ; preds = %120
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @vm_map_lock(i32 %129)
  %131 = load i32, i32* %5, align 4
  %132 = load i64, i64* %16, align 8
  %133 = call i32 @vm_map_lookup_entry(i32 %131, i64 %132, %struct.TYPE_10__** %9)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %128
  %136 = load i32, i32* %5, align 4
  %137 = call i32 @vm_map_unlock(i32 %136)
  %138 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %138, i32* %4, align 4
  br label %221

139:                                              ; preds = %128
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %140, %struct.TYPE_10__** %10, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 5
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  store %struct.TYPE_10__* %143, %struct.TYPE_10__** %13, align 8
  br label %61

144:                                              ; preds = %61
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @VM_PROT_WRITE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %144
  %152 = load i32, i32* %5, align 4
  %153 = call i32 @vm_map_unlock(i32 %152)
  %154 = load i32, i32* @KERN_PROTECTION_FAILURE, align 4
  store i32 %154, i32* %4, align 4
  br label %221

155:                                              ; preds = %144
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %155
  %161 = load i8*, i8** @TRUE, align 8
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 3
  store i8* %161, i8** %163, align 8
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* @THREAD_UNINT, align 4
  %166 = call i32 @vm_map_entry_wait(i32 %164, i32 %165)
  br label %26

167:                                              ; preds = %155
  %168 = load i64, i64* %8, align 8
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp sle i64 %168, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %167
  %174 = load i32, i32* %5, align 4
  %175 = call i32 @vm_map_unlock(i32 %174)
  %176 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %176, i32* %4, align 4
  br label %221

177:                                              ; preds = %167
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %179 = load i32, i32* %5, align 4
  %180 = call %struct.TYPE_10__* @vm_map_to_entry(i32 %179)
  %181 = icmp eq %struct.TYPE_10__* %178, %180
  br i1 %181, label %190, label %182

182:                                              ; preds = %177
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %185, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %182, %177
  %191 = load i32, i32* %5, align 4
  %192 = call i32 @vm_map_unlock(i32 %191)
  %193 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %193, i32* %4, align 4
  br label %221

194:                                              ; preds = %182
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %196 = call %struct.TYPE_11__* @VME_OBJECT(%struct.TYPE_10__* %195)
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VM_OBJECT_NULL, align 8
  %198 = icmp ne %struct.TYPE_11__* %196, %197
  br i1 %198, label %199, label %219

199:                                              ; preds = %194
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %201 = call %struct.TYPE_11__* @VME_OBJECT(%struct.TYPE_10__* %200)
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %199
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %207 = call %struct.TYPE_11__* @VME_OBJECT(%struct.TYPE_10__* %206)
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %205, %199
  %212 = load i8*, i8** %12, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %214, label %218

214:                                              ; preds = %211
  %215 = load i32, i32* %5, align 4
  %216 = call i32 @vm_map_unlock(i32 %215)
  %217 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %217, i32* %4, align 4
  br label %221

218:                                              ; preds = %211
  br label %219

219:                                              ; preds = %218, %205, %194
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %220, %struct.TYPE_10__** %10, align 8
  br label %57

221:                                              ; preds = %214, %190, %173, %151, %135, %126, %118, %31
  %222 = load i32, i32* %4, align 4
  ret i32 %222
}

declare dso_local i64 @vm_map_round_page(i64, i32) #1

declare dso_local i32 @VM_MAP_PAGE_MASK(i32) #1

declare dso_local i32 @vm_map_lock(i32) #1

declare dso_local i32 @vm_map_lookup_entry(i32, i64, %struct.TYPE_10__**) #1

declare dso_local i32 @vm_map_unlock(i32) #1

declare dso_local i32 @vm_map_clip_start(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @vm_map_trunc_page(i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_map_entry_wait(i32, i32) #1

declare dso_local i64 @VME_OFFSET(%struct.TYPE_10__*) #1

declare dso_local i32 @VME_SUBMAP(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @vm_map_to_entry(i32) #1

declare dso_local %struct.TYPE_11__* @VME_OBJECT(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
