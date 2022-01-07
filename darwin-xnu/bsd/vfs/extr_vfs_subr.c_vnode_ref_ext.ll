; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_ref_ext.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_ref_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, i64, i64, i64, i32, i64, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.uthread = type { i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"vnode_ref_ext: vp %p has no valid reference %d, %d\00", align 1
@VNODE_REF_FORCE = common dso_local global i32 0, align 4
@VL_DRAIN = common dso_local global i32 0, align 4
@VL_TERMINATE = common dso_local global i32 0, align 4
@VL_DEAD = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"vnode_ref_ext: v_writecount\00", align 1
@O_EVTONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"vnode_ref_ext: v_kusecount\00", align 1
@VRAGE = common dso_local global i32 0, align 4
@P_LRAGE_VNODES = common dso_local global i32 0, align 4
@UT_RAGE_VNODES = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@VSYSTEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnode_ref_ext(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.uthread*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = call i32 @vnode_lock_spin(%struct.TYPE_10__* %9)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %21, i64 %24, i32 %27)
  br label %29

29:                                               ; preds = %20, %15, %3
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @VNODE_REF_FORCE, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %29
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @VL_DRAIN, align 4
  %39 = load i32, i32* @VL_TERMINATE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @VL_DEAD, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %37, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %34
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = call i64 (...) @current_thread()
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @ENOENT, align 4
  store i32 %52, i32* %7, align 4
  br label %156

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %34
  br label %55

55:                                               ; preds = %54, %29
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @FWRITE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %55
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = icmp sle i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %64
  br label %73

73:                                               ; preds = %72, %55
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @O_EVTONLY, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %80, align 8
  %83 = icmp sle i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %78
  br label %87

87:                                               ; preds = %86, %73
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @VRAGE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %122

94:                                               ; preds = %87
  %95 = call i64 (...) @current_thread()
  %96 = call %struct.uthread* @get_bsdthread_info(i64 %95)
  store %struct.uthread* %96, %struct.uthread** %8, align 8
  %97 = call %struct.TYPE_11__* (...) @current_proc()
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @P_LRAGE_VNODES, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %121, label %103

103:                                              ; preds = %94
  %104 = load %struct.uthread*, %struct.uthread** %8, align 8
  %105 = getelementptr inbounds %struct.uthread, %struct.uthread* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @UT_RAGE_VNODES, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %103
  %111 = load i32, i32* @VRAGE, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 9
  store i64 0, i64* %118, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %120 = call i32 @vnode_list_remove(%struct.TYPE_10__* %119)
  br label %121

121:                                              ; preds = %110, %103, %94
  br label %122

122:                                              ; preds = %121, %87
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %155

127:                                              ; preds = %122
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 7
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @VREG, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %155

133:                                              ; preds = %127
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @VSYSTEM, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %155, label %140

140:                                              ; preds = %133
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = icmp ne %struct.TYPE_9__* %143, null
  br i1 %144, label %145, label %154

145:                                              ; preds = %140
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %147 = call i32 @vnode_lock_convert(%struct.TYPE_10__* %146)
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 8
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @memory_object_mark_used(i32 %152)
  br label %154

154:                                              ; preds = %145, %140
  br label %155

155:                                              ; preds = %154, %133, %127, %122
  br label %156

156:                                              ; preds = %155, %51
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %158 = call i32 @vnode_unlock(%struct.TYPE_10__* %157)
  %159 = load i32, i32* %7, align 4
  ret i32 %159
}

declare dso_local i32 @vnode_lock_spin(%struct.TYPE_10__*) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i64 @current_thread(...) #1

declare dso_local %struct.uthread* @get_bsdthread_info(i64) #1

declare dso_local %struct.TYPE_11__* @current_proc(...) #1

declare dso_local i32 @vnode_list_remove(%struct.TYPE_10__*) #1

declare dso_local i32 @vnode_lock_convert(%struct.TYPE_10__*) #1

declare dso_local i32 @memory_object_mark_used(i32) #1

declare dso_local i32 @vnode_unlock(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
