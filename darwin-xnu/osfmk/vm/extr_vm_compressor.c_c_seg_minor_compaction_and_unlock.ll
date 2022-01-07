; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_c_seg_minor_compaction_and_unlock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_c_seg_minor_compaction_and_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32, i32, i64, i64, i32, %struct.TYPE_19__, i64, i32, i32 }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@C_SEG_OFFSET_ALIGNMENT_MASK = common dso_local global i64 0, align 8
@compressor_map = common dso_local global i32 0, align 4
@KMA_COMPRESSOR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_seg_minor_compaction_and_unlock(%struct.TYPE_22__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %27 = call i32 @c_seg_free(%struct.TYPE_22__* %26)
  store i32 1, i32* %3, align 4
  br label %197

28:                                               ; preds = %2
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 5
  %31 = call i32 @lck_mtx_unlock_always(i32* %30)
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %34, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %28
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %41 = call i64 @C_SEG_UNUSED_BYTES(%struct.TYPE_22__* %40)
  %42 = load i64, i64* @PAGE_SIZE, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %28
  br label %183

45:                                               ; preds = %39
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %11, align 4
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call %struct.TYPE_20__* @C_SEG_SLOT_FROM_INDEX(%struct.TYPE_22__* %49, i32 %50)
  store %struct.TYPE_20__* %51, %struct.TYPE_20__** %13, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %8, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %7, align 8
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %129, %45
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %67, %70
  br label %72

72:                                               ; preds = %66, %60
  %73 = phi i1 [ false, %60 ], [ %71, %66 ]
  br i1 %73, label %74, label %132

74:                                               ; preds = %72
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call %struct.TYPE_20__* @C_SEG_SLOT_FROM_INDEX(%struct.TYPE_22__* %75, i32 %76)
  store %struct.TYPE_20__* %77, %struct.TYPE_20__** %14, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %79 = call i64 @UNPACK_C_SIZE(%struct.TYPE_20__* %78)
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %10, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %129

83:                                               ; preds = %74
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* @C_SEG_OFFSET_ALIGNMENT_MASK, align 8
  %86 = add i64 %84, %85
  %87 = load i64, i64* @C_SEG_OFFSET_ALIGNMENT_MASK, align 8
  %88 = xor i64 %87, -1
  %89 = and i64 %86, %88
  store i64 %89, i64* %9, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %7, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i64, i64* %9, align 8
  %105 = call i32 @memcpy(i32* %95, i32* %103, i64 %104)
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %108 = call i32 @cslot_copy(%struct.TYPE_20__* %106, %struct.TYPE_20__* %107)
  %109 = load i64, i64* %7, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %113 = call i64 @C_SLOT_UNPACK_PTR(%struct.TYPE_20__* %112)
  %114 = inttoptr i64 %113 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %114, %struct.TYPE_21__** %6, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load i64, i64* %9, align 8
  %119 = call i64 @C_SEG_BYTES_TO_OFFSET(i64 %118)
  %120 = load i64, i64* %7, align 8
  %121 = add i64 %120, %119
  store i64 %121, i64* %7, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %123 = call i32 @PACK_C_SIZE(%struct.TYPE_20__* %122, i32 0)
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %127 = load i32, i32* %11, align 4
  %128 = call %struct.TYPE_20__* @C_SEG_SLOT_FROM_INDEX(%struct.TYPE_22__* %126, i32 %127)
  store %struct.TYPE_20__* %128, %struct.TYPE_20__** %13, align 8
  br label %129

129:                                              ; preds = %83, %82
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %12, align 4
  br label %60

132:                                              ; preds = %72
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 4
  %139 = load i64, i64* %7, align 8
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 4
  store i64 %139, i64* %141, align 8
  %142 = load i64, i64* %7, align 8
  %143 = load i64, i64* @PAGE_SIZE, align 8
  %144 = call i64 @C_SEG_BYTES_TO_OFFSET(i64 %143)
  %145 = sub i64 %144, 1
  %146 = add i64 %142, %145
  %147 = load i64, i64* @PAGE_SIZE, align 8
  %148 = call i64 @C_SEG_BYTES_TO_OFFSET(i64 %147)
  %149 = sub i64 %148, 1
  %150 = xor i64 %149, -1
  %151 = and i64 %146, %150
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 3
  store i64 %151, i64* %153, align 8
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 7
  store i64 0, i64* %155, align 8
  %156 = load i64, i64* %8, align 8
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = icmp ugt i64 %156, %159
  br i1 %160, label %161, label %182

161:                                              ; preds = %132
  %162 = load i64, i64* %8, align 8
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = sub i64 %162, %165
  %167 = call i64 @C_SEG_OFFSET_TO_BYTES(i64 %166)
  store i64 %167, i64* %15, align 8
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 6
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  store i32* %175, i32** %16, align 8
  %176 = load i32, i32* @compressor_map, align 4
  %177 = load i32*, i32** %16, align 8
  %178 = ptrtoint i32* %177 to i32
  %179 = load i64, i64* %15, align 8
  %180 = load i32, i32* @KMA_COMPRESSOR, align 4
  %181 = call i32 @kernel_memory_depopulate(i32 %176, i32 %178, i64 %179, i32 %180)
  br label %182

182:                                              ; preds = %161, %132
  br label %183

183:                                              ; preds = %182, %44
  %184 = load i64, i64* %5, align 8
  %185 = load i64, i64* @TRUE, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %196

187:                                              ; preds = %183
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 5
  %190 = call i32 @lck_mtx_lock_spin_always(i32* %189)
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %192 = call i32 @C_SEG_WAKEUP_DONE(%struct.TYPE_22__* %191)
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 5
  %195 = call i32 @lck_mtx_unlock_always(i32* %194)
  br label %196

196:                                              ; preds = %187, %183
  store i32 0, i32* %3, align 4
  br label %197

197:                                              ; preds = %196, %25
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @c_seg_free(%struct.TYPE_22__*) #1

declare dso_local i32 @lck_mtx_unlock_always(i32*) #1

declare dso_local i64 @C_SEG_UNUSED_BYTES(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_20__* @C_SEG_SLOT_FROM_INDEX(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @UNPACK_C_SIZE(%struct.TYPE_20__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @cslot_copy(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i64 @C_SLOT_UNPACK_PTR(%struct.TYPE_20__*) #1

declare dso_local i64 @C_SEG_BYTES_TO_OFFSET(i64) #1

declare dso_local i32 @PACK_C_SIZE(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @C_SEG_OFFSET_TO_BYTES(i64) #1

declare dso_local i32 @kernel_memory_depopulate(i32, i32, i64, i32) #1

declare dso_local i32 @lck_mtx_lock_spin_always(i32*) #1

declare dso_local i32 @C_SEG_WAKEUP_DONE(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
