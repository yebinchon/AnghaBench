; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_vnode_lookup_continue_needed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_vnode_lookup_continue_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32* }
%struct.componentname = type { i32, %struct.nameidata* }
%struct.nameidata = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"vnode_lookup_continue_needed(): cnp->cn_ndp is NULL\0A\00", align 1
@FOLLOW = common dso_local global i32 0, align 4
@NAMEI_TRAILINGSLASH = common dso_local global i32 0, align 4
@NAMEI_CONTLOOKUP = common dso_local global i32 0, align 4
@EKEEPLOOKING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnode_lookup_continue_needed(%struct.TYPE_5__* %0, %struct.componentname* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.componentname*, align 8
  %6 = alloca %struct.nameidata*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.componentname* %1, %struct.componentname** %5, align 8
  %7 = load %struct.componentname*, %struct.componentname** %5, align 8
  %8 = getelementptr inbounds %struct.componentname, %struct.componentname* %7, i32 0, i32 1
  %9 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  store %struct.nameidata* %9, %struct.nameidata** %6, align 8
  %10 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %11 = icmp eq %struct.nameidata* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = call i64 @vnode_isdir(%struct.TYPE_5__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %47

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %14
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = call i64 @vnode_islnk(%struct.TYPE_5__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = load %struct.componentname*, %struct.componentname** %5, align 8
  %31 = getelementptr inbounds %struct.componentname, %struct.componentname* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @FOLLOW, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %47

37:                                               ; preds = %29
  %38 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %39 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @NAMEI_TRAILINGSLASH, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %47

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %25
  store i32 0, i32* %3, align 4
  br label %54

47:                                               ; preds = %44, %36, %23
  %48 = load i32, i32* @NAMEI_CONTLOOKUP, align 4
  %49 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %50 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* @EKEEPLOOKING, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %47, %46
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @vnode_isdir(%struct.TYPE_5__*) #1

declare dso_local i64 @vnode_islnk(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
