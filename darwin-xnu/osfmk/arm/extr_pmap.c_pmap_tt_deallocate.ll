; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_tt_deallocate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_tt_deallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_17__* }

@PAGE_RATIO = common dso_local global i32 0, align 4
@PMAP_TT_MAX_LEVEL = common dso_local global i32 0, align 4
@PT_DESC_REFCOUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"pmap_tt_deallocate(): ptdp %p, count %d\0A\00", align 1
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global %struct.TYPE_19__* null, align 8
@inuse_kernel_ttepages_count = common dso_local global i32 0, align 4
@inuse_user_ttepages_count = common dso_local global i32 0, align 4
@inuse_kernel_ptepages_count = common dso_local global i32 0, align 4
@inuse_user_ptepages_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, i32*, i32)* @pmap_tt_deallocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_tt_deallocate(%struct.TYPE_19__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load i32, i32* @PAGE_RATIO, align 4
  store i32 %17, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %19 = call i32 @PMAP_LOCK(%struct.TYPE_19__* %18)
  %20 = load i32*, i32** %5, align 8
  %21 = ptrtoint i32* %20 to i64
  %22 = call %struct.TYPE_18__* @ptep_get_ptd(i64 %21)
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %7, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @ARM_PT_DESC_INDEX(i32* %26)
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  store i64 -1, i64* %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @PMAP_TT_MAX_LEVEL, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %3
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i64 @ARM_PT_DESC_INDEX(i32* %37)
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PT_DESC_REFCOUNT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %33
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i64 @ARM_PT_DESC_INDEX(i32* %48)
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %44, %33, %3
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = call i64 @ARM_PT_DESC_INDEX(i32* %56)
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %52
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i64 @ARM_PT_DESC_INDEX(i32* %67)
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.TYPE_18__* %63, i64 %71)
  br label %73

73:                                               ; preds = %62, %52
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = call i64 @ARM_PT_DESC_INDEX(i32* %77)
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %98, %73
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %81
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = zext i32 %94 to i64
  %96 = add nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %85
  %99 = load i32, i32* %9, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %81

101:                                              ; preds = %81
  %102 = load i32, i32* %8, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %188

104:                                              ; preds = %101
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = bitcast i32** %106 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %107, %struct.TYPE_17__** %12, align 8
  store i32 1, i32* %13, align 4
  br label %108

108:                                              ; preds = %134, %104
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %114 = icmp ne %struct.TYPE_17__* %113, null
  br label %115

115:                                              ; preds = %112, %108
  %116 = phi i1 [ false, %108 ], [ %114, %112 ]
  br i1 %116, label %117, label %136

117:                                              ; preds = %115
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %119, align 8
  store %struct.TYPE_17__* %120, %struct.TYPE_17__** %14, align 8
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %122 = ptrtoint %struct.TYPE_17__* %121 to i64
  %123 = load i32*, i32** %5, align 8
  %124 = ptrtoint i32* %123 to i64
  %125 = load i64, i64* @PAGE_MASK, align 8
  %126 = xor i64 %125, -1
  %127 = and i64 %124, %126
  %128 = sub nsw i64 %122, %127
  %129 = load i64, i64* @PAGE_SIZE, align 8
  %130 = icmp slt i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %117
  %132 = load i32, i32* %13, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %13, align 4
  br label %134

134:                                              ; preds = %131, %117
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  store %struct.TYPE_17__* %135, %struct.TYPE_17__** %12, align 8
  br label %108

136:                                              ; preds = %115
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %176

140:                                              ; preds = %136
  %141 = load i32*, i32** %5, align 8
  %142 = ptrtoint i32* %141 to i64
  %143 = load i64, i64* @PAGE_MASK, align 8
  %144 = xor i64 %143, -1
  %145 = and i64 %142, %144
  store i64 %145, i64* %11, align 8
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 0
  %148 = bitcast i32** %147 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %148, %struct.TYPE_17__** %12, align 8
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = bitcast i32** %150 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %151, %struct.TYPE_17__** %15, align 8
  br label %152

152:                                              ; preds = %173, %140
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %154 = icmp ne %struct.TYPE_17__* %153, null
  br i1 %154, label %155, label %175

155:                                              ; preds = %152
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %157, align 8
  store %struct.TYPE_17__* %158, %struct.TYPE_17__** %16, align 8
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %160 = ptrtoint %struct.TYPE_17__* %159 to i64
  %161 = load i64, i64* %11, align 8
  %162 = sub nsw i64 %160, %161
  %163 = load i64, i64* @PAGE_SIZE, align 8
  %164 = icmp slt i64 %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %155
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %167, align 8
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 0
  store %struct.TYPE_17__* %168, %struct.TYPE_17__** %170, align 8
  br label %173

