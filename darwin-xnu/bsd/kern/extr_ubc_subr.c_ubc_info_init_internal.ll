; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_info_init_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_info_init_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubc_info = type { i64, i64, i8*, i8*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, %struct.ubc_info* }

@UBC_INFO_NULL = common dso_local global %struct.ubc_info* null, align 8
@ubc_info_zone = common dso_local global i32 0, align 4
@UI_INITED = common dso_local global i64 0, align 8
@NOCRED = common dso_local global i32 0, align 4
@UI_NONE = common dso_local global i64 0, align 8
@UI_HASPAGER = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"ubc_info_init: memory_object_create_named returned %d\00", align 1
@UI_HASOBJREF = common dso_local global i32 0, align 4
@VNAMED_UBC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i64)* @ubc_info_init_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubc_info_init_internal(%struct.TYPE_5__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ubc_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.ubc_info*, %struct.ubc_info** %13, align 8
  store %struct.ubc_info* %14, %struct.ubc_info** %7, align 8
  %15 = load %struct.ubc_info*, %struct.ubc_info** %7, align 8
  %16 = load %struct.ubc_info*, %struct.ubc_info** @UBC_INFO_NULL, align 8
  %17 = icmp eq %struct.ubc_info* %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %3
  %19 = load i32, i32* @ubc_info_zone, align 4
  %20 = call i64 @zalloc(i32 %19)
  %21 = inttoptr i64 %20 to %struct.ubc_info*
  store %struct.ubc_info* %21, %struct.ubc_info** %7, align 8
  %22 = load %struct.ubc_info*, %struct.ubc_info** %7, align 8
  %23 = bitcast %struct.ubc_info* %22 to i8*
  %24 = call i32 @bzero(i8* %23, i32 48)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = load %struct.ubc_info*, %struct.ubc_info** %7, align 8
  %27 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %26, i32 0, i32 4
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %27, align 8
  %28 = load i64, i64* @UI_INITED, align 8
  %29 = load %struct.ubc_info*, %struct.ubc_info** %7, align 8
  %30 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* @NOCRED, align 4
  %32 = load %struct.ubc_info*, %struct.ubc_info** %7, align 8
  %33 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %18, %3
  %35 = load %struct.ubc_info*, %struct.ubc_info** %7, align 8
  %36 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @UI_NONE, align 8
  %39 = icmp ne i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @assert(i8* %42)
  %44 = load %struct.ubc_info*, %struct.ubc_info** %7, align 8
  %45 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %44, i32 0, i32 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = icmp eq %struct.TYPE_5__* %46, %47
  %49 = zext i1 %48 to i32
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @assert(i8* %51)
  %53 = load %struct.ubc_info*, %struct.ubc_info** %7, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store %struct.ubc_info* %53, %struct.ubc_info** %55, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = load %struct.ubc_info*, %struct.ubc_info** %7, align 8
  %58 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %57, i32 0, i32 3
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @vnode_pager_setup(%struct.TYPE_5__* %56, i8* %59)
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** %8, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @assert(i8* %62)
  %64 = load %struct.ubc_info*, %struct.ubc_info** %7, align 8
  %65 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @UI_HASPAGER, align 4
  %68 = call i32 @SET(i64 %66, i32 %67)
  %69 = load i8*, i8** %8, align 8
  %70 = load %struct.ubc_info*, %struct.ubc_info** %7, align 8
  %71 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load %struct.ubc_info*, %struct.ubc_info** %7, align 8
  %74 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i64 @memory_object_create_named(i8* %72, i32 %76, i8** %11)
  store i64 %77, i64* %10, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @vnode_pager_deallocate(i8* %78)
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* @KERN_SUCCESS, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %34
  %84 = load i64, i64* %10, align 8
  %85 = call i32 @panic(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %84)
  br label %86

86:                                               ; preds = %83, %34
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 @assert(i8* %87)
  %89 = load i8*, i8** %11, align 8
  %90 = load %struct.ubc_info*, %struct.ubc_info** %7, align 8
  %91 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load %struct.ubc_info*, %struct.ubc_info** %7, align 8
  %93 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @UI_HASOBJREF, align 4
  %96 = call i32 @SET(i64 %94, i32 %95)
  %97 = load i32, i32* %5, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %86
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = load %struct.ubc_info*, %struct.ubc_info** %7, align 8
  %102 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %101, i32 0, i32 1
  %103 = call i32 (...) @vfs_context_current()
  %104 = call i32 @vnode_size(%struct.TYPE_5__* %100, i64* %102, i32 %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load %struct.ubc_info*, %struct.ubc_info** %7, align 8
  %109 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %108, i32 0, i32 1
  store i64 0, i64* %109, align 8
  br label %110

110:                                              ; preds = %107, %99
  br label %115

111:                                              ; preds = %86
  %112 = load i64, i64* %6, align 8
  %113 = load %struct.ubc_info*, %struct.ubc_info** %7, align 8
  %114 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  br label %115

115:                                              ; preds = %111, %110
  %116 = load i32, i32* @VNAMED_UBC, align 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  %121 = load i32, i32* %9, align 4
  ret i32 %121
}

declare dso_local i64 @zalloc(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @vnode_pager_setup(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @SET(i64, i32) #1

declare dso_local i64 @memory_object_create_named(i8*, i32, i8**) #1

declare dso_local i32 @vnode_pager_deallocate(i8*) #1

declare dso_local i32 @panic(i8*, i64) #1

declare dso_local i32 @vnode_size(%struct.TYPE_5__*, i64*, i32) #1

declare dso_local i32 @vfs_context_current(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
