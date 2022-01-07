; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Z_CheckHeap.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Z_CheckHeap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_3__* }

@mainzone = common dso_local global %struct.TYPE_4__* null, align 8
@ERR_FATAL = common dso_local global i32 0, align 4
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

6:                                                ; preds = %57, %0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mainzone, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = icmp eq %struct.TYPE_3__* %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  br label %61

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
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = load i32, i32* @ERR_FATAL, align 4
  %29 = call i32 @Com_Error(i32 %28, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %14
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %37 = icmp ne %struct.TYPE_3__* %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @ERR_FATAL, align 4
  %40 = call i32 @Com_Error(i32 %39, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %30
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @ERR_FATAL, align 4
  %55 = call i32 @Com_Error(i32 %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %46, %41
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  store %struct.TYPE_3__* %60, %struct.TYPE_3__** %1, align 8
  br label %6

61:                                               ; preds = %13
  ret void
}

declare dso_local i32 @Com_Error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
