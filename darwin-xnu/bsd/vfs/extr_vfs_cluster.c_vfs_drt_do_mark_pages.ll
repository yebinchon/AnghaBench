; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_vfs_drt_do_mark_pages.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_vfs_drt_do_mark_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfs_drt_clustermap = type { i32 }

@DRT_DEBUG_MARK = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@DRT_BITVECTOR_PAGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"ecount >= DRT_BITVECTOR_PAGES, cmap = %p, index = %d, bit = %d\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"ecount <= 0, cmap = %p, index = %d, bit = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8**, i32, i32, i32*, i32)* @vfs_drt_do_mark_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vfs_drt_do_mark_pages(i8** %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.vfs_drt_clustermap*, align 8
  %13 = alloca %struct.vfs_drt_clustermap**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load i8**, i8*** %7, align 8
  %22 = bitcast i8** %21 to %struct.vfs_drt_clustermap**
  store %struct.vfs_drt_clustermap** %22, %struct.vfs_drt_clustermap*** %13, align 8
  %23 = load %struct.vfs_drt_clustermap**, %struct.vfs_drt_clustermap*** %13, align 8
  %24 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %23, align 8
  store %struct.vfs_drt_clustermap* %24, %struct.vfs_drt_clustermap** %12, align 8
  %25 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %12, align 8
  %26 = load i32, i32* @DRT_DEBUG_MARK, align 4
  %27 = load i32, i32* @DBG_FUNC_START, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @vfs_drt_trace(%struct.vfs_drt_clustermap* %25, i32 %28, i32 %29, i32 %30, i32 %31, i32 0)
  %33 = load i32*, i32** %10, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %5
  %36 = load i32*, i32** %10, align 8
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %35, %5
  %38 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %12, align 8
  %39 = icmp eq %struct.vfs_drt_clustermap* %38, null
  br i1 %39, label %40, label %64

40:                                               ; preds = %37
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %12, align 8
  %45 = load i32, i32* @DRT_DEBUG_MARK, align 4
  %46 = load i32, i32* @DBG_FUNC_END, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @vfs_drt_trace(%struct.vfs_drt_clustermap* %44, i32 %47, i32 1, i32 0, i32 0, i32 0)
  %49 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %49, i64* %6, align 8
  br label %213

50:                                               ; preds = %40
  %51 = load %struct.vfs_drt_clustermap**, %struct.vfs_drt_clustermap*** %13, align 8
  %52 = call i64 @vfs_drt_alloc_map(%struct.vfs_drt_clustermap** %51)
  store i64 %52, i64* %14, align 8
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* @KERN_SUCCESS, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %12, align 8
  %58 = load i32, i32* @DRT_DEBUG_MARK, align 4
  %59 = load i32, i32* @DBG_FUNC_END, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @vfs_drt_trace(%struct.vfs_drt_clustermap* %57, i32 %60, i32 2, i32 0, i32 0, i32 0)
  %62 = load i64, i64* %14, align 8
  store i64 %62, i64* %6, align 8
  br label %213

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %37
  store i32 0, i32* %19, align 4
  br label %65

65:                                               ; preds = %184, %64
  %66 = load i32, i32* %9, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %199

68:                                               ; preds = %65
  %69 = load %struct.vfs_drt_clustermap**, %struct.vfs_drt_clustermap*** %13, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i64 @vfs_drt_get_index(%struct.vfs_drt_clustermap** %69, i32 %70, i32* %16, i32 0)
  store i64 %71, i64* %14, align 8
  %72 = load %struct.vfs_drt_clustermap**, %struct.vfs_drt_clustermap*** %13, align 8
  %73 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %72, align 8
  store %struct.vfs_drt_clustermap* %73, %struct.vfs_drt_clustermap** %12, align 8
  %74 = load i64, i64* %14, align 8
  %75 = load i64, i64* @KERN_SUCCESS, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %68
  %78 = load i32*, i32** %10, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %19, align 4
  %82 = load i32*, i32** %10, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %77
  %84 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %12, align 8
  %85 = load i32, i32* @DRT_DEBUG_MARK, align 4
  %86 = load i32, i32* @DBG_FUNC_END, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @vfs_drt_trace(%struct.vfs_drt_clustermap* %84, i32 %87, i32 3, i32 %88, i32 0, i32 0)
  %90 = load i64, i64* %14, align 8
  store i64 %90, i64* %6, align 8
  br label %213

91:                                               ; preds = %68
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @DRT_ALIGN_ADDRESS(i32 %93)
  %95 = sub nsw i32 %92, %94
  %96 = load i32, i32* @PAGE_SIZE, align 4
  %97 = sdiv i32 %95, %96
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @PAGE_SIZE, align 4
  %100 = sdiv i32 %98, %99
  %101 = load i32, i32* @DRT_BITVECTOR_PAGES, align 4
  %102 = load i32, i32* %17, align 4
  %103 = sub nsw i32 %101, %102
  %104 = call i32 @min(i32 %100, i32 %103)
  store i32 %104, i32* %18, align 4
  %105 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %12, align 8
  %106 = load i32, i32* %16, align 4
  %107 = call i32 @DRT_HASH_GET_COUNT(%struct.vfs_drt_clustermap* %105, i32 %106)
  store i32 %107, i32* %20, align 4
  store i32 0, i32* %15, align 4
  br label %108

108:                                              ; preds = %181, %91
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %18, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %184

112:                                              ; preds = %108
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %146

115:                                              ; preds = %112
  %116 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %12, align 8
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %118, %119
  %121 = call i64 @DRT_HASH_TEST_BIT(%struct.vfs_drt_clustermap* %116, i32 %117, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %145, label %123

123:                                              ; preds = %115
  %124 = load i32, i32* %20, align 4
  %125 = load i32, i32* @DRT_BITVECTOR_PAGES, align 4
  %126 = icmp sge i32 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %12, align 8
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %130, %131
  %133 = call i32 @panic(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), %struct.vfs_drt_clustermap* %128, i32 %129, i32 %132)
  br label %134

134:                                              ; preds = %127, %123
  %135 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %12, align 8
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %17, align 4
  %138 = load i32, i32* %15, align 4
  %139 = add nsw i32 %137, %138
  %140 = call i32 @DRT_HASH_SET_BIT(%struct.vfs_drt_clustermap* %135, i32 %136, i32 %139)
  %141 = load i32, i32* %20, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %20, align 4
  %143 = load i32, i32* %19, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %19, align 4
  br label %145

145:                                              ; preds = %134, %115
  br label %180

146:                                              ; preds = %112
  %147 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %12, align 8
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* %15, align 4
  %151 = add nsw i32 %149, %150
  %152 = call i64 @DRT_HASH_TEST_BIT(%struct.vfs_drt_clustermap* %147, i32 %148, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %179

154:                                              ; preds = %146
  %155 = load i32, i32* %20, align 4
  %156 = icmp sle i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %154
  %158 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %12, align 8
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* %15, align 4
  %162 = add nsw i32 %160, %161
  %163 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), %struct.vfs_drt_clustermap* %158, i32 %159, i32 %162)
  br label %164

