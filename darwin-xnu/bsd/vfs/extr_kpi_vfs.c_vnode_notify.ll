; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_vnode_notify.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_vnode_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode_attr = type { i32 }

@VNODE_EVENT_WRITE = common dso_local global i32 0, align 4
@VNODE_EVENT_DELETE = common dso_local global i32 0, align 4
@VNODE_EVENT_RENAME = common dso_local global i32 0, align 4
@VNODE_EVENT_LINK = common dso_local global i32 0, align 4
@VNODE_EVENT_EXTEND = common dso_local global i32 0, align 4
@VNODE_EVENT_ATTRIB = common dso_local global i32 0, align 4
@VNODE_EVENT_DIR_CREATED = common dso_local global i32 0, align 4
@VNODE_EVENT_FILE_CREATED = common dso_local global i32 0, align 4
@VNODE_EVENT_DIR_REMOVED = common dso_local global i32 0, align 4
@VNODE_EVENT_FILE_REMOVED = common dso_local global i32 0, align 4
@VNODE_EVENT_PERMS = common dso_local global i32 0, align 4
@NOTE_ATTRIB = common dso_local global i32 0, align 4
@NOTE_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnode_notify(i32 %0, i32 %1, %struct.vnode_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.vnode_attr* %2, %struct.vnode_attr** %6, align 8
  %10 = load i32, i32* @VNODE_EVENT_WRITE, align 4
  %11 = load i32, i32* @VNODE_EVENT_DELETE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @VNODE_EVENT_RENAME, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @VNODE_EVENT_LINK, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @VNODE_EVENT_EXTEND, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @VNODE_EVENT_ATTRIB, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @VNODE_EVENT_DIR_CREATED, align 4
  %22 = load i32, i32* @VNODE_EVENT_FILE_CREATED, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @VNODE_EVENT_DIR_REMOVED, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @VNODE_EVENT_FILE_REMOVED, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @VNODE_EVENT_PERMS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %3
  %36 = load i32, i32* @NOTE_ATTRIB, align 4
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %35, %3
  %40 = load i32, i32* %4, align 4
  %41 = call i64 @vnode_isdir(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @NOTE_WRITE, align 4
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %48, %43, %39
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @lock_vnode_and_post(i32 %56, i32 %57)
  %59 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  br label %60

60:                                               ; preds = %55, %52
  ret i32 0
}

declare dso_local i64 @vnode_isdir(i32) #1

declare dso_local i32 @lock_vnode_and_post(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
