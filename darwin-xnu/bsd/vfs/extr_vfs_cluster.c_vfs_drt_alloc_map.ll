; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_vfs_drt_alloc_map.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_vfs_drt_alloc_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfs_drt_clustermap = type { i32, i64, i64, i64, i32 }

@DRT_HASH_SMALL_MODULUS = common dso_local global i32 0, align 4
@max_mem = common dso_local global i64 0, align 8
@DRT_HASH_LARGE_MEMORY_REQUIRED = common dso_local global i64 0, align 8
@DRT_HASH_LARGE_MODULUS = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@kernel_map = common dso_local global i32 0, align 4
@DRT_SMALL_ALLOCATION = common dso_local global i32 0, align 4
@DRT_LARGE_ALLOCATION = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_FILE = common dso_local global i32 0, align 4
@DRT_SCM_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"vfs_drt: new cluster map mysteriously too small\00", align 1
@DRT_DEBUG_ALLOC = common dso_local global i32 0, align 4
@DRT_DEBUG_SCMDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vfs_drt_clustermap**)* @vfs_drt_alloc_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vfs_drt_alloc_map(%struct.vfs_drt_clustermap** %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vfs_drt_clustermap**, align 8
  %4 = alloca %struct.vfs_drt_clustermap*, align 8
  %5 = alloca %struct.vfs_drt_clustermap*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vfs_drt_clustermap** %0, %struct.vfs_drt_clustermap*** %3, align 8
  store %struct.vfs_drt_clustermap* null, %struct.vfs_drt_clustermap** %5, align 8
  %13 = load %struct.vfs_drt_clustermap**, %struct.vfs_drt_clustermap*** %3, align 8
  %14 = icmp ne %struct.vfs_drt_clustermap** %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.vfs_drt_clustermap**, %struct.vfs_drt_clustermap*** %3, align 8
  %17 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %16, align 8
  store %struct.vfs_drt_clustermap* %17, %struct.vfs_drt_clustermap** %5, align 8
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %5, align 8
  %20 = icmp eq %struct.vfs_drt_clustermap* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @DRT_HASH_SMALL_MODULUS, align 4
  store i32 %22, i32* %9, align 4
  br label %76

23:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %44, %23
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %5, align 8
  %27 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %24
  %31 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @DRT_HASH_VACANT(%struct.vfs_drt_clustermap* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @DRT_HASH_GET_COUNT(%struct.vfs_drt_clustermap* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %40, %35, %30
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %24

47:                                               ; preds = %24
  %48 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %5, align 8
  %49 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @DRT_HASH_SMALL_MODULUS, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @DRT_HASH_SMALL_MODULUS, align 4
  %56 = sub nsw i32 %55, 5
  %57 = icmp sgt i32 %54, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i64, i64* @max_mem, align 8
  %60 = load i64, i64* @DRT_HASH_LARGE_MEMORY_REQUIRED, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @DRT_HASH_LARGE_MODULUS, align 4
  store i32 %63, i32* %9, align 4
  br label %66

64:                                               ; preds = %58, %53
  %65 = load i32, i32* @DRT_HASH_SMALL_MODULUS, align 4
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %64, %62
  br label %75

67:                                               ; preds = %47
  %68 = load i32, i32* @DRT_HASH_LARGE_MODULUS, align 4
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @DRT_HASH_LARGE_MODULUS, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %73, i64* %2, align 8
  br label %200

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %66
  br label %76

76:                                               ; preds = %75, %21
  %77 = load i32, i32* @kernel_map, align 4
  %78 = bitcast %struct.vfs_drt_clustermap** %4 to i32*
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @DRT_HASH_SMALL_MODULUS, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* @DRT_SMALL_ALLOCATION, align 4
  br label %86

84:                                               ; preds = %76
  %85 = load i32, i32* @DRT_LARGE_ALLOCATION, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  %88 = load i32, i32* @VM_KERN_MEMORY_FILE, align 4
  %89 = call i64 @kmem_alloc(i32 %77, i32* %78, i32 %87, i32 %88)
  store i64 %89, i64* %6, align 8
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* @KERN_SUCCESS, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i64, i64* %6, align 8
  store i64 %94, i64* %2, align 8
  br label %200

95:                                               ; preds = %86
  %96 = load i32, i32* @DRT_SCM_MAGIC, align 4
  %97 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %4, align 8
  %98 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %4, align 8
  %101 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %4, align 8
  %103 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %102, i32 0, i32 3
  store i64 0, i64* %103, align 8
  %104 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %4, align 8
  %105 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %104, i32 0, i32 2
  store i64 0, i64* %105, align 8
  %106 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %4, align 8
  %107 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  store i32 0, i32* %8, align 4
  br label %108

108:                                              ; preds = %124, %95
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %4, align 8
  %111 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %108
  %115 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %4, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @DRT_HASH_CLEAR(%struct.vfs_drt_clustermap* %115, i32 %116)
  %118 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %4, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @DRT_HASH_VACATE(%struct.vfs_drt_clustermap* %118, i32 %119)
  %121 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %4, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @DRT_BITVECTOR_CLEAR(%struct.vfs_drt_clustermap* %121, i32 %122)
  br label %124

124:                                              ; preds = %114
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %108

127:                                              ; preds = %108
  store i32 0, i32* %12, align 4
  %128 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %5, align 8
  %129 = icmp ne %struct.vfs_drt_clustermap* %128, null
  br i1 %129, label %130, label %171

130:                                              ; preds = %127
  store i32 0, i32* %8, align 4
  br label %131

131:                                              ; preds = %167, %130
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %5, align 8
  %134 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %170

137:                                              ; preds = %131
  %138 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %5, align 8
  %139 = load i32, i32* %8, align 4
  %140 = call i64 @DRT_HASH_VACANT(%struct.vfs_drt_clustermap* %138, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %137
  %143 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %5, align 8
  %144 = load i32, i32* %8, align 4
  %145 = call i64 @DRT_HASH_GET_COUNT(%struct.vfs_drt_clustermap* %143, i32 %144)
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142, %137
  br label %167

148:                                              ; preds = %142
  %149 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %5, align 8
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @DRT_HASH_GET_ADDRESS(%struct.vfs_drt_clustermap* %149, i32 %150)
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = call i64 @vfs_drt_get_index(%struct.vfs_drt_clustermap** %4, i32 %152, i32* %11, i32 1)
  store i64 %153, i64* %6, align 8
  %154 = load i64, i64* %6, align 8
  %155 = load i64, i64* @KERN_SUCCESS, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %148
  %158 = call i32 @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %159

159:                                              ; preds = %157, %148
  %160 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %5, align 8
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %4, align 8
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @DRT_HASH_COPY(%struct.vfs_drt_clustermap* %160, i32 %161, %struct.vfs_drt_clustermap* %162, i32 %163)
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %12, align 4
  br label %167

167:                                              ; preds = %159, %147
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %8, align 4
  br label %131

170:                                              ; preds = %131
  br label %171

171:                                              ; preds = %170, %127
  %172 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %4, align 8
  %173 = load i32, i32* @DRT_DEBUG_ALLOC, align 4
  %174 = load i32, i32* %12, align 4
  %175 = call i32 @vfs_drt_trace(%struct.vfs_drt_clustermap* %172, i32 %173, i32 %174, i64 0, i64 0, i64 0)
  %176 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %4, align 8
  %177 = load %struct.vfs_drt_clustermap**, %struct.vfs_drt_clustermap*** %3, align 8
  store %struct.vfs_drt_clustermap* %176, %struct.vfs_drt_clustermap** %177, align 8
  %178 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %5, align 8
  %179 = icmp ne %struct.vfs_drt_clustermap* %178, null
  br i1 %179, label %180, label %198

180:                                              ; preds = %171
  %181 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %5, align 8
  %182 = load i32, i32* @DRT_DEBUG_SCMDATA, align 4
  %183 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %5, align 8
  %184 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %5, align 8
  %187 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %5, align 8
  %190 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %5, align 8
  %193 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @vfs_drt_trace(%struct.vfs_drt_clustermap* %181, i32 %182, i32 %185, i64 %188, i64 %191, i64 %194)
  %196 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %5, align 8
  %197 = call i32 @vfs_drt_free_map(%struct.vfs_drt_clustermap* %196)
  br label %198

198:                                              ; preds = %180, %171
  %199 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %199, i64* %2, align 8
  br label %200

200:                                              ; preds = %198, %93, %72
  %201 = load i64, i64* %2, align 8
  ret i64 %201
}

declare dso_local i64 @DRT_HASH_VACANT(%struct.vfs_drt_clustermap*, i32) #1

declare dso_local i64 @DRT_HASH_GET_COUNT(%struct.vfs_drt_clustermap*, i32) #1

declare dso_local i64 @kmem_alloc(i32, i32*, i32, i32) #1

declare dso_local i32 @DRT_HASH_CLEAR(%struct.vfs_drt_clustermap*, i32) #1

declare dso_local i32 @DRT_HASH_VACATE(%struct.vfs_drt_clustermap*, i32) #1

declare dso_local i32 @DRT_BITVECTOR_CLEAR(%struct.vfs_drt_clustermap*, i32) #1

declare dso_local i32 @DRT_HASH_GET_ADDRESS(%struct.vfs_drt_clustermap*, i32) #1

declare dso_local i64 @vfs_drt_get_index(%struct.vfs_drt_clustermap**, i32, i32*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @DRT_HASH_COPY(%struct.vfs_drt_clustermap*, i32, %struct.vfs_drt_clustermap*, i32) #1

declare dso_local i32 @vfs_drt_trace(%struct.vfs_drt_clustermap*, i32, i32, i64, i64, i64) #1

declare dso_local i32 @vfs_drt_free_map(%struct.vfs_drt_clustermap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
