; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_verify_kalloc_config.c_run_test.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_verify_kalloc_config.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@__const.run_test.kalloc_str = private unnamed_addr constant [8 x i8] c"kalloc.\00", align 1
@T_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"mach_memory_info\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"zone name and info counts don't match\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ZONE NAME: %-25s ELEMENT SIZE: %llu\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"kalloc zone name and element size don't match\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"vm_deallocate name\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"vm_deallocate info\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"vm_deallocate wiredInfo\00", align 1
@T_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [8 x i8], align 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  store i32 0, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = bitcast [8 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.run_test.kalloc_str, i32 0, i32 0), i64 8, i1 false)
  %12 = call i32 (...) @mach_host_self()
  %13 = call i32 @mach_memory_info(i32 %12, %struct.TYPE_5__** %4, i32* %5, %struct.TYPE_6__** %6, i32* %7, i32** %8, i32* %9)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* @T_QUIET, align 4
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @T_ASSERT_MACH_SUCCESS(i32 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @T_QUIET, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @T_ASSERT_EQ(i32 %18, i32 %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %66, %0
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %69

25:                                               ; preds = %21
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = load i32, i32* %3, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %34 = call i64 @strlen(i8* %33)
  %35 = call i64 @strncmp(i32* %31, i8* %32, i64 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %25
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = load i32, i32* %3, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %45 = call i64 @strlen(i8* %44)
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call i32 @strtoul(i32* %46, i32* null, i32 10)
  store i32 %47, i32* %2, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = load i32, i32* %3, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @T_LOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32* %53, i32 %54)
  %56 = load i32, i32* @T_QUIET, align 4
  %57 = load i32, i32* %2, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = load i32, i32* %3, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @T_ASSERT_EQ(i32 %57, i32 %63, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %37, %25
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %3, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %21

69:                                               ; preds = %21
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = icmp ne %struct.TYPE_5__* %70, null
  br i1 %71, label %72, label %87

72:                                               ; preds = %69
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %72
  %76 = call i32 (...) @mach_task_self()
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = ptrtoint %struct.TYPE_5__* %77 to i32
  %79 = load i32, i32* %5, align 4
  %80 = zext i32 %79 to i64
  %81 = mul i64 %80, 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @vm_deallocate(i32 %76, i32 %78, i32 %82)
  store i32 %83, i32* %1, align 4
  %84 = load i32, i32* @T_QUIET, align 4
  %85 = load i32, i32* %1, align 4
  %86 = call i32 @T_ASSERT_MACH_SUCCESS(i32 %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %87

87:                                               ; preds = %75, %72, %69
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %89 = icmp ne %struct.TYPE_6__* %88, null
  br i1 %89, label %90, label %105

90:                                               ; preds = %87
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %90
  %94 = call i32 (...) @mach_task_self()
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = ptrtoint %struct.TYPE_6__* %95 to i32
  %97 = load i32, i32* %7, align 4
  %98 = zext i32 %97 to i64
  %99 = mul i64 %98, 4
  %100 = trunc i64 %99 to i32
  %101 = call i32 @vm_deallocate(i32 %94, i32 %96, i32 %100)
  store i32 %101, i32* %1, align 4
  %102 = load i32, i32* @T_QUIET, align 4
  %103 = load i32, i32* %1, align 4
  %104 = call i32 @T_ASSERT_MACH_SUCCESS(i32 %103, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %105

105:                                              ; preds = %93, %90, %87
  %106 = load i32*, i32** %8, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %123

108:                                              ; preds = %105
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %108
  %112 = call i32 (...) @mach_task_self()
  %113 = load i32*, i32** %8, align 8
  %114 = ptrtoint i32* %113 to i32
  %115 = load i32, i32* %9, align 4
  %116 = zext i32 %115 to i64
  %117 = mul i64 %116, 4
  %118 = trunc i64 %117 to i32
  %119 = call i32 @vm_deallocate(i32 %112, i32 %114, i32 %118)
  store i32 %119, i32* %1, align 4
  %120 = load i32, i32* @T_QUIET, align 4
  %121 = load i32, i32* %1, align 4
  %122 = call i32 @T_ASSERT_MACH_SUCCESS(i32 %121, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %123

123:                                              ; preds = %111, %108, %105
  %124 = load i32, i32* @T_END, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mach_memory_info(i32, %struct.TYPE_5__**, i32*, %struct.TYPE_6__**, i32*, i32**, i32*) #2

declare dso_local i32 @mach_host_self(...) #2

declare dso_local i32 @T_ASSERT_MACH_SUCCESS(i32, i8*) #2

declare dso_local i32 @T_ASSERT_EQ(i32, i32, i8*) #2

declare dso_local i64 @strncmp(i32*, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strtoul(i32*, i32*, i32) #2

declare dso_local i32 @T_LOG(i8*, i32*, i32) #2

declare dso_local i32 @vm_deallocate(i32, i32, i32) #2

declare dso_local i32 @mach_task_self(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