164:                                              ; preds = %157, %154
  %165 = load i32, i32* %20, align 4
  %166 = icmp sgt i32 %165, 0
  %167 = zext i1 %166 to i32
  %168 = call i32 @assert(i32 %167)
  %169 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %12, align 8
  %170 = load i32, i32* %16, align 4
  %171 = load i32, i32* %17, align 4
  %172 = load i32, i32* %15, align 4
  %173 = add nsw i32 %171, %172
  %174 = call i32 @DRT_HASH_CLEAR_BIT(%struct.vfs_drt_clustermap* %169, i32 %170, i32 %173)
  %175 = load i32, i32* %20, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %20, align 4
  %177 = load i32, i32* %19, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %19, align 4
  br label %179

179:                                              ; preds = %164, %146
  br label %180

180:                                              ; preds = %179, %145
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %15, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %15, align 4
  br label %108

184:                                              ; preds = %108
  %185 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %12, align 8
  %186 = load i32, i32* %16, align 4
  %187 = load i32, i32* %20, align 4
  %188 = call i32 @DRT_HASH_SET_COUNT(%struct.vfs_drt_clustermap* %185, i32 %186, i32 %187)
  %189 = load i32, i32* %18, align 4
  %190 = load i32, i32* @PAGE_SIZE, align 4
  %191 = mul nsw i32 %189, %190
  %192 = load i32, i32* %8, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* %18, align 4
  %195 = load i32, i32* @PAGE_SIZE, align 4
  %196 = mul nsw i32 %194, %195
  %197 = load i32, i32* %9, align 4
  %198 = sub nsw i32 %197, %196
  store i32 %198, i32* %9, align 4
  br label %65

199:                                              ; preds = %65
  %200 = load i32*, i32** %10, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load i32, i32* %19, align 4
  %204 = load i32*, i32** %10, align 8
  store i32 %203, i32* %204, align 4
  br label %205

205:                                              ; preds = %202, %199
  %206 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %12, align 8
  %207 = load i32, i32* @DRT_DEBUG_MARK, align 4
  %208 = load i32, i32* @DBG_FUNC_END, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* %19, align 4
  %211 = call i32 @vfs_drt_trace(%struct.vfs_drt_clustermap* %206, i32 %209, i32 0, i32 %210, i32 0, i32 0)
  %212 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %212, i64* %6, align 8
  br label %213

213:                                              ; preds = %205, %83, %56, %43
  %214 = load i64, i64* %6, align 8
  ret i64 %214
}

declare dso_local i32 @vfs_drt_trace(%struct.vfs_drt_clustermap*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @vfs_drt_alloc_map(%struct.vfs_drt_clustermap**) #1

declare dso_local i64 @vfs_drt_get_index(%struct.vfs_drt_clustermap**, i32, i32*, i32) #1

declare dso_local i32 @DRT_ALIGN_ADDRESS(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @DRT_HASH_GET_COUNT(%struct.vfs_drt_clustermap*, i32) #1

declare dso_local i64 @DRT_HASH_TEST_BIT(%struct.vfs_drt_clustermap*, i32, i32) #1

declare dso_local i32 @panic(i8*, %struct.vfs_drt_clustermap*, i32, i32) #1

declare dso_local i32 @DRT_HASH_SET_BIT(%struct.vfs_drt_clustermap*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DRT_HASH_CLEAR_BIT(%struct.vfs_drt_clustermap*, i32, i32) #1

declare dso_local i32 @DRT_HASH_SET_COUNT(%struct.vfs_drt_clustermap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
