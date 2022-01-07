; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_init.c_vfs_op_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_init.c_vfs_op_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32** }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Vnode_interface_init.\0A\00", align 1
@vfs_opv_descs = common dso_local global %struct.TYPE_3__** null, align 8
@vfs_opv_numops = common dso_local global i32 0, align 4
@vfs_op_descs = common dso_local global %struct.TYPE_4__** null, align 8
@VDESC_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"vfs_opv_numops=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfs_op_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @DODEBUG(i32 %2)
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %19, %0
  %5 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @vfs_opv_descs, align 8
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %5, i64 %7
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %4
  %12 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @vfs_opv_descs, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %12, i64 %14
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32**, i32*** %17, align 8
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %11
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %4

22:                                               ; preds = %4
  store i32 0, i32* @vfs_opv_numops, align 4
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %52, %22
  %24 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @vfs_op_descs, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %24, i64 %26
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %55

30:                                               ; preds = %23
  %31 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @vfs_op_descs, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %31, i64 %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @VDESC_DISABLED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %52

42:                                               ; preds = %30
  %43 = load i32, i32* @vfs_opv_numops, align 4
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @vfs_op_descs, align 8
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %44, i64 %46
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 %43, i32* %49, align 4
  %50 = load i32, i32* @vfs_opv_numops, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @vfs_opv_numops, align 4
  br label %52

52:                                               ; preds = %42, %41
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %1, align 4
  br label %23

55:                                               ; preds = %23
  %56 = load i32, i32* @vfs_opv_numops, align 4
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = call i32 @DODEBUG(i32 %57)
  ret void
}

declare dso_local i32 @DODEBUG(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
