; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_init_jetsam_snapshot_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_init_jetsam_snapshot_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i64, i32, i32* }
%struct.TYPE_10__ = type { i32*, i32 }

@proc_list_mlock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@memorystatus_jetsam_snapshot = common dso_local global %struct.TYPE_11__* null, align 8
@memorystatus_jetsam_snapshot_max = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [97 x i8] c"jetsam snapshot pid %d, uuid = %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\0A\00", align 1
@memorystatus_jetsam_snapshot_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32)* @memorystatus_init_jetsam_snapshot_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memorystatus_init_jetsam_snapshot_locked(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %9, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @proc_list_mlock, align 4
  %13 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %14 = call i32 @LCK_MTX_ASSERT(i32 %12, i32 %13)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = icmp ne %struct.TYPE_11__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %9, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %10, align 8
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %11, align 4
  br label %29

23:                                               ; preds = %2
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** @memorystatus_jetsam_snapshot, align 8
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %9, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** @memorystatus_jetsam_snapshot, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %10, align 8
  %28 = load i32, i32* @memorystatus_jetsam_snapshot_max, align 4
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %23, %17
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %31 = call i32 @memorystatus_init_snapshot_vmstats(%struct.TYPE_11__* %30)
  %32 = call i32 (...) @mach_absolute_time()
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @TRUE, align 4
  %40 = call %struct.TYPE_10__* @memorystatus_get_first_proc_locked(i32* %7, i32 %39)
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %6, align 8
  br label %41

41:                                               ; preds = %151, %60, %29
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = icmp ne %struct.TYPE_10__* %42, null
  br i1 %43, label %44, label %152

44:                                               ; preds = %41
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %5, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = load i32, i32* @TRUE, align 4
  %48 = call %struct.TYPE_10__* @memorystatus_get_next_proc_locked(i32* %7, %struct.TYPE_10__* %46, i32 %47)
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %6, align 8
  %49 = load i64, i64* @FALSE, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @memorystatus_init_jetsam_snapshot_entry_locked(%struct.TYPE_10__* %50, i32* %54, i64 %57)
  %59 = icmp eq i64 %49, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %44
  br label %41

61:                                               ; preds = %44
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 5
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 6
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 7
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 8
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 9
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 10
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 11
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 12
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 13
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 14
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 15
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @MEMORYSTATUS_DEBUG(i32 0, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %69, i32 %74, i32 %79, i32 %84, i32 %89, i32 %94, i32 %99, i32 %104, i32 %109, i32 %114, i32 %119, i32 %124, i32 %129, i32 %134, i32 %139, i32 %144)
  %146 = load i32, i32* %8, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %11, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %61
  br label %152

151:                                              ; preds = %61
  br label %41

152:                                              ; preds = %150, %41
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %157 = icmp ne %struct.TYPE_11__* %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %152
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* @memorystatus_jetsam_snapshot_count, align 4
  br label %160

160:                                              ; preds = %158, %152
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @memorystatus_init_snapshot_vmstats(%struct.TYPE_11__*) #1

declare dso_local i32 @mach_absolute_time(...) #1

declare dso_local %struct.TYPE_10__* @memorystatus_get_first_proc_locked(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @memorystatus_get_next_proc_locked(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i64 @memorystatus_init_jetsam_snapshot_entry_locked(%struct.TYPE_10__*, i32*, i64) #1

declare dso_local i32 @MEMORYSTATUS_DEBUG(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
