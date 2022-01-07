; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_unix.c_frontend_unix_watch_path_for_changes.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_unix.c_frontend_unix_watch_path_for_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_10__*, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32* }

@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@IN_CLOSE_WRITE = common dso_local global i32 0, align 4
@IN_DELETE_SELF = common dso_local global i32 0, align 4
@IN_MODIFY = common dso_local global i32 0, align 4
@IN_MOVE_SELF = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@PATH_CHANGE_TYPE_FILE_DELETED = common dso_local global i32 0, align 4
@PATH_CHANGE_TYPE_FILE_MOVED = common dso_local global i32 0, align 4
@PATH_CHANGE_TYPE_MODIFIED = common dso_local global i32 0, align 4
@PATH_CHANGE_TYPE_WRITE_FILE_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.string_list*, i32, %struct.TYPE_10__**)* @frontend_unix_watch_path_for_changes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frontend_unix_watch_path_for_changes(%struct.string_list* %0, i32 %1, %struct.TYPE_10__** %2) #0 {
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__**, align 8
  store %struct.string_list* %0, %struct.string_list** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %6, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
