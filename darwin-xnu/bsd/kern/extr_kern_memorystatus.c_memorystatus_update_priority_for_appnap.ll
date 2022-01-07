; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_update_priority_for_appnap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_update_priority_for_appnap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i64, i64, i32, i64 }

@P_MEMSTAT_INTERNAL = common dso_local global i32 0, align 4
@P_MEMSTAT_MANAGED = common dso_local global i32 0, align 4
@P_LIST_EXITED = common dso_local global i32 0, align 4
@P_MEMSTAT_ERROR = common dso_local global i32 0, align 4
@P_MEMSTAT_TERMINATED = common dso_local global i32 0, align 4
@memstat_bucket = common dso_local global %struct.TYPE_9__* null, align 8
@JETSAM_PRIORITY_IDLE = common dso_local global i64 0, align 8
@p_memstat_list = common dso_local global i32 0, align 4
@DBG_BSD_MEMSTAT = common dso_local global i32 0, align 4
@BSD_MEMSTAT_CHANGE_PRIORITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memorystatus_update_priority_for_appnap(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = icmp ne %struct.TYPE_8__* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = call i32 @isApp(%struct.TYPE_8__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @P_MEMSTAT_INTERNAL, align 4
  %21 = load i32, i32* @P_MEMSTAT_MANAGED, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16, %12, %2
  store i32 -1, i32* %3, align 4
  br label %157

26:                                               ; preds = %16
  store i64 0, i64* %8, align 8
  %27 = call i32 (...) @proc_list_lock()
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @P_LIST_EXITED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %26
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @P_MEMSTAT_ERROR, align 4
  %39 = load i32, i32* @P_MEMSTAT_TERMINATED, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34, %26
  %44 = call i32 (...) @proc_list_unlock()
  store i32 0, i32* %3, align 4
  br label %157

45:                                               ; preds = %34
  %46 = load i64, i64* %5, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** @memstat_bucket, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 %52
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %6, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** @memstat_bucket, align 8
  %55 = load i64, i64* @JETSAM_PRIORITY_IDLE, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i64 %55
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %7, align 8
  %57 = load i64, i64* @JETSAM_PRIORITY_IDLE, align 8
  store i64 %57, i64* %8, align 8
  br label %78

58:                                               ; preds = %45
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @JETSAM_PRIORITY_IDLE, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = call i32 (...) @proc_list_unlock()
  store i32 0, i32* %3, align 4
  br label %157

66:                                               ; preds = %58
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** @memstat_bucket, align 8
  %68 = load i64, i64* @JETSAM_PRIORITY_IDLE, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i64 %68
  store %struct.TYPE_9__* %69, %struct.TYPE_9__** %6, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** @memstat_bucket, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i64 %73
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %7, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %8, align 8
  br label %78

78:                                               ; preds = %66, %48
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = load i32, i32* @p_memstat_list, align 4
  %83 = call i32 @TAILQ_REMOVE(i32* %80, %struct.TYPE_8__* %81, i32 %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %85, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = load i32, i32* @p_memstat_list, align 4
  %92 = call i32 @TAILQ_INSERT_TAIL(i32* %89, %struct.TYPE_8__* %90, i32 %91)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %8, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %78
  br label %141

103:                                              ; preds = %78
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @JETSAM_PRIORITY_IDLE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %131

109:                                              ; preds = %103
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = call i64 (...) @mach_absolute_time()
  store i64 %116, i64* %9, align 8
  %117 = load i64, i64* %9, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %117, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %109
  %123 = load i64, i64* %9, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = sub nsw i64 %123, %126
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 6
  store i64 %127, i64* %129, align 8
  br label %130

130:                                              ; preds = %122, %109
  br label %140

131:                                              ; preds = %103
  %132 = load i64, i64* %8, align 8
  %133 = load i64, i64* @JETSAM_PRIORITY_IDLE, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = call i64 (...) @mach_absolute_time()
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 4
  store i64 %136, i64* %138, align 8
  br label %139

139:                                              ; preds = %135, %131
  br label %140

140:                                              ; preds = %139, %130
  br label %141

141:                                              ; preds = %140, %102
  %142 = load i32, i32* @DBG_BSD_MEMSTAT, align 4
  %143 = load i32, i32* @BSD_MEMSTAT_CHANGE_PRIORITY, align 4
  %144 = call i32 @BSDDBG_CODE(i32 %142, i32 %143)
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = load i64, i64* %8, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %144, i32 %147, i64 %148, i64 %151, i32 0, i32 0)
  %153 = load i64, i64* %8, align 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  store i64 %153, i64* %155, align 8
  %156 = call i32 (...) @proc_list_unlock()
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %141, %64, %43, %25
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @isApp(%struct.TYPE_8__*) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @BSDDBG_CODE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