171:                                              ; preds = %155
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_17__* %172, %struct.TYPE_17__** %12, align 8
  br label %173

173:                                              ; preds = %171, %165
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_17__* %174, %struct.TYPE_17__** %15, align 8
  br label %152

175:                                              ; preds = %152
  br label %187

176:                                              ; preds = %136
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = bitcast i32* %179 to %struct.TYPE_17__*
  %181 = load i32*, i32** %5, align 8
  %182 = bitcast i32* %181 to %struct.TYPE_17__*
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  store %struct.TYPE_17__* %180, %struct.TYPE_17__** %183, align 8
  %184 = load i32*, i32** %5, align 8
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 0
  store i32* %184, i32** %186, align 8
  br label %187

187:                                              ; preds = %176, %175
  br label %199

188:                                              ; preds = %101
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = bitcast i32* %191 to %struct.TYPE_17__*
  %193 = load i32*, i32** %5, align 8
  %194 = bitcast i32* %193 to %struct.TYPE_17__*
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 0
  store %struct.TYPE_17__* %192, %struct.TYPE_17__** %195, align 8
  %196 = load i32*, i32** %5, align 8
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 0
  store i32* %196, i32** %198, align 8
  br label %199

199:                                              ; preds = %188, %187
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %201 = call i32 @PMAP_UNLOCK(%struct.TYPE_19__* %200)
  %202 = load i64, i64* %11, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %241

204:                                              ; preds = %199
  %205 = load i64, i64* %11, align 8
  %206 = call %struct.TYPE_18__* @ptep_get_ptd(i64 %205)
  %207 = call i32 @ptd_deallocate(%struct.TYPE_18__* %206)
  %208 = load i64, i64* %11, align 8
  %209 = call i32 @ml_static_vtop(i64 %208)
  %210 = call i32 @pa_index(i32 %209)
  %211 = call i64 @pai_to_pvh(i32 %210)
  %212 = inttoptr i64 %211 to %struct.TYPE_18__**
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %212, align 8
  %213 = load i64, i64* %11, align 8
  %214 = call i32 @ml_static_vtop(i64 %213)
  %215 = load i64, i64* @PAGE_SIZE, align 8
  %216 = call i32 @pmap_pages_free(i32 %214, i64 %215)
  %217 = load i32, i32* %6, align 4
  %218 = load i32, i32* @PMAP_TT_MAX_LEVEL, align 4
  %219 = icmp ult i32 %217, %218
  br i1 %219, label %220, label %227

220:                                              ; preds = %204
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** @kernel_pmap, align 8
  %223 = icmp eq %struct.TYPE_19__* %221, %222
  %224 = zext i1 %223 to i64
  %225 = select i1 %223, i32* @inuse_kernel_ttepages_count, i32* @inuse_user_ttepages_count
  %226 = call i32 @OSAddAtomic(i32 -1, i32* %225)
  br label %234

227:                                              ; preds = %204
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** @kernel_pmap, align 8
  %230 = icmp eq %struct.TYPE_19__* %228, %229
  %231 = zext i1 %230 to i64
  %232 = select i1 %230, i32* @inuse_kernel_ptepages_count, i32* @inuse_user_ptepages_count
  %233 = call i32 @OSAddAtomic(i32 -1, i32* %232)
  br label %234

234:                                              ; preds = %227, %220
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %236 = load i64, i64* @PAGE_SIZE, align 8
  %237 = call i32 @PMAP_ZINFO_PFREE(%struct.TYPE_19__* %235, i64 %236)
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %239 = load i64, i64* @PAGE_SIZE, align 8
  %240 = call i32 @pmap_tt_ledger_debit(%struct.TYPE_19__* %238, i64 %239)
  br label %241

241:                                              ; preds = %234, %199
  ret void
}

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_18__* @ptep_get_ptd(i64) #1

declare dso_local i64 @ARM_PT_DESC_INDEX(i32*) #1

declare dso_local i32 @panic(i8*, %struct.TYPE_18__*, i64) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_19__*) #1

declare dso_local i32 @ptd_deallocate(%struct.TYPE_18__*) #1

declare dso_local i64 @pai_to_pvh(i32) #1

declare dso_local i32 @pa_index(i32) #1

declare dso_local i32 @ml_static_vtop(i64) #1

declare dso_local i32 @pmap_pages_free(i32, i64) #1

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

declare dso_local i32 @PMAP_ZINFO_PFREE(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @pmap_tt_ledger_debit(%struct.TYPE_19__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
