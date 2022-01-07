; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_cache_enter_with_gen.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_cache_enter_with_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.componentname = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cache_enter_with_gen(%struct.vnode* %0, %struct.vnode* %1, %struct.componentname* %2, i32 %3) #0 {
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.componentname*, align 8
  %8 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store %struct.componentname* %2, %struct.componentname** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.componentname*, %struct.componentname** %7, align 8
  %10 = getelementptr inbounds %struct.componentname, %struct.componentname* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %4
  %14 = load %struct.componentname*, %struct.componentname** %7, align 8
  %15 = getelementptr inbounds %struct.componentname, %struct.componentname* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.componentname*, %struct.componentname** %7, align 8
  %18 = getelementptr inbounds %struct.componentname, %struct.componentname* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @hash_string(i32 %16, i32 %19)
  %21 = load %struct.componentname*, %struct.componentname** %7, align 8
  %22 = getelementptr inbounds %struct.componentname, %struct.componentname* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %23

23:                                               ; preds = %13, %4
  %24 = call i32 (...) @NAME_CACHE_LOCK()
  %25 = load %struct.vnode*, %struct.vnode** %5, align 8
  %26 = getelementptr inbounds %struct.vnode, %struct.vnode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.vnode*, %struct.vnode** %5, align 8
  %32 = load %struct.vnode*, %struct.vnode** %6, align 8
  %33 = load %struct.componentname*, %struct.componentname** %7, align 8
  %34 = call i32 @cache_enter_locked(%struct.vnode* %31, %struct.vnode* %32, %struct.componentname* %33, i32* null)
  br label %35

35:                                               ; preds = %30, %23
  %36 = call i32 (...) @NAME_CACHE_UNLOCK()
  ret void
}

declare dso_local i64 @hash_string(i32, i32) #1

declare dso_local i32 @NAME_CACHE_LOCK(...) #1

declare dso_local i32 @cache_enter_locked(%struct.vnode*, %struct.vnode*, %struct.componentname*, i32*) #1

declare dso_local i32 @NAME_CACHE_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
