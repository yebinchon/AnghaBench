; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jmemmgr.c_jinit_memory_mgr.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jmemmgr.c_jinit_memory_mgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__, i32*, i32*, i32**, i32** }

@ALIGN_TYPE = common dso_local global i32 0, align 4
@JERR_BAD_ALIGN_TYPE = common dso_local global i32 0, align 4
@MAX_ALLOC_CHUNK = common dso_local global i64 0, align 8
@JERR_BAD_ALLOC_CHUNK = common dso_local global i32 0, align 4
@my_memory_mgr = common dso_local global i32 0, align 4
@JERR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@alloc_small = common dso_local global i32 0, align 4
@alloc_large = common dso_local global i32 0, align 4
@alloc_sarray = common dso_local global i32 0, align 4
@alloc_barray = common dso_local global i32 0, align 4
@request_virt_sarray = common dso_local global i32 0, align 4
@request_virt_barray = common dso_local global i32 0, align 4
@realize_virt_arrays = common dso_local global i32 0, align 4
@access_virt_sarray = common dso_local global i32 0, align 4
@access_virt_barray = common dso_local global i32 0, align 4
@free_pool = common dso_local global i32 0, align 4
@self_destruct = common dso_local global i32 0, align 4
@JPOOL_NUMPOOLS = common dso_local global i32 0, align 4
@JPOOL_PERMANENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"JPEGMEM\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%ld%c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jinit_memory_mgr(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %10, align 8
  %11 = load i32, i32* @ALIGN_TYPE, align 4
  %12 = call i64 @SIZEOF(i32 %11)
  %13 = load i32, i32* @ALIGN_TYPE, align 4
  %14 = call i64 @SIZEOF(i32 %13)
  %15 = sub nsw i64 %14, 1
  %16 = and i64 %12, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %20 = load i32, i32* @JERR_BAD_ALIGN_TYPE, align 4
  %21 = call i32 @ERREXIT(%struct.TYPE_12__* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %1
  %23 = load i64, i64* @MAX_ALLOC_CHUNK, align 8
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @MAX_ALLOC_CHUNK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load i64, i64* @MAX_ALLOC_CHUNK, align 8
  %29 = load i32, i32* @ALIGN_TYPE, align 4
  %30 = call i64 @SIZEOF(i32 %29)
  %31 = srem i64 %28, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27, %22
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %35 = load i32, i32* @JERR_BAD_ALLOC_CHUNK, align 4
  %36 = call i32 @ERREXIT(%struct.TYPE_12__* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %27
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %39 = call i64 @jpeg_mem_init(%struct.TYPE_12__* %38)
  store i64 %39, i64* %4, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %41 = load i32, i32* @my_memory_mgr, align 4
  %42 = call i64 @SIZEOF(i32 %41)
  %43 = call i64 @jpeg_get_small(%struct.TYPE_12__* %40, i64 %42)
  %44 = inttoptr i64 %43 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %44, %struct.TYPE_11__** %3, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = icmp eq %struct.TYPE_11__* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %49 = call i32 @jpeg_mem_term(%struct.TYPE_12__* %48)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %51 = load i32, i32* @JERR_OUT_OF_MEMORY, align 4
  %52 = call i32 @ERREXIT1(%struct.TYPE_12__* %50, i32 %51, i32 0)
  br label %53

53:                                               ; preds = %47, %37
  %54 = load i32, i32* @alloc_small, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 11
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* @alloc_large, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 10
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @alloc_sarray, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 9
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* @alloc_barray, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 8
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @request_virt_sarray, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 7
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* @request_virt_barray, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 6
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* @realize_virt_arrays, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 5
  store i32 %78, i32* %81, align 8
  %82 = load i32, i32* @access_virt_sarray, align 4
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 4
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @access_virt_barray, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 3
  store i32 %86, i32* %89, align 8
  %90 = load i32, i32* @free_pool, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  store i32 %90, i32* %93, align 4
  %94 = load i32, i32* @self_destruct, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 8
  %98 = load i64, i64* %4, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  store i64 %98, i64* %101, align 8
  %102 = load i32, i32* @JPOOL_NUMPOOLS, align 4
  %103 = sub nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %121, %53
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @JPOOL_PERMANENT, align 4
  %107 = icmp sge i32 %105, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %104
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 5
  %111 = load i32**, i32*** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  store i32* null, i32** %114, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 4
  %117 = load i32**, i32*** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  store i32* null, i32** %120, align 8
  br label %121

121:                                              ; preds = %108
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %5, align 4
  br label %104

124:                                              ; preds = %104
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 3
  store i32* null, i32** %126, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 2
  store i32* null, i32** %128, align 8
  %129 = load i32, i32* @my_memory_mgr, align 4
  %130 = call i64 @SIZEOF(i32 %129)
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  store %struct.TYPE_10__* %134, %struct.TYPE_10__** %136, align 8
  %137 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %137, i8** %7, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %161

139:                                              ; preds = %124
  store i8 120, i8* %8, align 1
  %140 = load i8*, i8** %7, align 8
  %141 = call i64 @sscanf(i8* %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64* %4, i8* %8)
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %139
  %144 = load i8, i8* %8, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 109
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = load i8, i8* %8, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 77
  br i1 %150, label %151, label %154

151:                                              ; preds = %147, %143
  %152 = load i64, i64* %4, align 8
  %153 = mul nsw i64 %152, 1000
  store i64 %153, i64* %4, align 8
  br label %154

154:                                              ; preds = %151, %147
  %155 = load i64, i64* %4, align 8
  %156 = mul nsw i64 %155, 1000
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  store i64 %156, i64* %159, align 8
  br label %160

160:                                              ; preds = %154, %139
  br label %161

161:                                              ; preds = %160, %124
  ret void
}

declare dso_local i64 @SIZEOF(i32) #1

declare dso_local i32 @ERREXIT(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @jpeg_mem_init(%struct.TYPE_12__*) #1

declare dso_local i64 @jpeg_get_small(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @jpeg_mem_term(%struct.TYPE_12__*) #1

declare dso_local i32 @ERREXIT1(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @sscanf(i8*, i8*, i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
