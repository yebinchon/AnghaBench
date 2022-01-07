; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_z_zone.c_Z_CheckHeap.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_z_zone.c_Z_CheckHeap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_3__* }

@mainzone = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [55 x i8] c"Z_CheckHeap: block size does not touch the next block\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Z_CheckHeap: next block doesn't have proper back link\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Z_CheckHeap: two consecutive free blocks\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Z_CheckHeap() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mainzone, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %1, align 8
  br label %6

6:                                                ; preds = %54, %0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mainzone, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = icmp eq %struct.TYPE_3__* %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  br label %58

14:                                               ; preds = %6
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %16 = bitcast %struct.TYPE_3__* %15 to i32*
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = bitcast %struct.TYPE_3__* %24 to i32*
  %26 = icmp ne i32* %21, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = call i32 @I_Error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %14
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %36 = icmp ne %struct.TYPE_3__* %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = call i32 @I_Error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %29
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %39
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = call i32 @I_Error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %44, %39
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  store %struct.TYPE_3__* %57, %struct.TYPE_3__** %1, align 8
  br label %6

58:                                               ; preds = %13
  ret void
}

declare dso_local i32 @I_Error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
